; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_getqcnstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_getqcnstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_qcn_stats = type { i32*, i32* }
%struct.mlx4_en_priv = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i64 }

@MLX4_DEV_CAP_FLAG2_QCN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLX4_CTRL_ALGO_802_1_QAU_REACTION_POINT = common dso_local global i32 0, align 4
@MLX4_CONGESTION_CONTROL_GET_STATISTICS = common dso_local global i32 0, align 4
@MLX4_CMD_CONGESTION_CTRL_OPCODE = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_qcn_stats*)* @mlx4_en_dcbnl_ieee_getqcnstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_dcbnl_ieee_getqcnstats(%struct.net_device* %0, %struct.ieee_qcn_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_qcn_stats*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_qcn_stats* %1, %struct.ieee_qcn_stats** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx4_en_priv* %14, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_cmd_mailbox* null, %struct.mlx4_cmd_mailbox** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QCN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %120

29:                                               ; preds = %2
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_8__* %34)
  store %struct.mlx4_cmd_mailbox* %35, %struct.mlx4_cmd_mailbox** %8, align 8
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %37 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %120

42:                                               ; preds = %29
  %43 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %44 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics*
  store %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics* %46, %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics** %7, align 8
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %109, %42
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %47
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = shl i32 1, %55
  %57 = shl i32 %56, 8
  %58 = or i32 %54, %57
  %59 = load i32, i32* @MLX4_CTRL_ALGO_802_1_QAU_REACTION_POINT, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %58, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %69 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @MLX4_CONGESTION_CONTROL_GET_STATISTICS, align 4
  %73 = load i32, i32* @MLX4_CMD_CONGESTION_CTRL_OPCODE, align 4
  %74 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %75 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %76 = call i32 @mlx4_cmd_box(%struct.TYPE_8__* %66, i32 %67, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %51
  %80 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %86 = call i32 @mlx4_free_cmd_mailbox(%struct.TYPE_8__* %84, %struct.mlx4_cmd_mailbox* %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %3, align 4
  br label %120

88:                                               ; preds = %51
  %89 = load %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics*, %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics** %7, align 8
  %90 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics, %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be64_to_cpu(i32 %91)
  %93 = load %struct.ieee_qcn_stats*, %struct.ieee_qcn_stats** %5, align 8
  %94 = getelementptr inbounds %struct.ieee_qcn_stats, %struct.ieee_qcn_stats* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics*, %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics** %7, align 8
  %100 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics, %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @be32_to_cpu(i32 %101)
  %103 = load %struct.ieee_qcn_stats*, %struct.ieee_qcn_stats** %5, align 8
  %104 = getelementptr inbounds %struct.ieee_qcn_stats, %struct.ieee_qcn_stats* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %88
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %47

112:                                              ; preds = %47
  %113 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %119 = call i32 @mlx4_free_cmd_mailbox(%struct.TYPE_8__* %117, %struct.mlx4_cmd_mailbox* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %112, %79, %39, %26
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.TYPE_8__*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
