; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_FUNC_CAP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_FUNC_CAP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64* }
%struct.mlx4_func_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@QUERY_FUNC_CAP_SUPPORTS_VST_QINQ = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_SUPPORTS_NON_POWER_OF_2_NUM_EQS = common dso_local global i32 0, align 4
@MLX4_CMD_QUERY_FUNC_CAP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_ETH = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"The host supports neither eth nor rdma interfaces\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_QUOTAS = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_NUM_PORTS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PF_BHVR_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_CQ_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MPT_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MTT_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MCG_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_CQ_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MPT_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MTT_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MCG_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MAX_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_RESERVED_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_RESD_LKEY = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP_RESD_LKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_VALID_MAILBOX = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_EXTRA_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_EXTRA_FLAGS_BF_QP_ALLOC_FLAG = common dso_local global i32 0, align 4
@MLX4_QUERY_FUNC_FLAGS_BF_RES_QP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_EXTRA_FLAGS_A0_QP_ALLOC_FLAG = common dso_local global i32 0, align 4
@MLX4_QUERY_FUNC_FLAGS_A0_RES_QP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAGS1_OFFSET = common dso_local global i32 0, align 4
@MLX4_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_FLAGS1_FORCE_VLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"VLAN is enforced on this port\0A\00", align 1
@QUERY_FUNC_CAP_FLAGS1_FORCE_MAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Force mac is enabled on this port\0A\00", align 1
@MLX4_PORT_TYPE_IB = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_FLAGS0_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAGS0_FORCE_PHY_WQE_GID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"phy_wqe_gid is enforced on this ib port\0A\00", align 1
@QUERY_FUNC_CAP_PHYS_PORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_VF_ENABLE_QP0 = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PRIV_VF_QKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP0_TUNNEL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP0_PROXY = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP1_TUNNEL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP1_PROXY = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAGS1_NIC_INFO = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PHYS_PORT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_func_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_func_cap*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_func_cap* %2, %struct.mlx4_func_cap** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @QUERY_FUNC_CAP_SUPPORTS_VST_QINQ, align 4
  %24 = load i32, i32* @QUERY_FUNC_CAP_SUPPORTS_NON_POWER_OF_2_NUM_EQS, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %17, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %16, align 4
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %35 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %34)
  store %struct.mlx4_cmd_mailbox* %35, %struct.mlx4_cmd_mailbox** %8, align 8
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %37 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %41 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %40)
  store i32 %41, i32* %4, align 4
  br label %453

42:                                               ; preds = %32
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %44 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %45 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @MLX4_CMD_QUERY_FUNC_CAP, align 4
  %50 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %51 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %52 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %43, i32 0, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %448

56:                                               ; preds = %42
  %57 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %58 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %276, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @QUERY_FUNC_CAP_FLAGS_OFFSET, align 4
  %66 = call i32 @MLX4_GET(i32 %63, i32* %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @QUERY_FUNC_CAP_FLAG_ETH, align 4
  %69 = load i32, i32* @QUERY_FUNC_CAP_FLAG_RDMA, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %62
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %75 = call i32 @mlx4_err(%struct.mlx4_dev* %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EPROTONOSUPPORT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %14, align 4
  br label %448

78:                                               ; preds = %62
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %81 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %83 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @QUERY_FUNC_CAP_FLAG_QUOTAS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* @QUERY_FUNC_CAP_NUM_PORTS_OFFSET, align 4
  %94 = call i32 @MLX4_GET(i32 %91, i32* %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %97 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* @QUERY_FUNC_CAP_PF_BHVR_OFFSET, align 4
  %101 = call i32 @MLX4_GET(i32 %98, i32* %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %104 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %156

107:                                              ; preds = %78
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* @QUERY_FUNC_CAP_QP_QUOTA_OFFSET, align 4
  %111 = call i32 @MLX4_GET(i32 %108, i32* %109, i32 %110)
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, 16777215
  %114 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %115 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* @QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET, align 4
  %119 = call i32 @MLX4_GET(i32 %116, i32* %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  %121 = and i32 %120, 16777215
  %122 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %123 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* @QUERY_FUNC_CAP_CQ_QUOTA_OFFSET, align 4
  %127 = call i32 @MLX4_GET(i32 %124, i32* %125, i32 %126)
  %128 = load i32, i32* %12, align 4
  %129 = and i32 %128, 16777215
  %130 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %131 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* @QUERY_FUNC_CAP_MPT_QUOTA_OFFSET, align 4
  %135 = call i32 @MLX4_GET(i32 %132, i32* %133, i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %136, 16777215
  %138 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %139 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* @QUERY_FUNC_CAP_MTT_QUOTA_OFFSET, align 4
  %143 = call i32 @MLX4_GET(i32 %140, i32* %141, i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = and i32 %144, 16777215
  %146 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %147 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* @QUERY_FUNC_CAP_MCG_QUOTA_OFFSET, align 4
  %151 = call i32 @MLX4_GET(i32 %148, i32* %149, i32 %150)
  %152 = load i32, i32* %12, align 4
  %153 = and i32 %152, 16777215
  %154 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %155 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %154, i32 0, i32 8
  store i32 %153, i32* %155, align 4
  br label %205

156:                                              ; preds = %78
  %157 = load i32, i32* %12, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* @QUERY_FUNC_CAP_QP_QUOTA_OFFSET_DEP, align 4
  %160 = call i32 @MLX4_GET(i32 %157, i32* %158, i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = and i32 %161, 16777215
  %163 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %164 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* @QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET_DEP, align 4
  %168 = call i32 @MLX4_GET(i32 %165, i32* %166, i32 %167)
  %169 = load i32, i32* %12, align 4
  %170 = and i32 %169, 16777215
  %171 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %172 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* @QUERY_FUNC_CAP_CQ_QUOTA_OFFSET_DEP, align 4
  %176 = call i32 @MLX4_GET(i32 %173, i32* %174, i32 %175)
  %177 = load i32, i32* %12, align 4
  %178 = and i32 %177, 16777215
  %179 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %180 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* @QUERY_FUNC_CAP_MPT_QUOTA_OFFSET_DEP, align 4
  %184 = call i32 @MLX4_GET(i32 %181, i32* %182, i32 %183)
  %185 = load i32, i32* %12, align 4
  %186 = and i32 %185, 16777215
  %187 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %188 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* @QUERY_FUNC_CAP_MTT_QUOTA_OFFSET_DEP, align 4
  %192 = call i32 @MLX4_GET(i32 %189, i32* %190, i32 %191)
  %193 = load i32, i32* %12, align 4
  %194 = and i32 %193, 16777215
  %195 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %196 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %12, align 4
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* @QUERY_FUNC_CAP_MCG_QUOTA_OFFSET_DEP, align 4
  %200 = call i32 @MLX4_GET(i32 %197, i32* %198, i32 %199)
  %201 = load i32, i32* %12, align 4
  %202 = and i32 %201, 16777215
  %203 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %204 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %203, i32 0, i32 8
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %156, %107
  %206 = load i32, i32* %12, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* @QUERY_FUNC_CAP_MAX_EQ_OFFSET, align 4
  %209 = call i32 @MLX4_GET(i32 %206, i32* %207, i32 %208)
  %210 = load i32, i32* %12, align 4
  %211 = and i32 %210, 16777215
  %212 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %213 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %212, i32 0, i32 9
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* @QUERY_FUNC_CAP_RESERVED_EQ_OFFSET, align 4
  %217 = call i32 @MLX4_GET(i32 %214, i32* %215, i32 %216)
  %218 = load i32, i32* %12, align 4
  %219 = and i32 %218, 16777215
  %220 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %221 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %220, i32 0, i32 10
  store i32 %219, i32* %221, align 4
  %222 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %223 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @QUERY_FUNC_CAP_FLAG_RESD_LKEY, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %205
  %229 = load i32, i32* %12, align 4
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* @QUERY_FUNC_CAP_QP_RESD_LKEY_OFFSET, align 4
  %232 = call i32 @MLX4_GET(i32 %229, i32* %230, i32 %231)
  %233 = load i32, i32* %12, align 4
  %234 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %235 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %234, i32 0, i32 11
  store i32 %233, i32* %235, align 4
  br label %239

236:                                              ; preds = %205
  %237 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %238 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %237, i32 0, i32 11
  store i32 0, i32* %238, align 4
  br label %239

239:                                              ; preds = %236, %228
  %240 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %241 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %240, i32 0, i32 17
  store i32 0, i32* %241, align 4
  %242 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %243 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @QUERY_FUNC_CAP_FLAG_VALID_MAILBOX, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %275

248:                                              ; preds = %239
  %249 = load i32, i32* %12, align 4
  %250 = load i32*, i32** %9, align 8
  %251 = load i32, i32* @QUERY_FUNC_CAP_EXTRA_FLAGS_OFFSET, align 4
  %252 = call i32 @MLX4_GET(i32 %249, i32* %250, i32 %251)
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* @QUERY_FUNC_CAP_EXTRA_FLAGS_BF_QP_ALLOC_FLAG, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %248
  %258 = load i32, i32* @MLX4_QUERY_FUNC_FLAGS_BF_RES_QP, align 4
  %259 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %260 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %259, i32 0, i32 17
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %257, %248
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* @QUERY_FUNC_CAP_EXTRA_FLAGS_A0_QP_ALLOC_FLAG, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %263
  %269 = load i32, i32* @MLX4_QUERY_FUNC_FLAGS_A0_RES_QP, align 4
  %270 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %271 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %270, i32 0, i32 17
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %268, %263
  br label %275

275:                                              ; preds = %274, %239
  br label %448

276:                                              ; preds = %56
  %277 = load i32, i32* %6, align 4
  %278 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %279 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp sgt i32 %277, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %276
  %284 = load i32, i32* @EINVAL, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %14, align 4
  br label %448

286:                                              ; preds = %276
  %287 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %288 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %287, i32 0, i32 12
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** %9, align 8
  %291 = load i32, i32* @QUERY_FUNC_CAP_FLAGS1_OFFSET, align 4
  %292 = call i32 @MLX4_GET(i32 %289, i32* %290, i32 %291)
  %293 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %294 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 1
  %296 = load i64*, i64** %295, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %296, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %328

303:                                              ; preds = %286
  %304 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %305 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %304, i32 0, i32 12
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @QUERY_FUNC_CAP_FLAGS1_FORCE_VLAN, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %303
  %311 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %312 = call i32 @mlx4_err(%struct.mlx4_dev* %311, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %313 = load i32, i32* @EPROTONOSUPPORT, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %14, align 4
  br label %448

315:                                              ; preds = %303
  %316 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %317 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %316, i32 0, i32 12
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @QUERY_FUNC_CAP_FLAGS1_FORCE_MAC, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %315
  %323 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %324 = call i32 @mlx4_err(%struct.mlx4_dev* %323, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %325 = load i32, i32* @EPROTONOSUPPORT, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %14, align 4
  br label %448

327:                                              ; preds = %315
  br label %355

328:                                              ; preds = %286
  %329 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %330 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 1
  %332 = load i64*, i64** %331, align 8
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64, i64* %332, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @MLX4_PORT_TYPE_IB, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %354

339:                                              ; preds = %328
  %340 = load i32, i32* %10, align 4
  %341 = load i32*, i32** %9, align 8
  %342 = load i32, i32* @QUERY_FUNC_CAP_FLAGS0_OFFSET, align 4
  %343 = call i32 @MLX4_GET(i32 %340, i32* %341, i32 %342)
  %344 = load i32, i32* %10, align 4
  %345 = load i32, i32* @QUERY_FUNC_CAP_FLAGS0_FORCE_PHY_WQE_GID, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %339
  %349 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %350 = call i32 @mlx4_err(%struct.mlx4_dev* %349, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %351 = load i32, i32* @EPROTONOSUPPORT, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %14, align 4
  br label %448

353:                                              ; preds = %339
  br label %354

354:                                              ; preds = %353, %328
  br label %355

355:                                              ; preds = %354, %327
  %356 = load i32, i32* %10, align 4
  %357 = load i32*, i32** %9, align 8
  %358 = load i32, i32* @QUERY_FUNC_CAP_PHYS_PORT_OFFSET, align 4
  %359 = call i32 @MLX4_GET(i32 %356, i32* %357, i32 %358)
  %360 = load i32, i32* %10, align 4
  %361 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %362 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %361, i32 0, i32 13
  store i32 %360, i32* %362, align 4
  %363 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %364 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %363, i32 0, i32 13
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %6, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %371

368:                                              ; preds = %355
  %369 = load i32, i32* @EINVAL, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %14, align 4
  br label %448

371:                                              ; preds = %355
  %372 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %373 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %372, i32 0, i32 12
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @QUERY_FUNC_CAP_VF_ENABLE_QP0, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %387

378:                                              ; preds = %371
  %379 = load i32, i32* %13, align 4
  %380 = load i32*, i32** %9, align 8
  %381 = load i32, i32* @QUERY_FUNC_CAP_PRIV_VF_QKEY_OFFSET, align 4
  %382 = call i32 @MLX4_GET(i32 %379, i32* %380, i32 %381)
  %383 = load i32, i32* %13, align 4
  %384 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %385 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %384, i32 0, i32 16
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 0
  store i32 %383, i32* %386, align 4
  br label %391

387:                                              ; preds = %371
  %388 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %389 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %388, i32 0, i32 16
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 0
  store i32 0, i32* %390, align 4
  br label %391

391:                                              ; preds = %387, %378
  %392 = load i32, i32* %12, align 4
  %393 = load i32*, i32** %9, align 8
  %394 = load i32, i32* @QUERY_FUNC_CAP_QP0_TUNNEL, align 4
  %395 = call i32 @MLX4_GET(i32 %392, i32* %393, i32 %394)
  %396 = load i32, i32* %12, align 4
  %397 = and i32 %396, 16777215
  %398 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %399 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %398, i32 0, i32 16
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 1
  store i32 %397, i32* %400, align 4
  %401 = load i32, i32* %12, align 4
  %402 = load i32*, i32** %9, align 8
  %403 = load i32, i32* @QUERY_FUNC_CAP_QP0_PROXY, align 4
  %404 = call i32 @MLX4_GET(i32 %401, i32* %402, i32 %403)
  %405 = load i32, i32* %12, align 4
  %406 = and i32 %405, 16777215
  %407 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %408 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %407, i32 0, i32 16
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 2
  store i32 %406, i32* %409, align 4
  %410 = load i32, i32* %12, align 4
  %411 = load i32*, i32** %9, align 8
  %412 = load i32, i32* @QUERY_FUNC_CAP_QP1_TUNNEL, align 4
  %413 = call i32 @MLX4_GET(i32 %410, i32* %411, i32 %412)
  %414 = load i32, i32* %12, align 4
  %415 = and i32 %414, 16777215
  %416 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %417 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %416, i32 0, i32 16
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 3
  store i32 %415, i32* %418, align 4
  %419 = load i32, i32* %12, align 4
  %420 = load i32*, i32** %9, align 8
  %421 = load i32, i32* @QUERY_FUNC_CAP_QP1_PROXY, align 4
  %422 = call i32 @MLX4_GET(i32 %419, i32* %420, i32 %421)
  %423 = load i32, i32* %12, align 4
  %424 = and i32 %423, 16777215
  %425 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %426 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %425, i32 0, i32 16
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 4
  store i32 %424, i32* %427, align 4
  %428 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %429 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %428, i32 0, i32 12
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @QUERY_FUNC_CAP_FLAGS1_NIC_INFO, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %441

434:                                              ; preds = %391
  %435 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %436 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %435, i32 0, i32 14
  %437 = load i32, i32* %436, align 4
  %438 = load i32*, i32** %9, align 8
  %439 = load i32, i32* @QUERY_FUNC_CAP_PHYS_PORT_ID, align 4
  %440 = call i32 @MLX4_GET(i32 %437, i32* %438, i32 %439)
  br label %441

441:                                              ; preds = %434, %391
  %442 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %7, align 8
  %443 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %442, i32 0, i32 15
  %444 = load i32, i32* %443, align 4
  %445 = load i32*, i32** %9, align 8
  %446 = load i32, i32* @QUERY_FUNC_CAP_FLAGS0_OFFSET, align 4
  %447 = call i32 @MLX4_GET(i32 %444, i32* %445, i32 %446)
  br label %448

448:                                              ; preds = %441, %368, %348, %322, %310, %283, %275, %73, %55
  %449 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %450 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %451 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %449, %struct.mlx4_cmd_mailbox* %450)
  %452 = load i32, i32* %14, align 4
  store i32 %452, i32* %4, align 4
  br label %453

453:                                              ; preds = %448, %39
  %454 = load i32, i32* %4, align 4
  ret i32 %454
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
