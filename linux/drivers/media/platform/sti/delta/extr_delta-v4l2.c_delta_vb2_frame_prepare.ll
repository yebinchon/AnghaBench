; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_frame_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_frame_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }
%struct.delta_ctx = type { i32, i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.delta_frame = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s setup_frame() failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s frame[%d] prepared; virt=0x%p, phy=0x%pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @delta_vb2_frame_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_vb2_frame_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.delta_ctx*, align 8
  %6 = alloca %struct.delta_dev*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.delta_frame*, align 8
  %9 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %10, i32 0, i32 1
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %11, align 8
  store %struct.vb2_queue* %12, %struct.vb2_queue** %4, align 8
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %14 = call %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %13)
  store %struct.delta_ctx* %14, %struct.delta_ctx** %5, align 8
  %15 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %15, i32 0, i32 2
  %17 = load %struct.delta_dev*, %struct.delta_dev** %16, align 8
  store %struct.delta_dev* %17, %struct.delta_dev** %6, align 8
  %18 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %19 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %18)
  store %struct.vb2_v4l2_buffer* %19, %struct.vb2_v4l2_buffer** %7, align 8
  %20 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %21 = call %struct.delta_frame* @to_frame(%struct.vb2_v4l2_buffer* %20)
  store %struct.delta_frame* %21, %struct.delta_frame** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %23 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %81, label %26

26:                                               ; preds = %1
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %32 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %34 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %33, i32 0, i32 1
  %35 = call i32 @vb2_plane_vaddr(%struct.TYPE_3__* %34, i32 0)
  %36 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %37 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %39 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %38, i32 0, i32 1
  %40 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.TYPE_3__* %39, i32 0)
  %41 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %42 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %47 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %49 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %50 = call i32 @delta_setup_frame(%struct.delta_ctx* %48, %struct.delta_frame* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %26
  %54 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %55 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %2, align 4
  br label %87

63:                                               ; preds = %26
  %64 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %65 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %67 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %73 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %76 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %79 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %78, i32 0, i32 2
  %80 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %63, %1
  %82 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %86 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %53
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.delta_frame* @to_frame(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @vb2_plane_vaddr(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @delta_setup_frame(%struct.delta_ctx*, %struct.delta_frame*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
