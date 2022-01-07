; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_frame_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i32, i64, i64, i32, i32, i32, %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_descriptor*, %struct.lan743x_adapter* }
%struct.lan743x_tx_buffer_info = type { i32, %struct.sk_buff* }
%struct.lan743x_tx_descriptor = type { i32 }
%struct.lan743x_adapter = type { i32 }
%struct.sk_buff = type { i32 }

@TX_DESC_DATA0_DTYPE_MASK_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_DTYPE_DATA_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_LS_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_IOC_ = common dso_local global i32 0, align 4
@TX_BUFFER_INFO_FLAG_TIMESTAMP_REQUESTED = common dso_local global i32 0, align 4
@TX_BUFFER_INFO_FLAG_IGNORE_SYNC = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET = common dso_local global i32 0, align 4
@TX_TAIL_SET_TOP_INT_VEC_EN_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET = common dso_local global i32 0, align 4
@TX_TAIL_SET_DMAC_INT_EN_ = common dso_local global i32 0, align 4
@TX_TAIL_SET_TOP_INT_EN_ = common dso_local global i32 0, align 4
@TX_FRAME_FLAG_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_tx*, %struct.sk_buff*, i32, i32)* @lan743x_tx_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_tx_frame_end(%struct.lan743x_tx* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lan743x_tx*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lan743x_tx_descriptor*, align 8
  %10 = alloca %struct.lan743x_tx_buffer_info*, align 8
  %11 = alloca %struct.lan743x_adapter*, align 8
  %12 = alloca i32, align 4
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.lan743x_tx_descriptor* null, %struct.lan743x_tx_descriptor** %9, align 8
  store %struct.lan743x_tx_buffer_info* null, %struct.lan743x_tx_buffer_info** %10, align 8
  %13 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %14 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %13, i32 0, i32 8
  %15 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %14, align 8
  store %struct.lan743x_adapter* %15, %struct.lan743x_adapter** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %17 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TX_DESC_DATA0_DTYPE_MASK_, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @TX_DESC_DATA0_DTYPE_DATA_, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i32, i32* @TX_DESC_DATA0_LS_, align 4
  %25 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %26 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @TX_DESC_DATA0_IOC_, align 4
  %30 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %31 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %23, %4
  %35 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %36 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %35, i32 0, i32 7
  %37 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %36, align 8
  %38 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %39 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %37, i64 %40
  store %struct.lan743x_tx_descriptor* %41, %struct.lan743x_tx_descriptor** %9, align 8
  %42 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %43 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %42, i32 0, i32 6
  %44 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %43, align 8
  %45 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %46 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %44, i64 %47
  store %struct.lan743x_tx_buffer_info* %48, %struct.lan743x_tx_buffer_info** %10, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %10, align 8
  %51 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %50, i32 0, i32 1
  store %struct.sk_buff* %49, %struct.sk_buff** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %34
  %55 = load i32, i32* @TX_BUFFER_INFO_FLAG_TIMESTAMP_REQUESTED, align 4
  %56 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %10, align 8
  %57 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %34
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @TX_BUFFER_INFO_FLAG_IGNORE_SYNC, align 4
  %65 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %10, align 8
  %66 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %60
  %70 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %71 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %9, align 8
  %74 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %76 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %77 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @lan743x_tx_next_index(%struct.lan743x_tx* %75, i64 %78)
  %80 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %81 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %83 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %86 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = call i32 (...) @dma_wmb()
  %88 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %89 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %69
  %95 = load i32, i32* @TX_TAIL_SET_TOP_INT_VEC_EN_, align 4
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %94, %69
  %99 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %100 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @TX_TAIL_SET_DMAC_INT_EN_, align 4
  %107 = load i32, i32* @TX_TAIL_SET_TOP_INT_EN_, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %105, %98
  %112 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %11, align 8
  %113 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %114 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @TX_TAIL(i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %120 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = or i64 %118, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %112, i32 %116, i32 %123)
  %125 = load i32, i32* @TX_FRAME_FLAG_IN_PROGRESS, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.lan743x_tx*, %struct.lan743x_tx** %5, align 8
  %128 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  ret void
}

declare dso_local i64 @lan743x_tx_next_index(%struct.lan743x_tx*, i64) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @TX_TAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
