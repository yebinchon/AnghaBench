; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_vb2_buf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_vb2_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, i32 }
%struct.venus_inst = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.venus_buffer = type { i32, i32, i32 }
%struct.sg_table = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_vb2_buf_init(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.venus_buffer*, align 8
  %7 = alloca %struct.sg_table*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.venus_inst* @vb2_get_drv_priv(i32 %10)
  store %struct.venus_inst* %11, %struct.venus_inst** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %13 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %12)
  store %struct.vb2_v4l2_buffer* %13, %struct.vb2_v4l2_buffer** %5, align 8
  %14 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %15 = call %struct.venus_buffer* @to_venus_buffer(%struct.vb2_v4l2_buffer* %14)
  store %struct.venus_buffer* %15, %struct.venus_buffer** %6, align 8
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %17 = call %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer* %16, i32 0)
  store %struct.sg_table* %17, %struct.sg_table** %7, align 8
  %18 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %19 = icmp ne %struct.sg_table* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %1
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %25 = call i32 @vb2_plane_size(%struct.vb2_buffer* %24, i32 0)
  %26 = load %struct.venus_buffer*, %struct.venus_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.venus_buffer, %struct.venus_buffer* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %29 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sg_dma_address(i32 %30)
  %32 = load %struct.venus_buffer*, %struct.venus_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.venus_buffer, %struct.venus_buffer* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %35 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %23
  %40 = load %struct.venus_buffer*, %struct.venus_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.venus_buffer, %struct.venus_buffer* %40, i32 0, i32 0
  %42 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %43 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  br label %45

45:                                               ; preds = %39, %23
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.venus_inst* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.venus_buffer* @to_venus_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
