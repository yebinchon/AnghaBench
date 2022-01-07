; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_pipeline_is_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_pipeline_is_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.isp_pipeline = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.media_pad = type { %struct.media_entity* }

@ISP_PIPELINE_STREAM_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*)* @isp_pipeline_is_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_pipeline_is_last(%struct.media_entity* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca %struct.isp_pipeline*, align 8
  %5 = alloca %struct.media_pad*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %3, align 8
  %6 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %7 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %13 = call %struct.isp_pipeline* @to_isp_pipeline(%struct.media_entity* %12)
  store %struct.isp_pipeline* %13, %struct.isp_pipeline** %4, align 8
  %14 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %15 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ISP_PIPELINE_STREAM_STOPPED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %32

20:                                               ; preds = %11
  %21 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %22 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call %struct.media_pad* @media_entity_remote_pad(i32* %24)
  store %struct.media_pad* %25, %struct.media_pad** %5, align 8
  %26 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %27 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %26, i32 0, i32 0
  %28 = load %struct.media_entity*, %struct.media_entity** %27, align 8
  %29 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %30 = icmp eq %struct.media_entity* %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %20, %19, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(%struct.media_entity*) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
