; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_program_fdir_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_program_fdir_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_fdir_filter = type { i32 }
%struct.i40e_pf = type { i32 }
%struct.i40e_tx_buffer = type { %struct.i40e_tx_desc*, i8*, i32 }
%struct.i40e_tx_desc = type { i32, i32 }
%struct.i40e_ring = type { i64, i64, i32, %struct.i40e_tx_buffer*, %struct.device* }
%struct.device = type { i32 }
%struct.i40e_vsi = type { %struct.i40e_ring** }

@I40E_VSI_FDIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@I40E_FD_CLEAN_DELAY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@I40E_FDIR_MAX_RAW_PACKET_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@I40E_TXD_CMD = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_DUMMY = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_FD_SB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_fdir_filter*, i32*, %struct.i40e_pf*, i32)* @i40e_program_fdir_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_program_fdir_filter(%struct.i40e_fdir_filter* %0, i32* %1, %struct.i40e_pf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_fdir_filter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_tx_buffer*, align 8
  %11 = alloca %struct.i40e_tx_buffer*, align 8
  %12 = alloca %struct.i40e_tx_desc*, align 8
  %13 = alloca %struct.i40e_ring*, align 8
  %14 = alloca %struct.i40e_vsi*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.i40e_fdir_filter* %0, %struct.i40e_fdir_filter** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.i40e_pf* %2, %struct.i40e_pf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %20 = load i32, i32* @I40E_VSI_FDIR, align 4
  %21 = call %struct.i40e_vsi* @i40e_find_vsi_by_type(%struct.i40e_pf* %19, i32 %20)
  store %struct.i40e_vsi* %21, %struct.i40e_vsi** %14, align 8
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %14, align 8
  %23 = icmp ne %struct.i40e_vsi* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %142

27:                                               ; preds = %4
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %14, align 8
  %29 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %28, i32 0, i32 0
  %30 = load %struct.i40e_ring**, %struct.i40e_ring*** %29, align 8
  %31 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %30, i64 0
  %32 = load %struct.i40e_ring*, %struct.i40e_ring** %31, align 8
  store %struct.i40e_ring* %32, %struct.i40e_ring** %13, align 8
  %33 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %34 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %33, i32 0, i32 4
  %35 = load %struct.device*, %struct.device** %34, align 8
  store %struct.device* %35, %struct.device** %15, align 8
  %36 = load i64, i64* @I40E_FD_CLEAN_DELAY, align 8
  store i64 %36, i64* %18, align 8
  br label %37

37:                                               ; preds = %49, %27
  %38 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %39 = call i32 @I40E_DESC_UNUSED(%struct.i40e_ring* %38)
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i64, i64* %18, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %142

47:                                               ; preds = %41
  %48 = call i32 @msleep_interruptible(i32 1)
  br label %49

49:                                               ; preds = %47
  %50 = load i64, i64* %18, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %18, align 8
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.device*, %struct.device** %15, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @I40E_FDIR_MAX_RAW_PACKET_SIZE, align 4
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @dma_map_single(%struct.device* %53, i32* %54, i32 %55, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load %struct.device*, %struct.device** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @dma_mapping_error(%struct.device* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %141

63:                                               ; preds = %52
  %64 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %65 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %18, align 8
  %67 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %68 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %67, i32 0, i32 3
  %69 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %68, align 8
  %70 = load i64, i64* %18, align 8
  %71 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %69, i64 %70
  store %struct.i40e_tx_buffer* %71, %struct.i40e_tx_buffer** %11, align 8
  %72 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %73 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @i40e_fdir(%struct.i40e_ring* %72, %struct.i40e_fdir_filter* %73, i32 %74)
  %76 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %77 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %18, align 8
  %79 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %80 = load i64, i64* %18, align 8
  %81 = call %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring* %79, i64 %80)
  store %struct.i40e_tx_desc* %81, %struct.i40e_tx_desc** %12, align 8
  %82 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %83 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %82, i32 0, i32 3
  %84 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %83, align 8
  %85 = load i64, i64* %18, align 8
  %86 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %84, i64 %85
  store %struct.i40e_tx_buffer* %86, %struct.i40e_tx_buffer** %10, align 8
  %87 = load i64, i64* %18, align 8
  %88 = add i64 %87, 1
  %89 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %90 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %63
  %94 = load i64, i64* %18, align 8
  %95 = add i64 %94, 1
  br label %97

96:                                               ; preds = %63
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i64 [ %95, %93 ], [ 0, %96 ]
  %99 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %100 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %10, align 8
  %102 = call i32 @memset(%struct.i40e_tx_buffer* %101, i32 0, i32 24)
  %103 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %10, align 8
  %104 = load i32, i32* @len, align 4
  %105 = load i32, i32* @I40E_FDIR_MAX_RAW_PACKET_SIZE, align 4
  %106 = call i32 @dma_unmap_len_set(%struct.i40e_tx_buffer* %103, i32 %104, i32 %105)
  %107 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %10, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @dma_unmap_addr_set(%struct.i40e_tx_buffer* %107, i32 %108, i32 %109)
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @cpu_to_le64(i32 %111)
  %113 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %12, align 8
  %114 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @I40E_TXD_CMD, align 4
  %116 = load i32, i32* @I40E_TX_DESC_CMD_DUMMY, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* @I40E_TX_FLAGS_FD_SB, align 4
  %119 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %10, align 8
  %120 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = bitcast i32* %121 to i8*
  %123 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %10, align 8
  %124 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* @I40E_FDIR_MAX_RAW_PACKET_SIZE, align 4
  %127 = call i32 @build_ctob(i32 %125, i32 0, i32 %126, i32 0)
  %128 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %12, align 8
  %129 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = call i32 (...) @wmb()
  %131 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %12, align 8
  %132 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %11, align 8
  %133 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %132, i32 0, i32 0
  store %struct.i40e_tx_desc* %131, %struct.i40e_tx_desc** %133, align 8
  %134 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %135 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  %138 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @writel(i64 %136, i32 %139)
  store i32 0, i32* %5, align 4
  br label %142

141:                                              ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %97, %44, %24
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.i40e_vsi* @i40e_find_vsi_by_type(%struct.i40e_pf*, i32) #1

declare dso_local i32 @I40E_DESC_UNUSED(%struct.i40e_ring*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @i40e_fdir(%struct.i40e_ring*, %struct.i40e_fdir_filter*, i32) #1

declare dso_local %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring*, i64) #1

declare dso_local i32 @memset(%struct.i40e_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.i40e_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.i40e_tx_buffer*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @build_ctob(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
