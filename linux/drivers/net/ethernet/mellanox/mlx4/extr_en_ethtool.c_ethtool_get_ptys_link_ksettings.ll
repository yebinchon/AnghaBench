; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_ethtool_get_ptys_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_ethtool_get_ptys_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_9__, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_ptys_reg = type { i32, i32, i32, i32, i32, i32 }

@MLX4_PTYS_EN = common dso_local global i32 0, align 4
@MLX4_ACCESS_REG_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to run mlx4_ACCESS_PTYS_REG status(%x)\00", align 1
@DRV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ptys_reg.proto_mask       %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ptys_reg.eth_proto_cap    %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"ptys_reg.eth_proto_admin  %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ptys_reg.eth_proto_oper   %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"ptys_reg.eth_proto_lp_adv %x\0A\00", align 1
@supported = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@SUPPORTED = common dso_local global i32 0, align 4
@ADVERTISED = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@MLX4_EN_PORT_ANC = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@lp_advertising = common dso_local global i32 0, align 4
@ETH_TP_MDI_INVALID = common dso_local global i32 0, align 4
@ETH_TP_MDI_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ethtool_get_ptys_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethtool_get_ptys_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_ptys_reg, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %6, align 8
  %12 = call i32 @memset(%struct.mlx4_ptys_reg* %7, i32 0, i32 24)
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @MLX4_PTYS_EN, align 4
  %18 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MLX4_ACCESS_REG_QUERY, align 4
  %25 = call i32 @mlx4_ACCESS_PTYS_REG(i32 %23, i32 %24, %struct.mlx4_ptys_reg* %7)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @en_warn(%struct.mlx4_en_priv* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %206

33:                                               ; preds = %2
  %34 = load i32, i32* @DRV, align 4
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @en_dbg(i32 %34, %struct.mlx4_en_priv* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @DRV, align 4
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = call i32 @en_dbg(i32 %39, %struct.mlx4_en_priv* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @DRV, align 4
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be32_to_cpu(i32 %48)
  %50 = call i32 @en_dbg(i32 %45, %struct.mlx4_en_priv* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @DRV, align 4
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %53 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = call i32 @en_dbg(i32 %51, %struct.mlx4_en_priv* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @DRV, align 4
  %58 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = call i32 @en_dbg(i32 %57, %struct.mlx4_en_priv* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %64 = load i32, i32* @supported, align 4
  %65 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %63, i32 %64)
  %66 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %67 = load i32, i32* @advertising, align 4
  %68 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %66, i32 %67)
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ptys2ethtool_update_supported_port(i32 %72, %struct.mlx4_ptys_reg* %7)
  %74 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SUPPORTED, align 4
  %83 = call i32 @ptys2ethtool_update_link_modes(i32 %80, i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be32_to_cpu(i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @ADVERTISED, align 4
  %93 = call i32 @ptys2ethtool_update_link_modes(i32 %90, i32 %91, i32 %92)
  %94 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %95 = load i32, i32* @supported, align 4
  %96 = load i32, i32* @Pause, align 4
  %97 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %94, i32 %95, i32 %96)
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %99 = load i32, i32* @supported, align 4
  %100 = load i32, i32* @Asym_Pause, align 4
  %101 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %98, i32 %99, i32 %100)
  %102 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %103 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %33
  %109 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %110 = load i32, i32* @advertising, align 4
  %111 = load i32, i32* @Pause, align 4
  %112 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %33
  %114 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %115 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %118, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %113
  %127 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %128 = load i32, i32* @advertising, align 4
  %129 = load i32, i32* @Asym_Pause, align 4
  %130 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %113
  %132 = call i32 @ptys_get_active_port(%struct.mlx4_ptys_reg* %7)
  %133 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %134 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  store i32 %132, i32* %135, align 4
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = call i64 @mlx4_en_autoneg_get(%struct.net_device* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %131
  %140 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %141 = load i32, i32* @supported, align 4
  %142 = load i32, i32* @Autoneg, align 4
  %143 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %140, i32 %141, i32 %142)
  %144 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %145 = load i32, i32* @advertising, align 4
  %146 = load i32, i32* @Autoneg, align 4
  %147 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %139, %131
  %149 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %150 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @MLX4_EN_PORT_ANC, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %160

158:                                              ; preds = %148
  %159 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %163 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 4
  store i32 %161, i32* %164, align 8
  %165 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @be32_to_cpu(i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %169 = load i32, i32* @lp_advertising, align 4
  %170 = call i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings* %168, i32 %169)
  %171 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %172 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @ADVERTISED, align 4
  %177 = call i32 @ptys2ethtool_update_link_modes(i32 %174, i32 %175, i32 %176)
  %178 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %179 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @MLX4_EN_PORT_ANC, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %160
  %186 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %187 = load i32, i32* @lp_advertising, align 4
  %188 = load i32, i32* @Autoneg, align 4
  %189 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %160
  %191 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %192 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 3
  store i64 0, i64* %193, align 8
  %194 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %195 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  store i64 0, i64* %196, align 8
  %197 = load i32, i32* @ETH_TP_MDI_INVALID, align 4
  %198 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %199 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  %201 = load i32, i32* @ETH_TP_MDI_AUTO, align 4
  %202 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %203 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %190, %28
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.mlx4_ptys_reg*, i32, i32) #1

declare dso_local i32 @mlx4_ACCESS_PTYS_REG(i32, i32, %struct.mlx4_ptys_reg*) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ethtool_link_ksettings_zero_link_mode(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @ptys2ethtool_update_supported_port(i32, %struct.mlx4_ptys_reg*) #1

declare dso_local i32 @ptys2ethtool_update_link_modes(i32, i32, i32) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i32 @ptys_get_active_port(%struct.mlx4_ptys_reg*) #1

declare dso_local i64 @mlx4_en_autoneg_get(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
