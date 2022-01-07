; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_pipeline_get_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_pipeline_get_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }

@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.media_entity* (%struct.media_entity*)* @fimc_pipeline_get_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.media_entity* @fimc_pipeline_get_head(%struct.media_entity* %0) #0 {
  %2 = alloca %struct.media_entity*, align 8
  %3 = alloca %struct.media_pad*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %2, align 8
  %4 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %5 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %4, i32 0, i32 0
  %6 = load %struct.media_pad*, %struct.media_pad** %5, align 8
  %7 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %6, i64 0
  store %struct.media_pad* %7, %struct.media_pad** %3, align 8
  br label %8

8:                                                ; preds = %22, %1
  %9 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  %10 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %30

16:                                               ; preds = %8
  %17 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  %18 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %17)
  store %struct.media_pad* %18, %struct.media_pad** %3, align 8
  %19 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  %20 = icmp ne %struct.media_pad* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %30

22:                                               ; preds = %16
  %23 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  %24 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %23, i32 0, i32 1
  %25 = load %struct.media_entity*, %struct.media_entity** %24, align 8
  store %struct.media_entity* %25, %struct.media_entity** %2, align 8
  %26 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %27 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %26, i32 0, i32 0
  %28 = load %struct.media_pad*, %struct.media_pad** %27, align 8
  %29 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %28, i64 0
  store %struct.media_pad* %29, %struct.media_pad** %3, align 8
  br label %8

30:                                               ; preds = %21, %8
  %31 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  ret %struct.media_entity* %31
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
