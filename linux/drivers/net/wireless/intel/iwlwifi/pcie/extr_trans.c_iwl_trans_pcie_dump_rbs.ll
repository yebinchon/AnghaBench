; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_dump_rbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_dump_rbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_fw_error_dump_data = type { i64, i8*, i8* }
%struct.iwl_trans_pcie = type { i32, %struct.iwl_rxq* }
%struct.iwl_rxq = type { i32, i32, %struct.iwl_rx_mem_buffer** }
%struct.iwl_rx_mem_buffer = type { i32, i32 }
%struct.iwl_fw_error_dump_rb = type { i32, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_RB = common dso_local global i32 0, align 4
@RX_QUEUE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_fw_error_dump_data**, i32)* @iwl_trans_pcie_dump_rbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_dump_rbs(%struct.iwl_trans* %0, %struct.iwl_fw_error_dump_data** %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_rxq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_rx_mem_buffer*, align 8
  %15 = alloca %struct.iwl_fw_error_dump_rb*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %17 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %16)
  store %struct.iwl_trans_pcie* %17, %struct.iwl_trans_pcie** %7, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %18, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %23, i32 0, i32 1
  %25 = load %struct.iwl_rxq*, %struct.iwl_rxq** %24, align 8
  %26 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %25, i64 0
  store %struct.iwl_rxq* %26, %struct.iwl_rxq** %9, align 8
  store i32 0, i32* %13, align 4
  %27 = load %struct.iwl_rxq*, %struct.iwl_rxq** %9, align 8
  %28 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %27, i32 0, i32 1
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %31 = load %struct.iwl_rxq*, %struct.iwl_rxq** %9, align 8
  %32 = call i32 @iwl_get_closed_rb_stts(%struct.iwl_trans* %30, %struct.iwl_rxq* %31)
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = and i32 %33, 4095
  store i32 %34, i32* %11, align 4
  %35 = load %struct.iwl_rxq*, %struct.iwl_rxq** %9, align 8
  %36 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %119, %3
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %126

48:                                               ; preds = %46
  %49 = load %struct.iwl_rxq*, %struct.iwl_rxq** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %49, i32 0, i32 2
  %51 = load %struct.iwl_rx_mem_buffer**, %struct.iwl_rx_mem_buffer*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %51, i64 %53
  %55 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %54, align 8
  store %struct.iwl_rx_mem_buffer* %55, %struct.iwl_rx_mem_buffer** %14, align 8
  %56 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %57 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %14, align 8
  %60 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %64 = call i32 @dma_unmap_page(i32 %58, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 40, %66
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* @IWL_FW_ERROR_DUMP_RB, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %75 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %74, align 8
  %76 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 16, %78
  %80 = trunc i64 %79 to i32
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %83 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %82, align 8
  %84 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %86 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %85, align 8
  %87 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = bitcast i8* %89 to %struct.iwl_fw_error_dump_rb*
  store %struct.iwl_fw_error_dump_rb* %90, %struct.iwl_fw_error_dump_rb** %15, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.iwl_fw_error_dump_rb*, %struct.iwl_fw_error_dump_rb** %15, align 8
  %94 = getelementptr inbounds %struct.iwl_fw_error_dump_rb, %struct.iwl_fw_error_dump_rb* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.iwl_fw_error_dump_rb*, %struct.iwl_fw_error_dump_rb** %15, align 8
  %96 = getelementptr inbounds %struct.iwl_fw_error_dump_rb, %struct.iwl_fw_error_dump_rb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %14, align 8
  %99 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @page_address(i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @memcpy(i32 %97, i32 %101, i32 %102)
  %104 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %105 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %14, align 8
  %108 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %112 = call i32 @dma_map_page(i32 %106, i32 %109, i32 0, i32 %110, i32 %111)
  %113 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %14, align 8
  %114 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %116 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %115, align 8
  %117 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %116)
  %118 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  store %struct.iwl_fw_error_dump_data* %117, %struct.iwl_fw_error_dump_data** %118, align 8
  br label %119

119:                                              ; preds = %48
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* @RX_QUEUE_MASK, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %38

126:                                              ; preds = %46
  %127 = load %struct.iwl_rxq*, %struct.iwl_rxq** %9, align 8
  %128 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %127, i32 0, i32 1
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load i32, i32* %13, align 4
  ret i32 %130
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @iwl_get_closed_rb_stts(%struct.iwl_trans*, %struct.iwl_rxq*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
