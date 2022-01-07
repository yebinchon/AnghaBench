; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_ptys_reg = type { i32, i32, i32, i32, i32 }

@ADVERTISED = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Set Speed=%d adv={%*pbl} autoneg=%d duplex=%d\0A\00", align 1
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MLX4_PTYS_EN = common dso_local global i32 0, align 4
@MLX4_ACCESS_REG_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to QUERY mlx4_ACCESS_PTYS_REG status(%x)\0A\00", align 1
@MLX4_PTYS_AN_DISABLE_ADMIN = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MLX4_1000BASE_CX_SGMII = common dso_local global i32 0, align 4
@MLX4_1000BASE_KX = common dso_local global i32 0, align 4
@MLX4_PTYS_AN_DISABLE_CAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Not supported link mode(s) requested, check supported link modes.\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"mlx4_ACCESS_PTYS_REG SET: ptys_reg.eth_proto_admin = 0x%x\0A\00", align 1
@MLX4_ACCESS_REG_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"Failed to write mlx4_ACCESS_PTYS_REG eth_proto_admin(0x%x) status(0x%x)\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Port link mode changed, restarting port...\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed restarting port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @mlx4_en_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_ptys_reg, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx4_en_priv* %14, %struct.mlx4_en_priv** %6, align 8
  %15 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ADVERTISED, align 4
  %20 = call i32 @ethtool2ptys_link_modes(i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @DRV, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %29 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, ...) @en_dbg(i32 %25, %struct.mlx4_en_priv* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %32, i64 %36, i64 %40)
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %2
  %54 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DUPLEX_HALF, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %2
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %224

63:                                               ; preds = %53
  %64 = call i32 @memset(%struct.mlx4_ptys_reg* %7, i32 0, i32 20)
  %65 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @MLX4_PTYS_EN, align 4
  %70 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i32, i32* @MLX4_ACCESS_REG_QUERY, align 4
  %77 = call i32 @mlx4_ACCESS_PTYS_REG(%struct.TYPE_10__* %75, i32 %76, %struct.mlx4_ptys_reg* %7)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %63
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  store i32 0, i32* %3, align 4
  br label %224

84:                                               ; preds = %63
  %85 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MLX4_PTYS_AN_DISABLE_ADMIN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i64, i64* @AUTONEG_DISABLE, align 8
  br label %94

92:                                               ; preds = %84
  %93 = load i64, i64* @AUTONEG_ENABLE, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  store i64 %95, i64* %9, align 8
  %96 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AUTONEG_DISABLE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %129

102:                                              ; preds = %94
  %103 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %104 = load i32, i32* %12, align 4
  %105 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @speed_set_ptys_admin(%struct.mlx4_en_priv* %103, i32 %104, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @be32_to_cpu(i32 %108)
  %110 = load i32, i32* @MLX4_1000BASE_CX_SGMII, align 4
  %111 = call i32 @MLX4_PROT_MASK(i32 %110)
  %112 = load i32, i32* @MLX4_1000BASE_KX, align 4
  %113 = call i32 @MLX4_PROT_MASK(i32 %112)
  %114 = or i32 %111, %113
  %115 = and i32 %109, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %102
  %118 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MLX4_PTYS_AN_DISABLE_CAP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i32, i32* @MLX4_PTYS_AN_DISABLE_ADMIN, align 4
  %125 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %117, %102
  br label %137

129:                                              ; preds = %94
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @cpu_to_be32(i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* @MLX4_PTYS_AN_DISABLE_ADMIN, align 4
  %133 = xor i32 %132, -1
  %134 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %133
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %129, %128
  %138 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %137
  %145 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %146 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %145, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %224

149:                                              ; preds = %137
  %150 = load i32, i32* %8, align 4
  %151 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @MLX4_PTYS_AN_DISABLE_CAP, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %162 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %9, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %224

168:                                              ; preds = %160, %154, %149
  %169 = load i32, i32* @DRV, align 4
  %170 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @be32_to_cpu(i32 %171)
  %173 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i32, ...) @en_dbg(i32 %169, %struct.mlx4_en_priv* %170, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %8, align 4
  %175 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 1
  store i32 %174, i32* %175, align 4
  %176 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %177 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = load i32, i32* @MLX4_ACCESS_REG_WRITE, align 4
  %182 = call i32 @mlx4_ACCESS_PTYS_REG(%struct.TYPE_10__* %180, i32 %181, %struct.mlx4_ptys_reg* %7)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %168
  %186 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %187 = getelementptr inbounds %struct.mlx4_ptys_reg, %struct.mlx4_ptys_reg* %7, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @be32_to_cpu(i32 %188)
  %190 = load i32, i32* %10, align 4
  %191 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %186, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i32 %189, i32 %190)
  %192 = load i32, i32* %10, align 4
  store i32 %192, i32* %3, align 4
  br label %224

193:                                              ; preds = %168
  %194 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %195 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %194, i32 0, i32 0
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = call i32 @mutex_lock(i32* %197)
  %199 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %200 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %193
  %204 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %205 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %204, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %206 = load %struct.net_device*, %struct.net_device** %4, align 8
  %207 = call i32 @mlx4_en_stop_port(%struct.net_device* %206, i32 1)
  %208 = load %struct.net_device*, %struct.net_device** %4, align 8
  %209 = call i64 @mlx4_en_start_port(%struct.net_device* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %203
  %212 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %213 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %214 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @en_err(%struct.mlx4_en_priv* %212, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %211, %203
  br label %218

218:                                              ; preds = %217, %193
  %219 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %220 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %219, i32 0, i32 0
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = call i32 @mutex_unlock(i32* %222)
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %218, %185, %167, %144, %80, %60
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool2ptys_link_modes(i32, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.mlx4_ptys_reg*, i32, i32) #1

declare dso_local i32 @mlx4_ACCESS_PTYS_REG(%struct.TYPE_10__*, i32, %struct.mlx4_ptys_reg*) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @speed_set_ptys_admin(%struct.mlx4_en_priv*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @MLX4_PROT_MASK(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*, i32) #1

declare dso_local i64 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
