; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mlx5e_params }
%struct.mlx5e_params = type { i32, i64, i64, i32 }
%struct.mlx5e_channels = type { %struct.mlx5e_params }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"MTU(%d) > %d is not allowed while XDP enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_change_mtu(%struct.net_device* %0, i32 %1, i32 (%struct.mlx5e_priv*)* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.mlx5e_priv*)*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5e_channels, align 8
  %9 = alloca %struct.mlx5e_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.mlx5e_priv*)* %2, i32 (%struct.mlx5e_priv*)** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.mlx5e_priv* %16, %struct.mlx5e_priv** %7, align 8
  %17 = bitcast %struct.mlx5e_channels* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  store i32 0, i32* %10, align 4
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.mlx5e_params* %23, %struct.mlx5e_params** %9, align 8
  %24 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %34, i32 0, i32 4
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %32, %3
  %39 = phi i1 [ false, %3 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %42 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %43 = bitcast %struct.mlx5e_params* %41 to i8*
  %44 = bitcast %struct.mlx5e_params* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 32, i1 false)
  %45 = load i32, i32* %5, align 4
  %46 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %47 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %49 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %54 = call i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params* %53, i32* null)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %60 = call i32 @mlx5e_xdp_max_mtu(%struct.mlx5e_params* %59, i32* null)
  %61 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %151

64:                                               ; preds = %52, %38
  %65 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %66 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %73 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %76 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mlx5e_xsk_validate_mtu(%struct.net_device* %71, %struct.TYPE_4__* %73, %struct.mlx5e_params* %74, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %151

83:                                               ; preds = %70, %64
  %84 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %85 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %119

89:                                               ; preds = %83
  %90 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %91 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %94 = call i32 @mlx5e_rx_mpwqe_is_linear_skb(i32 %92, %struct.mlx5e_params* %93, i32* null)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %96 = call i64 @mlx5e_mpwqe_log_pkts_per_wqe(%struct.mlx5e_params* %95, i32* null)
  store i64 %96, i64* %13, align 8
  %97 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %98 = call i64 @mlx5e_mpwqe_log_pkts_per_wqe(%struct.mlx5e_params* %97, i32* null)
  store i64 %98, i64* %14, align 8
  %99 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %100 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %89
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp ne i64 %111, %112
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ true, %107 ], [ %113, %110 ]
  br label %116

116:                                              ; preds = %114, %89
  %117 = phi i1 [ false, %89 ], [ %115, %114 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116, %83
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %125 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %6, align 8
  %127 = icmp ne i32 (%struct.mlx5e_priv*)* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %6, align 8
  %130 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %131 = call i32 %129(%struct.mlx5e_priv* %130)
  br label %132

132:                                              ; preds = %128, %122
  %133 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %134 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  br label %151

138:                                              ; preds = %119
  %139 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %140 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %6, align 8
  %141 = call i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv* %139, %struct.mlx5e_channels* %8, i32 (%struct.mlx5e_priv*)* %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %151

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %147 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %145, %144, %132, %80, %56
  %152 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %153 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i32, i32* %10, align 4
  ret i32 %155
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params*, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @mlx5e_xdp_max_mtu(%struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_xsk_validate_mtu(%struct.net_device*, %struct.TYPE_4__*, %struct.mlx5e_params*, i32) #1

declare dso_local i32 @mlx5e_rx_mpwqe_is_linear_skb(i32, %struct.mlx5e_params*, i32*) #1

declare dso_local i64 @mlx5e_mpwqe_log_pkts_per_wqe(%struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv*, %struct.mlx5e_channels*, i32 (%struct.mlx5e_priv*)*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
