; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_test_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_test_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32, i32 }

@B0_Y2_SP_ISRC2 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@Y2_IS_IRQ_SW = common dso_local global i32 0, align 4
@SKY2_HW_USE_MSI = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@CS_CL_SW_IRQ = common dso_local global i32 0, align 4
@B0_Y2_SP_ICR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sky2_test_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_test_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sky2_hw*
  store %struct.sky2_hw* %9, %struct.sky2_hw** %6, align 8
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %11 = load i32, i32* @B0_Y2_SP_ISRC2, align 4
  %12 = call i32 @sky2_read32(%struct.sky2_hw* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @Y2_IS_IRQ_SW, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* @SKY2_HW_USE_MSI, align 4
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %25 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %29 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %28, i32 0, i32 0
  %30 = call i32 @wake_up(i32* %29)
  %31 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %32 = load i32, i32* @B0_CTST, align 4
  %33 = load i32, i32* @CS_CL_SW_IRQ, align 4
  %34 = call i32 @sky2_write8(%struct.sky2_hw* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %17
  %36 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %37 = load i32, i32* @B0_Y2_SP_ICR, align 4
  %38 = call i32 @sky2_write32(%struct.sky2_hw* %36, i32 %37, i32 2)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
