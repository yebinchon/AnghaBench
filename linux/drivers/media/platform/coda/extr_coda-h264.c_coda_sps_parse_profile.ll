; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-h264.c_coda_sps_parse_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-h264.c_coda_sps_parse_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vb2_buffer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_sps_parse_profile(%struct.coda_ctx* %0, %struct.vb2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coda_ctx*, align 8
  %5 = alloca %struct.vb2_buffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %4, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %5, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %9 = call i32* @vb2_plane_vaddr(%struct.vb2_buffer* %8, i32 0)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %5, align 8
  %12 = call i32 @vb2_get_plane_payload(%struct.vb2_buffer* %11, i32 0)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32* %14, i32** %7, align 8
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @coda_find_nal_header(i32* %16, i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %26, align 4
  %29 = and i32 %28, 31
  %30 = icmp ne i32 %29, 7
  br i1 %30, label %15, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %31, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i32* @coda_find_nal_header(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
