; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_frame = type { i32, i32 }
%struct.mlx5e_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.mlx5e_xdpsq }
%struct.mlx5e_xdpsq = type { %struct.TYPE_8__, i32, i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)* }
%struct.TYPE_8__ = type { i64 }
%struct.mlx5e_xdp_xmit_data = type opaque
%struct.mlx5e_xdp_info = type opaque
%struct.mlx5e_xdp_xmit_data.0 = type { i32, i32, i32 }
%struct.mlx5e_xdp_info.1 = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.xdp_frame* }

@ENETDOWN = common dso_local global i32 0, align 4
@XDP_XMIT_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MLX5E_XDP_XMIT_MODE_FRAME = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5e_priv*, align 8
  %11 = alloca %struct.mlx5e_xdpsq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xdp_frame*, align 8
  %16 = alloca %struct.mlx5e_xdp_xmit_data.0, align 4
  %17 = alloca %struct.mlx5e_xdp_info.1, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.mlx5e_priv* %19, %struct.mlx5e_priv** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %21 = call i32 @mlx5e_xdp_tx_is_enabled(%struct.mlx5e_priv* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENETDOWN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %166

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @XDP_XMIT_FLAGS_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %166

40:                                               ; preds = %30
  %41 = call i32 (...) @smp_processor_id()
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %44 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %166

54:                                               ; preds = %40
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %10, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 %60
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store %struct.mlx5e_xdpsq* %63, %struct.mlx5e_xdpsq** %11, align 8
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %142, %54
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %145

68:                                               ; preds = %64
  %69 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %69, i64 %71
  %73 = load %struct.xdp_frame*, %struct.xdp_frame** %72, align 8
  store %struct.xdp_frame* %73, %struct.xdp_frame** %15, align 8
  %74 = load %struct.xdp_frame*, %struct.xdp_frame** %15, align 8
  %75 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %16, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = load %struct.xdp_frame*, %struct.xdp_frame** %15, align 8
  %79 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %16, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %11, align 8
  %83 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %16, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %16, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DMA_TO_DEVICE, align 4
  %90 = call i32 @dma_map_single(i32 %84, i32 %86, i32 %88, i32 %89)
  %91 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %16, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %11, align 8
  %93 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %16, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dma_mapping_error(i32 %94, i32 %96)
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %68
  %101 = load %struct.xdp_frame*, %struct.xdp_frame** %15, align 8
  %102 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %101)
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %142

105:                                              ; preds = %68
  %106 = load i32, i32* @MLX5E_XDP_XMIT_MODE_FRAME, align 4
  %107 = getelementptr inbounds %struct.mlx5e_xdp_info.1, %struct.mlx5e_xdp_info.1* %17, i32 0, i32 1
  store i32 %106, i32* %107, align 8
  %108 = load %struct.xdp_frame*, %struct.xdp_frame** %15, align 8
  %109 = getelementptr inbounds %struct.mlx5e_xdp_info.1, %struct.mlx5e_xdp_info.1* %17, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store %struct.xdp_frame* %108, %struct.xdp_frame** %110, align 8
  %111 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %16, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.mlx5e_xdp_info.1, %struct.mlx5e_xdp_info.1* %17, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %11, align 8
  %116 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %115, i32 0, i32 2
  %117 = load i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)*, i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)** %116, align 8
  %118 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %11, align 8
  %119 = bitcast %struct.mlx5e_xdp_xmit_data.0* %16 to %struct.mlx5e_xdp_xmit_data*
  %120 = bitcast %struct.mlx5e_xdp_info.1* %17 to %struct.mlx5e_xdp_info*
  %121 = call i32 %117(%struct.mlx5e_xdpsq* %118, %struct.mlx5e_xdp_xmit_data* %119, %struct.mlx5e_xdp_info* %120, i32 0)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %105
  %128 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %11, align 8
  %129 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %16, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.0, %struct.mlx5e_xdp_xmit_data.0* %16, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DMA_TO_DEVICE, align 4
  %136 = call i32 @dma_unmap_single(i32 %130, i32 %132, i32 %134, i32 %135)
  %137 = load %struct.xdp_frame*, %struct.xdp_frame** %15, align 8
  %138 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %137)
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %127, %105
  br label %142

142:                                              ; preds = %141, %100
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %64

145:                                              ; preds = %64
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @XDP_XMIT_FLUSH, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %11, align 8
  %152 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %11, align 8
  %158 = call i32 @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq* %157)
  br label %159

159:                                              ; preds = %156, %150
  %160 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %11, align 8
  %161 = call i32 @mlx5e_xmit_xdp_doorbell(%struct.mlx5e_xdpsq* %160)
  br label %162

162:                                              ; preds = %159, %145
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %12, align 4
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %162, %51, %37, %27
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_xdp_tx_is_enabled(%struct.mlx5e_priv*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @mlx5e_xmit_xdp_doorbell(%struct.mlx5e_xdpsq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
