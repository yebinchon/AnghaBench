; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_card_update_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_card_update_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i32, i32 }

@R852_CARD_STA = common dso_local global i32 0, align 4
@R852_CARD_STA_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r852_device*)* @r852_card_update_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_card_update_present(%struct.r852_device* %0) #0 {
  %2 = alloca %struct.r852_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.r852_device* %0, %struct.r852_device** %2, align 8
  %5 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %6 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %10 = load i32, i32* @R852_CARD_STA, align 4
  %11 = call i32 @r852_read_reg(%struct.r852_device* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @R852_CARD_STA_PRESENT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %20 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %22 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %21, i32 0, i32 1
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r852_read_reg(%struct.r852_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
