; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_cpu_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_cpu_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FIMC_IS_POWER_ON_TIMEOUT = common dso_local global i32 0, align 4
@REG_WDT_ISP = common dso_local global i32 0, align 4
@MCUCTL_REG_BBOAR = common dso_local global i32 0, align 4
@REG_PMU_ISP_ARM_OPTION = common dso_local global i32 0, align 4
@REG_PMU_ISP_ARM_CONFIGURATION = common dso_local global i32 0, align 4
@REG_PMU_ISP_ARM_STATUS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_is_cpu_set_power(%struct.fimc_is* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_is*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @FIMC_IS_POWER_ON_TIMEOUT, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %12 = load i32, i32* @REG_WDT_ISP, align 4
  %13 = call i32 @mcuctl_write(i32 0, %struct.fimc_is* %11, i32 %12)
  %14 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %15 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %19 = load i32, i32* @MCUCTL_REG_BBOAR, align 4
  %20 = call i32 @mcuctl_write(i32 %17, %struct.fimc_is* %18, i32 %19)
  %21 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %22 = load i32, i32* @REG_PMU_ISP_ARM_OPTION, align 4
  %23 = call i32 @pmuisp_write(i32 98304, %struct.fimc_is* %21, i32 %22)
  %24 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %25 = load i32, i32* @REG_PMU_ISP_ARM_CONFIGURATION, align 4
  %26 = call i32 @pmuisp_write(i32 1, %struct.fimc_is* %24, i32 %25)
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %29 = load i32, i32* @REG_PMU_ISP_ARM_OPTION, align 4
  %30 = call i32 @pmuisp_write(i32 65536, %struct.fimc_is* %28, i32 %29)
  %31 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %32 = load i32, i32* @REG_PMU_ISP_ARM_CONFIGURATION, align 4
  %33 = call i32 @pmuisp_write(i32 0, %struct.fimc_is* %31, i32 %32)
  br label %34

34:                                               ; preds = %46, %27
  %35 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %36 = load i32, i32* @REG_PMU_ISP_ARM_STATUS, align 4
  %37 = call i32 @pmuisp_read(%struct.fimc_is* %35, i32 %36)
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ETIME, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %6, align 4
  %49 = call i32 @udelay(i32 1)
  br label %34

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %10
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @mcuctl_write(i32, %struct.fimc_is*, i32) #1

declare dso_local i32 @pmuisp_write(i32, %struct.fimc_is*, i32) #1

declare dso_local i32 @pmuisp_read(%struct.fimc_is*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
