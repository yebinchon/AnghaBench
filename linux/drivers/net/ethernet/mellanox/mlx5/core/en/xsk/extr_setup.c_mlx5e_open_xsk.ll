; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_open_xsk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_open_xsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_params = type { %struct.dim_cq_moder, %struct.dim_cq_moder }
%struct.dim_cq_moder = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_channel = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5e_channel_param = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5E_CHANNEL_STATE_XSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_xsk(%struct.mlx5e_priv* %0, %struct.mlx5e_params* %1, %struct.mlx5e_xsk_param* %2, %struct.xdp_umem* %3, %struct.mlx5e_channel* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5e_params*, align 8
  %9 = alloca %struct.mlx5e_xsk_param*, align 8
  %10 = alloca %struct.xdp_umem*, align 8
  %11 = alloca %struct.mlx5e_channel*, align 8
  %12 = alloca %struct.mlx5e_channel_param*, align 8
  %13 = alloca %struct.dim_cq_moder, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %8, align 8
  store %struct.mlx5e_xsk_param* %2, %struct.mlx5e_xsk_param** %9, align 8
  store %struct.xdp_umem* %3, %struct.xdp_umem** %10, align 8
  store %struct.mlx5e_channel* %4, %struct.mlx5e_channel** %11, align 8
  %15 = bitcast %struct.dim_cq_moder* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %17 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %9, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx5e_validate_xsk_param(%struct.mlx5e_params* %16, %struct.mlx5e_xsk_param* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %162

26:                                               ; preds = %5
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.mlx5e_channel_param* @kvzalloc(i32 24, i32 %27)
  store %struct.mlx5e_channel_param* %28, %struct.mlx5e_channel_param** %12, align 8
  %29 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %30 = icmp ne %struct.mlx5e_channel_param* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %162

34:                                               ; preds = %26
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %36 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %37 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %9, align 8
  %38 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %39 = call i32 @mlx5e_build_xsk_cparam(%struct.mlx5e_priv* %35, %struct.mlx5e_params* %36, %struct.mlx5e_xsk_param* %37, %struct.mlx5e_channel_param* %38)
  %40 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %41 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %41, i32 0, i32 1
  %43 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %44 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %43, i32 0, i32 5
  %45 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %46 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %42, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mlx5e_open_cq(%struct.mlx5e_channel* %40, i32 %49, i32* %44, i32* %47)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %158

55:                                               ; preds = %34
  %56 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %57 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %58 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %59 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %58, i32 0, i32 4
  %60 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %9, align 8
  %61 = load %struct.xdp_umem*, %struct.xdp_umem** %10, align 8
  %62 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %63 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %62, i32 0, i32 0
  %64 = call i32 @mlx5e_open_rq(%struct.mlx5e_channel* %56, %struct.mlx5e_params* %57, i32* %59, %struct.mlx5e_xsk_param* %60, %struct.xdp_umem* %61, %struct.TYPE_7__* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %153

69:                                               ; preds = %55
  %70 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %71 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %72 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %71, i32 0, i32 0
  %73 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %74 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %73, i32 0, i32 3
  %75 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %76 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %72, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mlx5e_open_cq(%struct.mlx5e_channel* %70, i32 %79, i32* %74, i32* %77)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  br label %149

85:                                               ; preds = %69
  %86 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %87 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %88 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %89 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %88, i32 0, i32 2
  %90 = load %struct.xdp_umem*, %struct.xdp_umem** %10, align 8
  %91 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %92 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %91, i32 0, i32 1
  %93 = call i32 @mlx5e_open_xdpsq(%struct.mlx5e_channel* %86, %struct.mlx5e_params* %87, i32* %89, %struct.xdp_umem* %90, %struct.TYPE_6__* %92, i32 1)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %144

98:                                               ; preds = %85
  %99 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %100 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %101 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %100, i32 0, i32 1
  %102 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %103 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %13, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mlx5e_open_cq(%struct.mlx5e_channel* %99, i32 %106, i32* %101, i32* %104)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %140

112:                                              ; preds = %98
  %113 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %114 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %115 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %116 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %115, i32 0, i32 0
  %117 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %118 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %117, i32 0, i32 2
  %119 = call i32 @mlx5e_open_icosq(%struct.mlx5e_channel* %113, %struct.mlx5e_params* %114, i32* %116, %struct.TYPE_8__* %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %135

124:                                              ; preds = %112
  %125 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %126 = call i32 @kvfree(%struct.mlx5e_channel_param* %125)
  %127 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %128 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %127, i32 0, i32 4
  %129 = call i32 @spin_lock_init(i32* %128)
  %130 = load i32, i32* @MLX5E_CHANNEL_STATE_XSK, align 4
  %131 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %132 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @set_bit(i32 %130, i32 %133)
  store i32 0, i32* %6, align 4
  br label %162

135:                                              ; preds = %123
  %136 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %137 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = call i32 @mlx5e_close_cq(i32* %138)
  br label %140

140:                                              ; preds = %135, %111
  %141 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %142 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %141, i32 0, i32 1
  %143 = call i32 @mlx5e_close_xdpsq(%struct.TYPE_6__* %142)
  br label %144

144:                                              ; preds = %140, %97
  %145 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %146 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = call i32 @mlx5e_close_cq(i32* %147)
  br label %149

149:                                              ; preds = %144, %84
  %150 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %151 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %150, i32 0, i32 0
  %152 = call i32 @mlx5e_close_rq(%struct.TYPE_7__* %151)
  br label %153

153:                                              ; preds = %149, %68
  %154 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %11, align 8
  %155 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = call i32 @mlx5e_close_cq(i32* %156)
  br label %158

158:                                              ; preds = %153, %54
  %159 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %12, align 8
  %160 = call i32 @kvfree(%struct.mlx5e_channel_param* %159)
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %124, %31, %23
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5e_validate_xsk_param(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*, i32) #2

declare dso_local %struct.mlx5e_channel_param* @kvzalloc(i32, i32) #2

declare dso_local i32 @mlx5e_build_xsk_cparam(%struct.mlx5e_priv*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*, %struct.mlx5e_channel_param*) #2

declare dso_local i32 @mlx5e_open_cq(%struct.mlx5e_channel*, i32, i32*, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @mlx5e_open_rq(%struct.mlx5e_channel*, %struct.mlx5e_params*, i32*, %struct.mlx5e_xsk_param*, %struct.xdp_umem*, %struct.TYPE_7__*) #2

declare dso_local i32 @mlx5e_open_xdpsq(%struct.mlx5e_channel*, %struct.mlx5e_params*, i32*, %struct.xdp_umem*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @mlx5e_open_icosq(%struct.mlx5e_channel*, %struct.mlx5e_params*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @kvfree(%struct.mlx5e_channel_param*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @set_bit(i32, i32) #2

declare dso_local i32 @mlx5e_close_cq(i32*) #2

declare dso_local i32 @mlx5e_close_xdpsq(%struct.TYPE_6__*) #2

declare dso_local i32 @mlx5e_close_rq(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
