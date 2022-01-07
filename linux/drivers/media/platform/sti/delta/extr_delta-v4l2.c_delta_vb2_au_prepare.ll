; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_au_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_au_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }
%struct.delta_ctx = type { i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i64 }
%struct.delta_au = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s au[%d] prepared; virt=0x%p, phy=0x%pad\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @delta_vb2_au_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_vb2_au_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_dev*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.delta_au*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 1
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  store %struct.vb2_queue* %10, %struct.vb2_queue** %3, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %12 = call %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.delta_ctx* %12, %struct.delta_ctx** %4, align 8
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 1
  %15 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  store %struct.delta_dev* %15, %struct.delta_dev** %5, align 8
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %17 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %16)
  store %struct.vb2_v4l2_buffer* %17, %struct.vb2_v4l2_buffer** %6, align 8
  %18 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %19 = call %struct.delta_au* @to_au(%struct.vb2_v4l2_buffer* %18)
  store %struct.delta_au* %19, %struct.delta_au** %7, align 8
  %20 = load %struct.delta_au*, %struct.delta_au** %7, align 8
  %21 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %1
  %25 = load %struct.delta_au*, %struct.delta_au** %7, align 8
  %26 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @vb2_plane_vaddr(i32* %27, i32 0)
  %29 = load %struct.delta_au*, %struct.delta_au** %7, align 8
  %30 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.delta_au*, %struct.delta_au** %7, align 8
  %32 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %33, i32 0)
  %35 = load %struct.delta_au*, %struct.delta_au** %7, align 8
  %36 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.delta_au*, %struct.delta_au** %7, align 8
  %38 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %40 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %46 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.delta_au*, %struct.delta_au** %7, align 8
  %49 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.delta_au*, %struct.delta_au** %7, align 8
  %52 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %51, i32 0, i32 1
  %53 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %24, %1
  %55 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %62 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %54
  ret i32 0
}

declare dso_local %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.delta_au* @to_au(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
