; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_pipeline_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_pipeline_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_pipeline = type { i64, i32, i32 }

@ISP_PIPELINE_STREAM_SINGLESHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_pipeline*)* @isp_pipeline_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_pipeline_resume(%struct.isp_pipeline* %0) #0 {
  %2 = alloca %struct.isp_pipeline*, align 8
  %3 = alloca i32, align 4
  store %struct.isp_pipeline* %0, %struct.isp_pipeline** %2, align 8
  %4 = load %struct.isp_pipeline*, %struct.isp_pipeline** %2, align 8
  %5 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ISP_PIPELINE_STREAM_SINGLESHOT, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.isp_pipeline*, %struct.isp_pipeline** %2, align 8
  %11 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @omap3isp_video_resume(i32 %12, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.isp_pipeline*, %struct.isp_pipeline** %2, align 8
  %22 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @omap3isp_video_resume(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.isp_pipeline*, %struct.isp_pipeline** %2, align 8
  %27 = load %struct.isp_pipeline*, %struct.isp_pipeline** %2, align 8
  %28 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @isp_pipeline_enable(%struct.isp_pipeline* %26, i64 %29)
  ret void
}

declare dso_local i32 @omap3isp_video_resume(i32, i32) #1

declare dso_local i32 @isp_pipeline_enable(%struct.isp_pipeline*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
