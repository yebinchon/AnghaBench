; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8** }

@FIMC_IS_INT_FRAME_DONE_ISP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_isp_irq_handler(%struct.fimc_is* %0) #0 {
  %2 = alloca %struct.fimc_is*, align 8
  store %struct.fimc_is* %0, %struct.fimc_is** %2, align 8
  %3 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %4 = call i32 @MCUCTL_REG_ISSR(i32 20)
  %5 = call i8* @mcuctl_read(%struct.fimc_is* %3, i32 %4)
  %6 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %7 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8**, i8*** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  store i8* %5, i8** %10, align 8
  %11 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %12 = call i32 @MCUCTL_REG_ISSR(i32 21)
  %13 = call i8* @mcuctl_read(%struct.fimc_is* %11, i32 %12)
  %14 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %15 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* %13, i8** %18, align 8
  %19 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %20 = load i32, i32* @FIMC_IS_INT_FRAME_DONE_ISP, align 4
  %21 = call i32 @fimc_is_fw_clear_irq1(%struct.fimc_is* %19, i32 %20)
  %22 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %23 = call i32 @fimc_isp_video_irq_handler(%struct.fimc_is* %22)
  %24 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %25 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %24, i32 0, i32 0
  %26 = call i32 @wake_up(i32* %25)
  ret void
}

declare dso_local i8* @mcuctl_read(%struct.fimc_is*, i32) #1

declare dso_local i32 @MCUCTL_REG_ISSR(i32) #1

declare dso_local i32 @fimc_is_fw_clear_irq1(%struct.fimc_is*, i32) #1

declare dso_local i32 @fimc_isp_video_irq_handler(%struct.fimc_is*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
