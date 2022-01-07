; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_ether1.c_ether1_inw_p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_ether1.c_ether1_inw_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@REG_PAGE = common dso_local global i32 0, align 4
@ETHER1_RAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*, i32, i32)* @ether1_inw_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @ether1_inw_p(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 12
  %17 = load i32, i32* @REG_PAGE, align 4
  %18 = call i32 @writeb(i32 %16, i32 %17)
  %19 = load i64, i64* @ETHER1_RAM, align 8
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 4095
  %22 = shl i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = call zeroext i16 @readw(i64 %24)
  store i16 %25, i16* %8, align 2
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @local_irq_restore(i64 %29)
  br label %31

31:                                               ; preds = %28, %14
  %32 = load i16, i16* %8, align 2
  ret i16 %32
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
