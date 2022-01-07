; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_tx.c_mlx5e_xsk_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_tx.c_mlx5e_xsk_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { i32 (%struct.mlx5e_xdpsq*)*, %struct.TYPE_2__, i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)*, i32, %struct.xdp_umem* }
%struct.TYPE_2__ = type { i64 }
%struct.mlx5e_xdp_xmit_data = type opaque
%struct.mlx5e_xdp_info = type opaque
%struct.xdp_umem = type { i32 }
%struct.mlx5e_xdp_info.0 = type { i32 }
%struct.mlx5e_xdp_xmit_data.1 = type { i32, i32, i32 }
%struct.xdp_desc = type { i32, i32 }

@MLX5E_XDP_XMIT_MODE_XSK = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xsk_tx(%struct.mlx5e_xdpsq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_xdpsq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_umem*, align 8
  %6 = alloca %struct.mlx5e_xdp_info.0, align 4
  %7 = alloca %struct.mlx5e_xdp_xmit_data.1, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xdp_desc, align 4
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %12, i32 0, i32 4
  %14 = load %struct.xdp_umem*, %struct.xdp_umem** %13, align 8
  store %struct.xdp_umem* %14, %struct.xdp_umem** %5, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @MLX5E_XDP_XMIT_MODE_XSK, align 4
  %16 = getelementptr inbounds %struct.mlx5e_xdp_info.0, %struct.mlx5e_xdp_info.0* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %86, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %89

20:                                               ; preds = %17
  %21 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %21, i32 0, i32 0
  %23 = load i32 (%struct.mlx5e_xdpsq*)*, i32 (%struct.mlx5e_xdpsq*)** %22, align 8
  %24 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %25 = call i32 %23(%struct.mlx5e_xdpsq* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %89

32:                                               ; preds = %20
  %33 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %34 = call i32 @xsk_umem_consume_tx(%struct.xdp_umem* %33, %struct.xdp_desc* %11)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %89

37:                                               ; preds = %32
  %38 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %39 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %11, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @xdp_umem_get_dma(%struct.xdp_umem* %38, i32 %40)
  %42 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.1, %struct.mlx5e_xdp_xmit_data.1* %7, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %44 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %11, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xdp_umem_get_data(%struct.xdp_umem* %43, i32 %45)
  %47 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.1, %struct.mlx5e_xdp_xmit_data.1* %7, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %11, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.1, %struct.mlx5e_xdp_xmit_data.1* %7, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %52 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.1, %struct.mlx5e_xdp_xmit_data.1* %7, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.mlx5e_xdp_xmit_data.1, %struct.mlx5e_xdp_xmit_data.1* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %59 = call i32 @dma_sync_single_for_device(i32 %53, i32 %55, i32 %57, i32 %58)
  %60 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %61 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %60, i32 0, i32 2
  %62 = load i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)*, i32 (%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_xmit_data*, %struct.mlx5e_xdp_info*, i32)** %61, align 8
  %63 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %64 = bitcast %struct.mlx5e_xdp_xmit_data.1* %7 to %struct.mlx5e_xdp_xmit_data*
  %65 = bitcast %struct.mlx5e_xdp_info.0* %6 to %struct.mlx5e_xdp_info*
  %66 = load i32, i32* %10, align 4
  %67 = call i32 %62(%struct.mlx5e_xdpsq* %63, %struct.mlx5e_xdp_xmit_data* %64, %struct.mlx5e_xdp_info* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %37
  %74 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %75 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %81 = call i32 @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq* %80)
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %84 = call i32 @mlx5e_xsk_tx_post_err(%struct.mlx5e_xdpsq* %83, %struct.mlx5e_xdp_info.0* %6)
  br label %85

85:                                               ; preds = %82, %37
  store i32 1, i32* %9, align 4
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %4, align 4
  br label %17

89:                                               ; preds = %36, %31, %17
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %94 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %100 = call i32 @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq* %99)
  br label %101

101:                                              ; preds = %98, %92
  %102 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %103 = call i32 @mlx5e_xmit_xdp_doorbell(%struct.mlx5e_xdpsq* %102)
  %104 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %105 = call i32 @xsk_umem_consume_tx_done(%struct.xdp_umem* %104)
  br label %106

106:                                              ; preds = %101, %89
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  ret i32 %115
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xsk_umem_consume_tx(%struct.xdp_umem*, %struct.xdp_desc*) #1

declare dso_local i32 @xdp_umem_get_dma(%struct.xdp_umem*, i32) #1

declare dso_local i32 @xdp_umem_get_data(%struct.xdp_umem*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5e_xdp_mpwqe_complete(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @mlx5e_xsk_tx_post_err(%struct.mlx5e_xdpsq*, %struct.mlx5e_xdp_info.0*) #1

declare dso_local i32 @mlx5e_xmit_xdp_doorbell(%struct.mlx5e_xdpsq*) #1

declare dso_local i32 @xsk_umem_consume_tx_done(%struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
