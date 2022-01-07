; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_start_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_start_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, i32, i64, i32, i32*, i32, %struct.TYPE_20__**, %struct.mlx4_en_cq**, %struct.mlx4_en_cq***, %struct.mlx4_en_tx_ring***, %struct.mlx4_en_dev*, i32, i32, %struct.TYPE_16__, i32, %struct.TYPE_15__*, i64, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.mlx4_en_cq = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i64, i32*, i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_18__*, i32, i64* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.mlx4_cqe = type { i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"start port called while port already up\0A\00", align 1
@MAX_NUM_OF_FS_RULES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Rx buf size:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to activate RX rings\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed preparing IRQ affinity hint\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed activating Rx CQ\0A\00", align 1
@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed setting cq moderation parameters\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Getting qp number for port %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed getting eth qp\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed configuring rss steering\0A\00", align 1
@MLX4_EN_NUM_TX_TYPES = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Failed allocating Tx CQ\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Resetting index of collapsed CQ:%d to -1\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Failed allocating Tx ring\0A\00", align 1
@TX_XDP = common dso_local global i32 0, align 4
@STAMP_STRIDE = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [71 x i8] c"Failed setting port general configurations for port %d, with error %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"Failed to pass user MTU(%d) to Firmware for port %d, with error %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Failed setting default qp numbers\0A\00", align 1
@MLX4_TUNNEL_OFFLOAD_MODE_VXLAN = common dso_local global i64 0, align 8
@VXLAN_STEER_BY_OUTER_MAC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [53 x i8] c"Failed setting port L2 tunnel configuration, err %d\0A\00", align 1
@HW = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"Initializing port\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Failed Initializing port\0A\00", align 1
@MLX4_STEERING_MODE_A0 = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"Failed setting steering rules\0A\00", align 1
@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"Failed Attaching Broadcast\0A\00", align 1
@MLX4_EN_FLAG_PROMISC = common dso_local global i32 0, align 4
@MLX4_EN_FLAG_MC_PROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_start_port(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  %7 = alloca %struct.mlx4_en_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  %14 = alloca %struct.mlx4_cqe*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.mlx4_en_priv* %17, %struct.mlx4_en_priv** %4, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 11
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %19, align 8
  store %struct.mlx4_en_dev* %20, %struct.mlx4_en_dev** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = bitcast [16 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 64, i1 false)
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @DRV, align 4
  %28 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %29 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %27, %struct.mlx4_en_priv* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %708

30:                                               ; preds = %1
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 24
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %34, i32 0, i32 23
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 22
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 21
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* @MAX_NUM_OF_FS_RULES, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32* %43, i32 0, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %52, i32 0, i32 20
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @min(i32 %51, i32 %54)
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @mlx4_en_calc_rx_buf(%struct.net_device* %58)
  %60 = load i32, i32* @DRV, align 4
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %62 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %62, i32 0, i32 17
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %60, %struct.mlx4_en_priv* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %67 = call i32 @mlx4_en_activate_rx_rings(%struct.mlx4_en_priv* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %30
  %71 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %72 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %708

74:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %170, %74
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %173

81:                                               ; preds = %75
  %82 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %82, i32 0, i32 8
  %84 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %84, i64 %86
  %88 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %87, align 8
  store %struct.mlx4_en_cq* %88, %struct.mlx4_en_cq** %6, align 8
  %89 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @mlx4_en_init_affinity_hint(%struct.mlx4_en_priv* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %96 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %668

97:                                               ; preds = %81
  %98 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %99 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv* %98, %struct.mlx4_en_cq* %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %106 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @mlx4_en_free_affinity_hint(%struct.mlx4_en_priv* %107, i32 %108)
  br label %668

110:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %134, %110
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %111
  store %struct.mlx4_cqe* null, %struct.mlx4_cqe** %14, align 8
  %118 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %118, i32 0, i32 3
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %123 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %122, i32 0, i32 19
  %124 = load i32, i32* %123, align 4
  %125 = call %struct.mlx4_cqe* @mlx4_en_get_cqe(%struct.TYPE_19__* %120, i32 %121, i32 %124)
  %126 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %127 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %125, i64 %129
  store %struct.mlx4_cqe* %130, %struct.mlx4_cqe** %14, align 8
  %131 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %132 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %14, align 8
  %133 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %117
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %111

137:                                              ; preds = %111
  %138 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %139 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %140 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %138, %struct.mlx4_en_cq* %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %145 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %144, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %147 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %148 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %146, %struct.mlx4_en_cq* %147)
  %149 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @mlx4_en_free_affinity_hint(%struct.mlx4_en_priv* %149, i32 %150)
  br label %668

152:                                              ; preds = %137
  %153 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %154 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %155 = call i32 @mlx4_en_arm_cq(%struct.mlx4_en_priv* %153, %struct.mlx4_en_cq* %154)
  %156 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %157 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %161 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %160, i32 0, i32 7
  %162 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %162, i64 %164
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  store i32 %159, i32* %167, align 4
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %152
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %75

173:                                              ; preds = %75
  %174 = load i32, i32* @DRV, align 4
  %175 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %176 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %177 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %174, %struct.mlx4_en_priv* %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %178)
  %180 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %181 = call i32 @mlx4_en_get_qp(%struct.mlx4_en_priv* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %173
  %185 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %186 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %668

187:                                              ; preds = %173
  %188 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %189 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %188, i32 0, i32 2
  %190 = load i64*, i64** %189, align 8
  %191 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %192 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i64, i64* %190, i64 %193
  store i64 0, i64* %194, align 8
  %195 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %196 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %195, i32 0, i32 0
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %199 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @mlx4_get_default_counter_index(%struct.TYPE_18__* %197, i64 %200)
  %202 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %203 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %202, i32 0, i32 18
  store i32 %201, i32* %203, align 8
  %204 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %205 = call i32 @mlx4_en_config_rss_steer(%struct.mlx4_en_priv* %204)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %187
  %209 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %210 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %209, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %665

211:                                              ; preds = %187
  %212 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %213 = call i32 @mlx4_en_create_drop_qp(%struct.mlx4_en_priv* %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  br label %662

217:                                              ; preds = %211
  store i32 0, i32* %11, align 4
  br label %218

218:                                              ; preds = %370, %217
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %373

222:                                              ; preds = %218
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @TX, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %228 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  br label %238

230:                                              ; preds = %222
  %231 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %232 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %231, i32 0, i32 5
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  br label %238

238:                                              ; preds = %230, %226
  %239 = phi i32 [ %229, %226 ], [ %237, %230 ]
  store i32 %239, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %240

240:                                              ; preds = %366, %238
  %241 = load i32, i32* %10, align 4
  %242 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %243 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %241, %248
  br i1 %249, label %250, label %369

250:                                              ; preds = %240
  %251 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %252 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %251, i32 0, i32 9
  %253 = load %struct.mlx4_en_cq***, %struct.mlx4_en_cq**** %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %253, i64 %255
  %257 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %257, i64 %259
  %261 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %260, align 8
  store %struct.mlx4_en_cq* %261, %struct.mlx4_en_cq** %6, align 8
  %262 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %263 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %264 = load i32, i32* %10, align 4
  %265 = call i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv* %262, %struct.mlx4_en_cq* %263, i32 %264)
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %9, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %250
  %269 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %270 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %269, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %596

271:                                              ; preds = %250
  %272 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %273 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %274 = call i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv* %272, %struct.mlx4_en_cq* %273)
  store i32 %274, i32* %9, align 4
  %275 = load i32, i32* %9, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %271
  %278 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %279 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %278, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %280 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %281 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %282 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %280, %struct.mlx4_en_cq* %281)
  br label %596

283:                                              ; preds = %271
  %284 = load i32, i32* @DRV, align 4
  %285 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %286 = load i32, i32* %10, align 4
  %287 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %284, %struct.mlx4_en_priv* %285, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %286)
  %288 = call i32 @cpu_to_be16(i32 65535)
  %289 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %290 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %289, i32 0, i32 3
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 0
  store i32 %288, i32* %292, align 4
  %293 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %294 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %293, i32 0, i32 10
  %295 = load %struct.mlx4_en_tx_ring***, %struct.mlx4_en_tx_ring**** %294, align 8
  %296 = load i32, i32* %11, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %295, i64 %297
  %299 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %299, i64 %301
  %303 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %302, align 8
  store %struct.mlx4_en_tx_ring* %303, %struct.mlx4_en_tx_ring** %7, align 8
  %304 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %305 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %306 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %307 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %15, align 4
  %312 = sdiv i32 %310, %311
  %313 = call i32 @mlx4_en_activate_tx_ring(%struct.mlx4_en_priv* %304, %struct.mlx4_en_tx_ring* %305, i32 %309, i32 %312)
  store i32 %313, i32* %9, align 4
  %314 = load i32, i32* %9, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %283
  %317 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %318 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %317, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %319 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %320 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %321 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %319, %struct.mlx4_en_cq* %320)
  br label %596

322:                                              ; preds = %283
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* @TX_XDP, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %337

326:                                              ; preds = %322
  %327 = load %struct.net_device*, %struct.net_device** %3, align 8
  %328 = load i32, i32* %10, align 4
  %329 = call i32 @netdev_get_tx_queue(%struct.net_device* %327, i32 %328)
  %330 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %331 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %330, i32 0, i32 3
  store i32 %329, i32* %331, align 8
  %332 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %333 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %332, i32 0, i32 2
  store i32* null, i32** %333, align 8
  %334 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %335 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %336 = call i32 @mlx4_en_arm_cq(%struct.mlx4_en_priv* %334, %struct.mlx4_en_cq* %335)
  br label %344

337:                                              ; preds = %322
  %338 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %339 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %340 = call i32 @mlx4_en_init_tx_xdp_ring_descs(%struct.mlx4_en_priv* %338, %struct.mlx4_en_tx_ring* %339)
  %341 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %342 = load i32, i32* %10, align 4
  %343 = call i32 @mlx4_en_init_recycle_ring(%struct.mlx4_en_priv* %341, i32 %342)
  br label %344

344:                                              ; preds = %337, %326
  store i32 0, i32* %12, align 4
  br label %345

345:                                              ; preds = %359, %344
  %346 = load i32, i32* %12, align 4
  %347 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %348 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp slt i32 %346, %349
  br i1 %350, label %351, label %365

351:                                              ; preds = %345
  %352 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %353 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = load i32, i32* %12, align 4
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %354, %356
  %358 = inttoptr i64 %357 to i32*
  store i32 -1, i32* %358, align 4
  br label %359

359:                                              ; preds = %351
  %360 = load i64, i64* @STAMP_STRIDE, align 8
  %361 = load i32, i32* %12, align 4
  %362 = sext i32 %361 to i64
  %363 = add nsw i64 %362, %360
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %12, align 4
  br label %345

365:                                              ; preds = %345
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %10, align 4
  br label %240

369:                                              ; preds = %240
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %11, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %11, align 4
  br label %218

373:                                              ; preds = %218
  %374 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %375 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %374, i32 0, i32 0
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %375, align 8
  %377 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %378 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %381 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %380, i32 0, i32 17
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @ETH_FCS_LEN, align 8
  %384 = add nsw i64 %382, %383
  %385 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %386 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %385, i32 0, i32 16
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %391 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %390, i32 0, i32 16
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %396 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %395, i32 0, i32 16
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %401 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %400, i32 0, i32 16
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @mlx4_SET_PORT_general(%struct.TYPE_18__* %376, i64 %379, i64 %384, i32 %389, i32 %394, i32 %399, i32 %404)
  store i32 %405, i32* %9, align 4
  %406 = load i32, i32* %9, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %373
  %409 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %410 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %411 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %410, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = load i32, i32* %9, align 4
  %414 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %409, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0), i64 %412, i32 %413)
  br label %596

415:                                              ; preds = %373
  %416 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %417 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %416, i32 0, i32 0
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %417, align 8
  %419 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %420 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.net_device*, %struct.net_device** %3, align 8
  %423 = getelementptr inbounds %struct.net_device, %struct.net_device* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @mlx4_SET_PORT_user_mtu(%struct.TYPE_18__* %418, i64 %421, i32 %424)
  store i32 %425, i32* %9, align 4
  %426 = load i32, i32* %9, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %438

428:                                              ; preds = %415
  %429 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %430 = load %struct.net_device*, %struct.net_device** %3, align 8
  %431 = getelementptr inbounds %struct.net_device, %struct.net_device* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %434 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %433, i32 0, i32 3
  %435 = load i64, i64* %434, align 8
  %436 = load i32, i32* %9, align 4
  %437 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %429, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i32 %432, i64 %435, i32 %436)
  br label %596

438:                                              ; preds = %415
  %439 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %440 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %439, i32 0, i32 0
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %440, align 8
  %442 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %443 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %442, i32 0, i32 3
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %446 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %445, i32 0, i32 15
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_18__* %441, i64 %444, i32 %447, i32 0)
  store i32 %448, i32* %9, align 4
  %449 = load i32, i32* %9, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %438
  %452 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %453 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %452, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %596

454:                                              ; preds = %438
  %455 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %456 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %455, i32 0, i32 0
  %457 = load %struct.TYPE_18__*, %struct.TYPE_18__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = load i64, i64* @MLX4_TUNNEL_OFFLOAD_MODE_VXLAN, align 8
  %462 = icmp eq i64 %460, %461
  br i1 %462, label %463, label %479

463:                                              ; preds = %454
  %464 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %465 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %464, i32 0, i32 0
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %465, align 8
  %467 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %468 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %467, i32 0, i32 3
  %469 = load i64, i64* %468, align 8
  %470 = load i32, i32* @VXLAN_STEER_BY_OUTER_MAC, align 4
  %471 = call i32 @mlx4_SET_PORT_VXLAN(%struct.TYPE_18__* %466, i64 %469, i32 %470, i32 1)
  store i32 %471, i32* %9, align 4
  %472 = load i32, i32* %9, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %463
  %475 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %476 = load i32, i32* %9, align 4
  %477 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %475, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i32 %476)
  br label %596

478:                                              ; preds = %463
  br label %479

479:                                              ; preds = %478, %454
  %480 = load i32, i32* @HW, align 4
  %481 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %482 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %480, %struct.mlx4_en_priv* %481, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %483 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %484 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %483, i32 0, i32 0
  %485 = load %struct.TYPE_18__*, %struct.TYPE_18__** %484, align 8
  %486 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %487 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %486, i32 0, i32 3
  %488 = load i64, i64* %487, align 8
  %489 = call i32 @mlx4_INIT_PORT(%struct.TYPE_18__* %485, i64 %488)
  store i32 %489, i32* %9, align 4
  %490 = load i32, i32* %9, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %495

492:                                              ; preds = %479
  %493 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %494 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %493, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  br label %596

495:                                              ; preds = %479
  %496 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %497 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %496, i32 0, i32 0
  %498 = load %struct.TYPE_18__*, %struct.TYPE_18__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %499, i32 0, i32 1
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* @MLX4_STEERING_MODE_A0, align 8
  %503 = icmp ne i64 %501, %502
  br i1 %503, label %504, label %511

504:                                              ; preds = %495
  %505 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %506 = call i64 @mlx4_en_set_rss_steer_rules(%struct.mlx4_en_priv* %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %504
  %509 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %510 = call i32 @mlx4_warn(%struct.mlx4_en_dev* %509, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  br label %511

511:                                              ; preds = %508, %504, %495
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 10
  %513 = call i32 @eth_broadcast_addr(i32* %512)
  %514 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %515 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %514, i32 0, i32 3
  %516 = load i64, i64* %515, align 8
  %517 = trunc i64 %516 to i32
  %518 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 5
  store i32 %517, i32* %518, align 4
  %519 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %520 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %519, i32 0, i32 0
  %521 = load %struct.TYPE_18__*, %struct.TYPE_18__** %520, align 8
  %522 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %523 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %522, i32 0, i32 14
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %527 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %528 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %527, i32 0, i32 3
  %529 = load i64, i64* %528, align 8
  %530 = trunc i64 %529 to i32
  %531 = load i32, i32* @MLX4_PROT_ETH, align 4
  %532 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %533 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %532, i32 0, i32 13
  %534 = call i64 @mlx4_multicast_attach(%struct.TYPE_18__* %521, i32 %525, i32* %526, i32 %530, i32 0, i32 %531, i32* %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %511
  %537 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %538 = call i32 @mlx4_warn(%struct.mlx4_en_dev* %537, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  br label %539

539:                                              ; preds = %536, %511
  %540 = load i32, i32* @MLX4_EN_FLAG_PROMISC, align 4
  %541 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %542 = or i32 %540, %541
  %543 = xor i32 %542, -1
  %544 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %545 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %544, i32 0, i32 6
  %546 = load i32, i32* %545, align 8
  %547 = and i32 %546, %543
  store i32 %547, i32* %545, align 8
  %548 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %549 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 8
  %551 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %552 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %551, i32 0, i32 12
  %553 = call i32 @queue_work(i32 %550, i32* %552)
  %554 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %555 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %554, i32 0, i32 11
  %556 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %555, align 8
  %557 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %556, i32 0, i32 0
  %558 = load %struct.TYPE_18__*, %struct.TYPE_18__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = load i64, i64* @MLX4_TUNNEL_OFFLOAD_MODE_VXLAN, align 8
  %563 = icmp eq i64 %561, %562
  br i1 %563, label %564, label %567

564:                                              ; preds = %539
  %565 = load %struct.net_device*, %struct.net_device** %3, align 8
  %566 = call i32 @udp_tunnel_get_rx_info(%struct.net_device* %565)
  br label %567

567:                                              ; preds = %564, %539
  %568 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %569 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %568, i32 0, i32 0
  store i32 1, i32* %569, align 8
  store i32 0, i32* %10, align 4
  br label %570

570:                                              ; preds = %588, %567
  %571 = load i32, i32* %10, align 4
  %572 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %573 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 4
  %575 = icmp slt i32 %571, %574
  br i1 %575, label %576, label %591

576:                                              ; preds = %570
  %577 = call i32 (...) @local_bh_disable()
  %578 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %579 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %578, i32 0, i32 8
  %580 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %579, align 8
  %581 = load i32, i32* %10, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %580, i64 %582
  %584 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %583, align 8
  %585 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %584, i32 0, i32 1
  %586 = call i32 @napi_schedule(i32* %585)
  %587 = call i32 (...) @local_bh_enable()
  br label %588

588:                                              ; preds = %576
  %589 = load i32, i32* %10, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %10, align 4
  br label %570

591:                                              ; preds = %570
  %592 = load %struct.net_device*, %struct.net_device** %3, align 8
  %593 = call i32 @netif_tx_start_all_queues(%struct.net_device* %592)
  %594 = load %struct.net_device*, %struct.net_device** %3, align 8
  %595 = call i32 @netif_device_attach(%struct.net_device* %594)
  store i32 0, i32* %2, align 4
  br label %708

596:                                              ; preds = %492, %474, %451, %428, %408, %316, %277, %268
  %597 = load i32, i32* %11, align 4
  %598 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %599 = icmp eq i32 %597, %598
  br i1 %599, label %600, label %610

600:                                              ; preds = %596
  %601 = load i32, i32* %11, align 4
  %602 = add nsw i32 %601, -1
  store i32 %602, i32* %11, align 4
  %603 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %604 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %603, i32 0, i32 5
  %605 = load i32*, i32** %604, align 8
  %606 = load i32, i32* %11, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %605, i64 %607
  %609 = load i32, i32* %608, align 4
  store i32 %609, i32* %10, align 4
  br label %610

610:                                              ; preds = %600, %596
  br label %611

611:                                              ; preds = %651, %610
  %612 = load i32, i32* %11, align 4
  %613 = icmp sge i32 %612, 0
  br i1 %613, label %614, label %659

614:                                              ; preds = %611
  br label %615

615:                                              ; preds = %619, %614
  %616 = load i32, i32* %10, align 4
  %617 = add nsw i32 %616, -1
  store i32 %617, i32* %10, align 4
  %618 = icmp ne i32 %616, 0
  br i1 %618, label %619, label %646

619:                                              ; preds = %615
  %620 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %621 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %622 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %621, i32 0, i32 10
  %623 = load %struct.mlx4_en_tx_ring***, %struct.mlx4_en_tx_ring**** %622, align 8
  %624 = load i32, i32* %11, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %623, i64 %625
  %627 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %626, align 8
  %628 = load i32, i32* %10, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %627, i64 %629
  %631 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %630, align 8
  %632 = call i32 @mlx4_en_deactivate_tx_ring(%struct.mlx4_en_priv* %620, %struct.mlx4_en_tx_ring* %631)
  %633 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %634 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %635 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %634, i32 0, i32 9
  %636 = load %struct.mlx4_en_cq***, %struct.mlx4_en_cq**** %635, align 8
  %637 = load i32, i32* %11, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %636, i64 %638
  %640 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %639, align 8
  %641 = load i32, i32* %10, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %640, i64 %642
  %644 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %643, align 8
  %645 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %633, %struct.mlx4_en_cq* %644)
  br label %615

646:                                              ; preds = %615
  %647 = load i32, i32* %11, align 4
  %648 = add nsw i32 %647, -1
  store i32 %648, i32* %11, align 4
  %649 = icmp ne i32 %647, 0
  br i1 %649, label %651, label %650

650:                                              ; preds = %646
  br label %659

651:                                              ; preds = %646
  %652 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %653 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %652, i32 0, i32 5
  %654 = load i32*, i32** %653, align 8
  %655 = load i32, i32* %11, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i32, i32* %654, i64 %656
  %658 = load i32, i32* %657, align 4
  store i32 %658, i32* %10, align 4
  br label %611

659:                                              ; preds = %650, %611
  %660 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %661 = call i32 @mlx4_en_destroy_drop_qp(%struct.mlx4_en_priv* %660)
  br label %662

662:                                              ; preds = %659, %216
  %663 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %664 = call i32 @mlx4_en_release_rss_steer(%struct.mlx4_en_priv* %663)
  br label %665

665:                                              ; preds = %662, %208
  %666 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %667 = call i32 @mlx4_en_put_qp(%struct.mlx4_en_priv* %666)
  br label %668

668:                                              ; preds = %665, %184, %143, %104, %94
  br label %669

669:                                              ; preds = %673, %668
  %670 = load i32, i32* %8, align 4
  %671 = add nsw i32 %670, -1
  store i32 %671, i32* %8, align 4
  %672 = icmp ne i32 %670, 0
  br i1 %672, label %673, label %686

673:                                              ; preds = %669
  %674 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %675 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %676 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %675, i32 0, i32 8
  %677 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %676, align 8
  %678 = load i32, i32* %8, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %677, i64 %679
  %681 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %680, align 8
  %682 = call i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv* %674, %struct.mlx4_en_cq* %681)
  %683 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %684 = load i32, i32* %8, align 4
  %685 = call i32 @mlx4_en_free_affinity_hint(%struct.mlx4_en_priv* %683, i32 %684)
  br label %669

686:                                              ; preds = %669
  store i32 0, i32* %10, align 4
  br label %687

687:                                              ; preds = %703, %686
  %688 = load i32, i32* %10, align 4
  %689 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %690 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %689, i32 0, i32 1
  %691 = load i32, i32* %690, align 4
  %692 = icmp slt i32 %688, %691
  br i1 %692, label %693, label %706

693:                                              ; preds = %687
  %694 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %695 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %696 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %695, i32 0, i32 7
  %697 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %696, align 8
  %698 = load i32, i32* %10, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %697, i64 %699
  %701 = load %struct.TYPE_20__*, %struct.TYPE_20__** %700, align 8
  %702 = call i32 @mlx4_en_deactivate_rx_ring(%struct.mlx4_en_priv* %694, %struct.TYPE_20__* %701)
  br label %703

703:                                              ; preds = %693
  %704 = load i32, i32* %10, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %10, align 4
  br label %687

706:                                              ; preds = %687
  %707 = load i32, i32* %9, align 4
  store i32 %707, i32* %2, align 4
  br label %708

708:                                              ; preds = %706, %591, %70, %26
  %709 = load i32, i32* %2, align 4
  ret i32 %709
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mlx4_en_calc_rx_buf(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_activate_rx_rings(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @mlx4_en_init_affinity_hint(%struct.mlx4_en_priv*, i32) #1

declare dso_local i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*, i32) #1

declare dso_local i32 @mlx4_en_free_affinity_hint(%struct.mlx4_en_priv*, i32) #1

declare dso_local %struct.mlx4_cqe* @mlx4_en_get_cqe(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @mlx4_en_set_cq_moder(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_deactivate_cq(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_arm_cq(%struct.mlx4_en_priv*, %struct.mlx4_en_cq*) #1

declare dso_local i32 @mlx4_en_get_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_get_default_counter_index(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @mlx4_en_config_rss_steer(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_create_drop_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mlx4_en_activate_tx_ring(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_init_tx_xdp_ring_descs(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*) #1

declare dso_local i32 @mlx4_en_init_recycle_ring(%struct.mlx4_en_priv*, i32) #1

declare dso_local i32 @mlx4_SET_PORT_general(%struct.TYPE_18__*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_user_mtu(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_18__*, i64, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_VXLAN(%struct.TYPE_18__*, i64, i32, i32) #1

declare dso_local i32 @mlx4_INIT_PORT(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @mlx4_en_set_rss_steer_rules(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_en_dev*, i8*) #1

declare dso_local i32 @eth_broadcast_addr(i32*) #1

declare dso_local i64 @mlx4_multicast_attach(%struct.TYPE_18__*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @udp_tunnel_get_rx_info(%struct.net_device*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_deactivate_tx_ring(%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*) #1

declare dso_local i32 @mlx4_en_destroy_drop_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_release_rss_steer(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_put_qp(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_deactivate_rx_ring(%struct.mlx4_en_priv*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
