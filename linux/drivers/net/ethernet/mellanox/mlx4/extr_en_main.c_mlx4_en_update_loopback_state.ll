; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_main.c_mlx4_en_update_loopback_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_main.c_mlx4_en_update_loopback_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@NETIF_F_LOOPBACK = common dso_local global i32 0, align 4
@MLX4_WQE_CTRL_FORCE_LOOPBACK = common dso_local global i32 0, align 4
@MLX4_EN_FLAG_RX_FILTER_NEEDED = common dso_local global i32 0, align 4
@MLX4_EN_FLAG_ENABLE_HW_LOOPBACK = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to change mcast loopback\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_update_loopback_state(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NETIF_F_LOOPBACK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @MLX4_WQE_CTRL_FORCE_LOOPBACK, align 4
  %18 = call i32 @cpu_to_be32(i32 %17)
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %31

23:                                               ; preds = %2
  %24 = load i32, i32* @MLX4_WQE_CTRL_FORCE_LOOPBACK, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @cpu_to_be32(i32 %25)
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %23, %16
  %32 = load i32, i32* @MLX4_EN_FLAG_RX_FILTER_NEEDED, align 4
  %33 = load i32, i32* @MLX4_EN_FLAG_ENABLE_HW_LOOPBACK, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = call i64 @mlx4_is_mfunc(%struct.TYPE_10__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %31
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @NETIF_F_LOOPBACK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @MLX4_EN_FLAG_RX_FILTER_NEEDED, align 4
  %59 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %52, %47, %31
  %64 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = call i64 @mlx4_is_mfunc(%struct.TYPE_10__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %63
  %72 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71, %63
  %77 = load i32, i32* @MLX4_EN_FLAG_ENABLE_HW_LOOPBACK, align 4
  %78 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %155

99:                                               ; preds = %82
  %100 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = icmp ne %struct.TYPE_7__* %103, null
  br i1 %104, label %105, label %155

105:                                              ; preds = %99
  %106 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %107 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %155

113:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @NETIF_F_LOOPBACK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %143, %113
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %129 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %130 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @mlx4_en_change_mcast_lb(%struct.mlx4_en_priv* %128, i32* %135, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %127
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %127
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %121

146:                                              ; preds = %121
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %151 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %150, i32 0, i32 2
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = call i32 @mlx4_warn(%struct.TYPE_9__* %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %154

154:                                              ; preds = %149, %146
  br label %155

155:                                              ; preds = %154, %105, %99, %82
  %156 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %157 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %156, i32 0, i32 2
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_change_mcast_lb(%struct.mlx4_en_priv*, i32*, i32) #1

declare dso_local i32 @mlx4_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
