; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_update_card_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_update_card_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i64, i64 }

@R852_CARD_IRQ_ENABLE = common dso_local global i32 0, align 4
@R852_CARD_IRQ_REMOVE = common dso_local global i32 0, align 4
@R852_CARD_IRQ_INSERT = common dso_local global i32 0, align 4
@R852_CARD_IRQ_GENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r852_device*)* @r852_update_card_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_update_card_detect(%struct.r852_device* %0) #0 {
  %2 = alloca %struct.r852_device*, align 8
  %3 = alloca i32, align 4
  store %struct.r852_device* %0, %struct.r852_device** %2, align 8
  %4 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %5 = load i32, i32* @R852_CARD_IRQ_ENABLE, align 4
  %6 = call i32 @r852_read_reg(%struct.r852_device* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %8 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @R852_CARD_IRQ_REMOVE, align 4
  %10 = load i32, i32* @R852_CARD_IRQ_INSERT, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @R852_CARD_IRQ_GENABLE, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %19 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @R852_CARD_IRQ_REMOVE, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @R852_CARD_IRQ_INSERT, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %31 = load i32, i32* @R852_CARD_IRQ_ENABLE, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @r852_write_reg(%struct.r852_device* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @r852_read_reg(%struct.r852_device*, i32) #1

declare dso_local i32 @r852_write_reg(%struct.r852_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
