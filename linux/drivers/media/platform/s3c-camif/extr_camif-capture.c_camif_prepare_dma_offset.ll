; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_prepare_dma_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_prepare_dma_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { %struct.camif_frame }
%struct.camif_frame = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"dma_offset: initial: %d, line: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camif_vp*)* @camif_prepare_dma_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camif_prepare_dma_offset(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  %3 = alloca %struct.camif_frame*, align 8
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %4 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %5 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %4, i32 0, i32 0
  store %struct.camif_frame* %5, %struct.camif_frame** %3, align 8
  %6 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %7 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %11 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %9, %12
  %14 = sext i32 %13 to i64
  %15 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %16 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %14, %18
  %20 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %21 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i64 %19, i64* %22, align 8
  %23 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %24 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %28 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %32 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %30, %34
  %36 = sub nsw i64 %26, %35
  %37 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %38 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %41 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %45 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %47)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
