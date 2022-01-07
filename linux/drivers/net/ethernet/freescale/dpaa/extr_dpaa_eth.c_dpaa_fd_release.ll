; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_fd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_fd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qm_fd = type { i32 }
%struct.qm_sg_entry = type { i32 }
%struct.dpaa_bp = type { i32, i32 }
%struct.bm_buffer = type { i64 }

@qm_fd_sg = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.qm_fd*)* @dpaa_fd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_fd_release(%struct.net_device* %0, %struct.qm_fd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qm_fd*, align 8
  %5 = alloca %struct.qm_sg_entry*, align 8
  %6 = alloca %struct.dpaa_bp*, align 8
  %7 = alloca %struct.bm_buffer, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.qm_fd* %1, %struct.qm_fd** %4, align 8
  %10 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %7, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %12 = call i32 @qm_fd_addr(%struct.qm_fd* %11)
  %13 = call i32 @bm_buffer_set64(%struct.bm_buffer* %7, i32 %12)
  %14 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %15 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.dpaa_bp* @dpaa_bpid2pool(i32 %16)
  store %struct.dpaa_bp* %17, %struct.dpaa_bp** %6, align 8
  %18 = load %struct.dpaa_bp*, %struct.dpaa_bp** %6, align 8
  %19 = icmp ne %struct.dpaa_bp* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %74

21:                                               ; preds = %2
  %22 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %23 = call i64 @qm_fd_get_format(%struct.qm_fd* %22)
  %24 = load i64, i64* @qm_fd_sg, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %21
  %27 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %28 = call i32 @qm_fd_addr(%struct.qm_fd* %27)
  %29 = call i8* @phys_to_virt(i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %32 = call i32 @qm_fd_get_offset(%struct.qm_fd* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %30, i64 %33
  %35 = bitcast i8* %34 to %struct.qm_sg_entry*
  store %struct.qm_sg_entry* %35, %struct.qm_sg_entry** %5, align 8
  %36 = load %struct.dpaa_bp*, %struct.dpaa_bp** %6, align 8
  %37 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qm_fd*, %struct.qm_fd** %4, align 8
  %40 = call i32 @qm_fd_addr(%struct.qm_fd* %39)
  %41 = load %struct.dpaa_bp*, %struct.dpaa_bp** %6, align 8
  %42 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @dma_unmap_single(i32 %38, i32 %40, i32 %43, i32 %44)
  %46 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %5, align 8
  %47 = call i32 @dpaa_release_sgt_members(%struct.qm_sg_entry* %46)
  %48 = load %struct.dpaa_bp*, %struct.dpaa_bp** %6, align 8
  %49 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.dpaa_bp*, %struct.dpaa_bp** %6, align 8
  %53 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %56 = call i32 @dma_map_single(i32 %50, i8* %51, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.dpaa_bp*, %struct.dpaa_bp** %6, align 8
  %58 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @dma_mapping_error(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %26
  %64 = load %struct.dpaa_bp*, %struct.dpaa_bp** %6, align 8
  %65 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %74

68:                                               ; preds = %26
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @bm_buffer_set64(%struct.bm_buffer* %7, i32 %69)
  br label %71

71:                                               ; preds = %68, %21
  %72 = load %struct.dpaa_bp*, %struct.dpaa_bp** %6, align 8
  %73 = call i32 @dpaa_bman_release(%struct.dpaa_bp* %72, %struct.bm_buffer* %7, i32 1)
  br label %74

74:                                               ; preds = %71, %63, %20
  ret void
}

declare dso_local i32 @bm_buffer_set64(%struct.bm_buffer*, i32) #1

declare dso_local i32 @qm_fd_addr(%struct.qm_fd*) #1

declare dso_local %struct.dpaa_bp* @dpaa_bpid2pool(i32) #1

declare dso_local i64 @qm_fd_get_format(%struct.qm_fd*) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @qm_fd_get_offset(%struct.qm_fd*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dpaa_release_sgt_members(%struct.qm_sg_entry*) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dpaa_bman_release(%struct.dpaa_bp*, %struct.bm_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
