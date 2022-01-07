; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.vsp1_histogram = type { i64 }
%struct.vsp1_histogram_buffer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @histo_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histo_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vsp1_histogram*, align 8
  %6 = alloca %struct.vsp1_histogram_buffer*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %7)
  store %struct.vb2_v4l2_buffer* %8, %struct.vb2_v4l2_buffer** %4, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vsp1_histogram* @vb2_get_drv_priv(i32 %11)
  store %struct.vsp1_histogram* %12, %struct.vsp1_histogram** %5, align 8
  %13 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %14 = call %struct.vsp1_histogram_buffer* @to_vsp1_histogram_buffer(%struct.vb2_v4l2_buffer* %13)
  store %struct.vsp1_histogram_buffer* %14, %struct.vsp1_histogram_buffer** %6, align 8
  %15 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %24 = call i64 @vb2_plane_size(%struct.vb2_buffer* %23, i32 0)
  %25 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %5, align 8
  %26 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %22
  %33 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %34 = call i32 @vb2_plane_vaddr(%struct.vb2_buffer* %33, i32 0)
  %35 = load %struct.vsp1_histogram_buffer*, %struct.vsp1_histogram_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.vsp1_histogram_buffer, %struct.vsp1_histogram_buffer* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %29, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.vsp1_histogram* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.vsp1_histogram_buffer* @to_vsp1_histogram_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
