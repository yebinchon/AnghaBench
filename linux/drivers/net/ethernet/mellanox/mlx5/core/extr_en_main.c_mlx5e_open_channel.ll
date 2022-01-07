; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.net_device*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_params = type { i32, i32 }
%struct.mlx5e_channel_param = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_channel = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.net_device*, i32, i32*, %struct.TYPE_10__*, %struct.mlx5e_priv* }
%struct.mlx5e_xsk_param = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlx5e_napi_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32, %struct.mlx5e_params*, %struct.mlx5e_channel_param*, %struct.xdp_umem*, %struct.mlx5e_channel**)* @mlx5e_open_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_channel(%struct.mlx5e_priv* %0, i32 %1, %struct.mlx5e_params* %2, %struct.mlx5e_channel_param* %3, %struct.xdp_umem* %4, %struct.mlx5e_channel** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5e_params*, align 8
  %11 = alloca %struct.mlx5e_channel_param*, align 8
  %12 = alloca %struct.xdp_umem*, align 8
  %13 = alloca %struct.mlx5e_channel**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.mlx5e_xsk_param, align 4
  %17 = alloca %struct.mlx5e_channel*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx5e_params* %2, %struct.mlx5e_params** %10, align 8
  store %struct.mlx5e_channel_param* %3, %struct.mlx5e_channel_param** %11, align 8
  store %struct.xdp_umem* %4, %struct.xdp_umem** %12, align 8
  store %struct.mlx5e_channel** %5, %struct.mlx5e_channel*** %13, align 8
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mlx5_comp_irq_get_affinity_mask(%struct.TYPE_10__* %23, i32 %24)
  %26 = call i32 @cpumask_first(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 2
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %15, align 8
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @mlx5_vector2eqn(%struct.TYPE_10__* %32, i32 %33, i32* %20, i32* %18)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load i32, i32* %19, align 4
  store i32 %38, i32* %7, align 4
  br label %176

39:                                               ; preds = %6
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @cpu_to_node(i32 %41)
  %43 = call %struct.mlx5e_channel* @kvzalloc_node(i32 80, i32 %40, i32 %42)
  store %struct.mlx5e_channel* %43, %struct.mlx5e_channel** %17, align 8
  %44 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %45 = icmp ne %struct.mlx5e_channel* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %176

49:                                               ; preds = %39
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %51 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %52 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %51, i32 0, i32 13
  store %struct.mlx5e_priv* %50, %struct.mlx5e_priv** %52, align 8
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %57 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %56, i32 0, i32 12
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %57, align 8
  %58 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %59 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %58, i32 0, i32 3
  %60 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %61 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %60, i32 0, i32 11
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %64 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %67 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %69 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %74 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 8
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %76 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %75, i32 0, i32 2
  %77 = load %struct.net_device*, %struct.net_device** %76, align 8
  %78 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %79 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %78, i32 0, i32 9
  store %struct.net_device* %77, %struct.net_device** %79, align 8
  %80 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %81 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cpu_to_be32(i32 %86)
  %88 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %89 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %91 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %94 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 8
  %95 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %96 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %103 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %105 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %112 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %111, i32 0, i32 6
  store i32* %110, i32** %112, align 8
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @irq_to_desc(i32 %113)
  %115 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %116 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %118 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @mlx5e_enumerate_lag_port(%struct.TYPE_10__* %119, i32 %120)
  %122 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %123 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %125 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %126 = call i32 @mlx5e_alloc_xps_cpumask(%struct.mlx5e_channel* %124, %struct.mlx5e_params* %125)
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %49
  br label %172

130:                                              ; preds = %49
  %131 = load %struct.net_device*, %struct.net_device** %15, align 8
  %132 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %133 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %132, i32 0, i32 3
  %134 = load i32, i32* @mlx5e_napi_poll, align 4
  %135 = call i32 @netif_napi_add(%struct.net_device* %131, i32* %133, i32 %134, i32 64)
  %136 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %137 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %138 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %11, align 8
  %139 = call i32 @mlx5e_open_queues(%struct.mlx5e_channel* %136, %struct.mlx5e_params* %137, %struct.mlx5e_channel_param* %138)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %130
  br label %166

144:                                              ; preds = %130
  %145 = load %struct.xdp_umem*, %struct.xdp_umem** %12, align 8
  %146 = icmp ne %struct.xdp_umem* %145, null
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load %struct.xdp_umem*, %struct.xdp_umem** %12, align 8
  %149 = call i32 @mlx5e_build_xsk_param(%struct.xdp_umem* %148, %struct.mlx5e_xsk_param* %16)
  %150 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %151 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %152 = load %struct.xdp_umem*, %struct.xdp_umem** %12, align 8
  %153 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %154 = call i32 @mlx5e_open_xsk(%struct.mlx5e_priv* %150, %struct.mlx5e_params* %151, %struct.mlx5e_xsk_param* %16, %struct.xdp_umem* %152, %struct.mlx5e_channel* %153)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %163

159:                                              ; preds = %147
  br label %160

160:                                              ; preds = %159, %144
  %161 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %162 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %13, align 8
  store %struct.mlx5e_channel* %161, %struct.mlx5e_channel** %162, align 8
  store i32 0, i32* %7, align 4
  br label %176

163:                                              ; preds = %158
  %164 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %165 = call i32 @mlx5e_close_queues(%struct.mlx5e_channel* %164)
  br label %166

166:                                              ; preds = %163, %143
  %167 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %168 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %167, i32 0, i32 3
  %169 = call i32 @netif_napi_del(i32* %168)
  %170 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %171 = call i32 @mlx5e_free_xps_cpumask(%struct.mlx5e_channel* %170)
  br label %172

172:                                              ; preds = %166, %129
  %173 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %17, align 8
  %174 = call i32 @kvfree(%struct.mlx5e_channel* %173)
  %175 = load i32, i32* %19, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %172, %160, %46, %37
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @mlx5_comp_irq_get_affinity_mask(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mlx5_vector2eqn(%struct.TYPE_10__*, i32, i32*, i32*) #1

declare dso_local %struct.mlx5e_channel* @kvzalloc_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @irq_to_desc(i32) #1

declare dso_local i32 @mlx5e_enumerate_lag_port(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mlx5e_alloc_xps_cpumask(%struct.mlx5e_channel*, %struct.mlx5e_params*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @mlx5e_open_queues(%struct.mlx5e_channel*, %struct.mlx5e_params*, %struct.mlx5e_channel_param*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_build_xsk_param(%struct.xdp_umem*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_open_xsk(%struct.mlx5e_priv*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*, %struct.xdp_umem*, %struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_close_queues(%struct.mlx5e_channel*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @mlx5e_free_xps_cpumask(%struct.mlx5e_channel*) #1

declare dso_local i32 @kvfree(%struct.mlx5e_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
