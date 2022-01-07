; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)*, i32 }
%struct.mlx5e_xdp_xmit_data = type opaque
%struct.mlx5e_xdp_info = type opaque
%struct.mlx5e_rq = type { i32 }
%struct.mlx5e_dma_info = type { i32 }
%struct.xdp_buff = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.mlx5e_xdp_xmit_data.0 = type { i8*, i8*, i32 }
%struct.mlx5e_xdp_info.1 = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.mlx5e_dma_info, %struct.mlx5e_rq* }
%struct.TYPE_7__ = type { i8*, %struct.xdp_frame* }
%struct.xdp_frame = type { i8*, i32 }

@MEM_TYPE_ZERO_COPY = common dso_local global i64 0, align 8
@MLX5E_RQ_FLAG_XDP_XMIT = common dso_local global i32 0, align 4
@MLX5E_XDP_XMIT_MODE_FRAME = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MLX5E_XDP_XMIT_MODE_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_rq*, %struct.mlx5e_dma_info*, %struct.xdp_buff*)* @mlx5e_xmit_xdp_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xmit_xdp_buff(%struct.mlx5e_xdpsq* %0, %struct.mlx5e_rq* %1, %struct.mlx5e_dma_info* %2, %struct.xdp_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_xdpsq*, align 8
  %7 = alloca %struct.mlx5e_rq*, align 8
  %8 = alloca %struct.mlx5e_dma_info*, align 8
  %9 = alloca %struct.xdp_buff*, align 8
  %10 = alloca %struct.mlx5e_xdp_xmit_data.0, align 8
  %11 = alloca %struct.mlx5e_xdp_info.1, align 8
  %12 = alloca %struct.xdp_frame*, align 8
  %13 = alloca i8*, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %6, align 8
  store %struct.mlx5e_rq* %1, %struct.mlx5e_rq** %7, align 8
  store %struct.mlx5e_dma_info* %2, %struct.mlx5e_dma_info** %8, align 8
  store %struct.xdp_buff* %3, %struct.xdp_buff** %9, align 8
  %14 = load %struct.xdp_buff*, %struct.xdp_buff** %9, align 8
  %15 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %14)
  store %struct.xdp_frame* %15, %struct.xdp_frame** %12, align 8
  %16 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %17 = icmp ne %struct.xdp_frame* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %118

23:                                               ; preds = %4
  %24 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %25 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %10, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %29 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %10, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.xdp_buff*, %struct.xdp_buff** %9, align 8
  %33 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MEM_TYPE_ZERO_COPY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %23
  %41 = load i32, i32* @MLX5E_RQ_FLAG_XDP_XMIT, align 4
  %42 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__set_bit(i32 %41, i32 %44)
  %46 = load i32, i32* @MLX5E_XDP_XMIT_MODE_FRAME, align 4
  %47 = getelementptr inbounds %struct.mlx5e_xdp_info.1, %struct.mlx5e_xdp_info.1* %11, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %10, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %10, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DMA_TO_DEVICE, align 4
  %56 = call i8* @dma_map_single(i32 %50, i8* %52, i32 %54, i32 %55)
  store i8* %56, i8** %13, align 8
  %57 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %58 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i64 @dma_mapping_error(i32 %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %40
  %64 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %65 = call i32 @xdp_return_frame(%struct.xdp_frame* %64)
  store i32 0, i32* %5, align 4
  br label %118

66:                                               ; preds = %40
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %10, i32 0, i32 1
  store i8* %67, i8** %68, align 8
  %69 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %70 = getelementptr inbounds %struct.mlx5e_xdp_info.1, %struct.mlx5e_xdp_info.1* %11, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store %struct.xdp_frame* %69, %struct.xdp_frame** %71, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds %struct.mlx5e_xdp_info.1, %struct.mlx5e_xdp_info.1* %11, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %110

75:                                               ; preds = %23
  %76 = load i32, i32* @MLX5E_XDP_XMIT_MODE_PAGE, align 4
  %77 = getelementptr inbounds %struct.mlx5e_xdp_info.1, %struct.mlx5e_xdp_info.1* %11, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %8, align 8
  %79 = getelementptr inbounds %struct.mlx5e_dma_info, %struct.mlx5e_dma_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %83 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.xdp_frame*, %struct.xdp_frame** %12, align 8
  %86 = bitcast %struct.xdp_frame* %85 to i8*
  %87 = ptrtoint i8* %84 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = add nsw i64 %81, %89
  %91 = inttoptr i64 %90 to i8*
  store i8* %91, i8** %13, align 8
  %92 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %93 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %10, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DMA_TO_DEVICE, align 4
  %99 = call i32 @dma_sync_single_for_device(i32 %94, i8* %95, i32 %97, i32 %98)
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %10, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %103 = getelementptr inbounds %struct.mlx5e_xdp_info.1, %struct.mlx5e_xdp_info.1* %11, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store %struct.mlx5e_rq* %102, %struct.mlx5e_rq** %104, align 8
  %105 = getelementptr inbounds %struct.mlx5e_xdp_info.1, %struct.mlx5e_xdp_info.1* %11, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.mlx5e_dma_info*, %struct.mlx5e_dma_info** %8, align 8
  %108 = bitcast %struct.mlx5e_dma_info* %106 to i8*
  %109 = bitcast %struct.mlx5e_dma_info* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 4 %109, i64 4, i1 false)
  br label %110

110:                                              ; preds = %75, %66
  %111 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %112 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %111, i32 0, i32 0
  %113 = load i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)*, i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)** %112, align 8
  %114 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %6, align 8
  %115 = bitcast %struct.mlx5e_xdp_xmit_data.0* %10 to %struct.mlx5e_xdp_xmit_data*
  %116 = bitcast %struct.mlx5e_xdp_info.1* %11 to %struct.mlx5e_xdp_info*
  %117 = call i32 %113(%struct.mlx5e_xdpsq* %114, %struct.mlx5e_xdp_xmit_data* %115, %struct.mlx5e_xdp_info* %116, i32 0)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %110, %63, %22
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i8* @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
