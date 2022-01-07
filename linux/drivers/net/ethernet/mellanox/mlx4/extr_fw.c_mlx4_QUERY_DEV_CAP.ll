; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_DEV_CAP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_DEV_CAP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@MLX4_CMD_QUERY_DEV_CAP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RSS_XOR = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RSS_TOP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RSS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FS_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_DMFS_UC_MC_SNIFFER = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_PORT_BEACON = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_DMFS_IPOIB = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_QCN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_USER_MAC_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SVLAN_BY_QP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_QOS_VPP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_CQE_STRIDE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_EQE_STRIDE = common dso_local global i32 0, align 4
@MLX4_FLAG_ROCE_V1_V2 = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ROCE_V1_V2 = common dso_local global i32 0, align 4
@MLX4_FLAG_PORT_REMAP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_PORT_REMAP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_CONFIG_DEV = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_IGNORE_FCS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_PHV_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SKIP_OUTER_VLAN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RECOVERABLE_ERROR_EVENT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_DRIVER_VERSION_TO_FW = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_REASSIGN_MAC_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_VXLAN_OFFLOADS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ETS_CFG = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_COUNTERS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_MAD_DEMUX = common dso_local global i32 0, align 4
@MGM_QPN_MASK = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_QP_RATE_LIMIT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_LB_SRC_CHK = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_VLAN_CONTROL = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FSM = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_80_VFS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SW_CQ_INIT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SYS_EQS = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ACK_DELAY_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ALTC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_AUX_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BF_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BMME_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CONFIG_DEV_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQ_EQ_CACHE_LINE_STRIDE = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_C_MPT_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_DIAG_RPRT_PER_PORT = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_DMFS_HIGH_RATE_QPN_BASE_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_DMFS_HIGH_RATE_QPN_RANGE_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_D_MPT_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ECN_QCN_VER_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EQC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ETH_BACKPL_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EXT_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLOW_STEERING_IPOIB_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLOW_STEERING_MAX_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FW_REASSIGN_MAC = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_HEALTH_BUFFER_ADDRESS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_LOG_BF_REG_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_LOG_MAX_BF_REGS_PER_PAGE_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAD_DEMUX_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_COUNTERS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_CQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_CQ_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_DESC_SZ_RQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_DESC_SZ_SQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_GSO_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_ICM_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MCG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MPT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MSG_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_PD_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_QP_MCG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_QP_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_RDMA_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_REQ_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_RES_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SG_RQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SG_SQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SRQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SRQ_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_XRC_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MTT_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_NUM_SYS_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PAGE_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PHV_EN_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PORT_BEACON_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PORT_FLOWSTATS_COUNTERS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QPC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QP_RATE_LIMIT_MAX_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QP_RATE_LIMIT_MIN_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QP_RATE_LIMIT_NUM_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RATE_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RDMARC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_CQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_LKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_MCG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_MRW_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_MTT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_PD_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_SRQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_UAR_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_XRC_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSZ_SRQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_SL2VL_EVENT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_SRQ_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_SVLAN_BY_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_UAR_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_USER_MAC_EN_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_VL_PORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_VXLAN = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_WOL_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_DEV_CAP(%struct.mlx4_dev* %0, %struct.mlx4_dev_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_dev_cap*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_dev_cap* %1, %struct.mlx4_dev_cap** %5, align 8
  %16 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %16, i32 0, i32 62
  store i32 0, i32* %17, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %19 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %18)
  store %struct.mlx4_cmd_mailbox* %19, %struct.mlx4_cmd_mailbox** %6, align 8
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %21 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %24)
  store i32 %25, i32* %3, align 4
  br label %1081

26:                                               ; preds = %2
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MLX4_CMD_QUERY_DEV_CAP, align 4
  %35 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %36 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %37 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %30, i32 0, i32 %33, i32 0, i32 0, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %1076

41:                                               ; preds = %26
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %43 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @disable_unsupported_roce_caps(i32* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @MLX4_GET(i32 %49, i32* %50, i32 18)
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 15
  %54 = shl i32 1, %53
  %55 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %56 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @MLX4_GET(i32 %57, i32* %58, i32 19)
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 31
  %62 = shl i32 1, %61
  %63 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %64 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @MLX4_GET(i32 %65, i32* %66, i32 20)
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 4
  %70 = shl i32 1, %69
  %71 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %72 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @MLX4_GET(i32 %73, i32* %74, i32 21)
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 31
  %78 = shl i32 1, %77
  %79 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %80 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @MLX4_GET(i32 %81, i32* %82, i32 25)
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 1, %84
  %86 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %87 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @MLX4_GET(i32 %88, i32* %89, i32 26)
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 15
  %93 = shl i32 1, %92
  %94 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %95 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @MLX4_GET(i32 %96, i32* %97, i32 27)
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 31
  %101 = shl i32 1, %100
  %102 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %103 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @MLX4_GET(i32 %104, i32* %105, i32 29)
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 63
  %109 = shl i32 1, %108
  %110 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %111 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @MLX4_GET(i32 %112, i32* %113, i32 30)
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 15
  %117 = shl i32 1, %116
  %118 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %119 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @MLX4_GET(i32 %120, i32* %121, i32 31)
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 15
  %125 = shl i32 1, %124
  %126 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %127 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @MLX4_GET(i32 %128, i32* %129, i32 32)
  %131 = load i32, i32* %8, align 4
  %132 = ashr i32 %131, 4
  %133 = shl i32 1, %132
  %134 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %135 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %134, i32 0, i32 10
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @MLX4_GET(i32 %136, i32* %137, i32 34)
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, 15
  %141 = shl i32 1, %140
  %142 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %143 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %142, i32 0, i32 11
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @MLX4_GET(i32 %144, i32* %145, i32 38)
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, 4095
  %149 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %150 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %149, i32 0, i32 12
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @MLX4_GET(i32 %151, i32* %152, i32 41)
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, 63
  %156 = shl i32 1, %155
  %157 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %158 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %157, i32 0, i32 13
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @MLX4_GET(i32 %159, i32* %160, i32 43)
  %162 = load i32, i32* %8, align 4
  %163 = and i32 %162, 63
  %164 = shl i32 1, %163
  %165 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %166 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %165, i32 0, i32 14
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @MLX4_GET(i32 %167, i32* %168, i32 45)
  %170 = load i32, i32* %8, align 4
  %171 = and i32 %170, 31
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %48
  %175 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %176 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %175, i32 0, i32 15
  store i32 0, i32* %176, align 4
  br label %182

177:                                              ; preds = %48
  %178 = load i32, i32* %8, align 4
  %179 = shl i32 1, %178
  %180 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %181 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %180, i32 0, i32 15
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %177, %174
  %183 = load i32, i32* %8, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = call i32 @MLX4_GET(i32 %183, i32* %184, i32 46)
  %186 = load i32, i32* %8, align 4
  %187 = and i32 %186, 32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS_XOR, align 4
  %191 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %192 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %191, i32 0, i32 62
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %189, %182
  %196 = load i32, i32* %8, align 4
  %197 = and i32 %196, 16
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS_TOP, align 4
  %201 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %202 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %201, i32 0, i32 62
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %199, %195
  %206 = load i32, i32* %8, align 4
  %207 = and i32 %206, 15
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %205
  %211 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS, align 4
  %212 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %213 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %212, i32 0, i32 62
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* %8, align 4
  %217 = shl i32 1, %216
  %218 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %219 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %218, i32 0, i32 16
  store i32 %217, i32* %219, align 8
  br label %223

220:                                              ; preds = %205
  %221 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %222 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %221, i32 0, i32 16
  store i32 0, i32* %222, align 8
  br label %223

223:                                              ; preds = %220, %210
  %224 = load i32, i32* %8, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @MLX4_GET(i32 %224, i32* %225, i32 47)
  %227 = load i32, i32* %8, align 4
  %228 = and i32 %227, 63
  %229 = shl i32 1, %228
  %230 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %231 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %230, i32 0, i32 17
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = call i32 @MLX4_GET(i32 %232, i32* %233, i32 53)
  %235 = load i32, i32* %8, align 4
  %236 = and i32 %235, 31
  %237 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %238 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %237, i32 0, i32 18
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* %8, align 4
  %240 = load i32*, i32** %7, align 8
  %241 = call i32 @MLX4_GET(i32 %239, i32* %240, i32 55)
  %242 = load i32, i32* %8, align 4
  %243 = and i32 %242, 15
  %244 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %245 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %244, i32 0, i32 19
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = call i32 @MLX4_GET(i32 %246, i32* %247, i32 56)
  %249 = load i32, i32* %8, align 4
  %250 = and i32 %249, 31
  %251 = shl i32 1, %250
  %252 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %253 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %252, i32 0, i32 20
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* %8, align 4
  %255 = load i32*, i32** %7, align 8
  %256 = call i32 @MLX4_GET(i32 %254, i32* %255, i32 112)
  %257 = load i32, i32* %8, align 4
  %258 = and i32 %257, 16
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %223
  %261 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN, align 4
  %262 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %263 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %262, i32 0, i32 62
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %260, %223
  %267 = load i32, i32* %8, align 4
  %268 = load i32*, i32** %7, align 8
  %269 = call i32 @MLX4_GET(i32 %267, i32* %268, i32 118)
  %270 = load i32, i32* %8, align 4
  %271 = and i32 %270, 128
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %266
  %274 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FS_EN, align 4
  %275 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %276 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %275, i32 0, i32 62
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %273, %266
  %280 = load i32, i32* %8, align 4
  %281 = and i32 %280, 31
  %282 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %283 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %282, i32 0, i32 21
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %8, align 4
  %285 = and i32 %284, 32
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %279
  %288 = load i32, i32* @MLX4_DEV_CAP_FLAG2_DMFS_UC_MC_SNIFFER, align 4
  %289 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %290 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %289, i32 0, i32 62
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %287, %279
  %294 = load i32, i32* %8, align 4
  %295 = load i32*, i32** %7, align 8
  %296 = call i32 @MLX4_GET(i32 %294, i32* %295, i32 52)
  %297 = load i32, i32* %8, align 4
  %298 = and i32 %297, 128
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %293
  %301 = load i32, i32* @MLX4_DEV_CAP_FLAG2_PORT_BEACON, align 4
  %302 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %303 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %302, i32 0, i32 62
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %300, %293
  %307 = load i32, i32* %8, align 4
  %308 = load i32*, i32** %7, align 8
  %309 = call i32 @MLX4_GET(i32 %307, i32* %308, i32 116)
  %310 = load i32, i32* %8, align 4
  %311 = and i32 %310, 128
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %306
  %314 = load i32, i32* @MLX4_DEV_CAP_FLAG2_DMFS_IPOIB, align 4
  %315 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %316 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %315, i32 0, i32 62
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %313, %306
  %320 = load i32, i32* %8, align 4
  %321 = load i32*, i32** %7, align 8
  %322 = call i32 @MLX4_GET(i32 %320, i32* %321, i32 119)
  %323 = load i32, i32* %8, align 4
  %324 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %325 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %324, i32 0, i32 22
  store i32 %323, i32* %325, align 8
  %326 = load i32, i32* %8, align 4
  %327 = load i32*, i32** %7, align 8
  %328 = call i32 @MLX4_GET(i32 %326, i32* %327, i32 120)
  %329 = load i32, i32* %8, align 4
  %330 = and i32 %329, 32
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %319
  %333 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT, align 4
  %334 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %335 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %334, i32 0, i32 62
  %336 = load i32, i32* %335, align 8
  %337 = or i32 %336, %333
  store i32 %337, i32* %335, align 8
  br label %338

338:                                              ; preds = %332, %319
  %339 = load i32, i32* %8, align 4
  %340 = load i32*, i32** %7, align 8
  %341 = call i32 @MLX4_GET(i32 %339, i32* %340, i32 123)
  %342 = load i32, i32* %8, align 4
  %343 = and i32 %342, 1
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %338
  %346 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QCN, align 4
  %347 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %348 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %347, i32 0, i32 62
  %349 = load i32, i32* %348, align 8
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 8
  br label %351

351:                                              ; preds = %345, %338
  %352 = load i32, i32* %13, align 4
  %353 = load i32*, i32** %7, align 8
  %354 = call i32 @MLX4_GET(i32 %352, i32* %353, i32 60)
  %355 = load i32, i32* %13, align 4
  %356 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %357 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %356, i32 0, i32 23
  store i32 %355, i32* %357, align 4
  %358 = load i32, i32* %8, align 4
  %359 = load i32*, i32** %7, align 8
  %360 = call i32 @MLX4_GET(i32 %358, i32* %359, i32 62)
  %361 = load i32, i32* %8, align 4
  %362 = and i32 %361, 128
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %351
  %365 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %366 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %367 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %366, i32 0, i32 62
  %368 = load i32, i32* %367, align 8
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %364, %351
  %371 = load i32, i32* %11, align 4
  %372 = load i32*, i32** %7, align 8
  %373 = call i32 @MLX4_GET(i32 %371, i32* %372, i32 64)
  %374 = load i32, i32* %10, align 4
  %375 = load i32*, i32** %7, align 8
  %376 = call i32 @MLX4_GET(i32 %374, i32* %375, i32 68)
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* %11, align 4
  %379 = shl i32 %378, 32
  %380 = or i32 %377, %379
  %381 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %382 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %381, i32 0, i32 24
  store i32 %380, i32* %382, align 8
  %383 = load i32, i32* %8, align 4
  %384 = load i32*, i32** %7, align 8
  %385 = call i32 @MLX4_GET(i32 %383, i32* %384, i32 67)
  %386 = load i32, i32* %8, align 4
  %387 = and i32 %386, 32
  %388 = icmp ne i32 %387, 0
  %389 = xor i1 %388, true
  %390 = xor i1 %389, true
  %391 = zext i1 %390 to i32
  %392 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %393 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %392, i32 0, i32 25
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 1
  store i32 %391, i32* %395, align 4
  %396 = load i32, i32* %8, align 4
  %397 = and i32 %396, 64
  %398 = icmp ne i32 %397, 0
  %399 = xor i1 %398, true
  %400 = xor i1 %399, true
  %401 = zext i1 %400 to i32
  %402 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %403 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %402, i32 0, i32 25
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 2
  store i32 %401, i32* %405, align 4
  %406 = load i32, i32* %8, align 4
  %407 = load i32*, i32** %7, align 8
  %408 = call i32 @MLX4_GET(i32 %406, i32* %407, i32 72)
  %409 = load i32, i32* %8, align 4
  %410 = ashr i32 %409, 4
  %411 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %412 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %411, i32 0, i32 26
  store i32 %410, i32* %412, align 8
  %413 = load i32, i32* %8, align 4
  %414 = load i32*, i32** %7, align 8
  %415 = call i32 @MLX4_GET(i32 %413, i32* %414, i32 73)
  %416 = load i32, i32* %8, align 4
  %417 = and i32 %416, 63
  %418 = add nsw i32 %417, 20
  %419 = shl i32 1, %418
  %420 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %421 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %420, i32 0, i32 27
  store i32 %419, i32* %421, align 4
  %422 = load i32, i32* %8, align 4
  %423 = load i32*, i32** %7, align 8
  %424 = call i32 @MLX4_GET(i32 %422, i32* %423, i32 75)
  %425 = load i32, i32* %8, align 4
  %426 = shl i32 1, %425
  %427 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %428 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %427, i32 0, i32 28
  store i32 %426, i32* %428, align 8
  %429 = load i32, i32* %8, align 4
  %430 = load i32*, i32** %7, align 8
  %431 = call i32 @MLX4_GET(i32 %429, i32* %430, i32 76)
  %432 = load i32, i32* %8, align 4
  %433 = and i32 %432, 128
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %463

435:                                              ; preds = %370
  %436 = load i32, i32* %8, align 4
  %437 = load i32*, i32** %7, align 8
  %438 = call i32 @MLX4_GET(i32 %436, i32* %437, i32 77)
  %439 = load i32, i32* %8, align 4
  %440 = and i32 %439, 31
  %441 = shl i32 1, %440
  %442 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %443 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %442, i32 0, i32 29
  store i32 %441, i32* %443, align 4
  %444 = load i32, i32* %8, align 4
  %445 = load i32*, i32** %7, align 8
  %446 = call i32 @MLX4_GET(i32 %444, i32* %445, i32 78)
  %447 = load i32, i32* %8, align 4
  %448 = and i32 %447, 63
  %449 = shl i32 1, %448
  %450 = load i32, i32* @PAGE_SIZE, align 4
  %451 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %452 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %451, i32 0, i32 29
  %453 = load i32, i32* %452, align 4
  %454 = sdiv i32 %450, %453
  %455 = icmp sgt i32 %449, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %435
  store i32 3, i32* %8, align 4
  br label %457

457:                                              ; preds = %456, %435
  %458 = load i32, i32* %8, align 4
  %459 = and i32 %458, 63
  %460 = shl i32 1, %459
  %461 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %462 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %461, i32 0, i32 30
  store i32 %460, i32* %462, align 8
  br label %466

463:                                              ; preds = %370
  %464 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %465 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %464, i32 0, i32 29
  store i32 0, i32* %465, align 4
  br label %466

466:                                              ; preds = %463, %457
  %467 = load i32, i32* %8, align 4
  %468 = load i32*, i32** %7, align 8
  %469 = call i32 @MLX4_GET(i32 %467, i32* %468, i32 81)
  %470 = load i32, i32* %8, align 4
  %471 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %472 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %471, i32 0, i32 31
  store i32 %470, i32* %472, align 4
  %473 = load i32, i32* %12, align 4
  %474 = load i32*, i32** %7, align 8
  %475 = call i32 @MLX4_GET(i32 %473, i32* %474, i32 82)
  %476 = load i32, i32* %12, align 4
  %477 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %478 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %477, i32 0, i32 32
  store i32 %476, i32* %478, align 8
  %479 = load i32, i32* %8, align 4
  %480 = load i32*, i32** %7, align 8
  %481 = call i32 @MLX4_GET(i32 %479, i32* %480, i32 92)
  %482 = load i32, i32* %8, align 4
  %483 = and i32 %482, 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %491

485:                                              ; preds = %466
  %486 = load i32, i32* @MLX4_DEV_CAP_FLAG2_USER_MAC_EN, align 4
  %487 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %488 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %487, i32 0, i32 62
  %489 = load i32, i32* %488, align 8
  %490 = or i32 %489, %486
  store i32 %490, i32* %488, align 8
  br label %491

491:                                              ; preds = %485, %466
  %492 = load i32, i32* %8, align 4
  %493 = load i32*, i32** %7, align 8
  %494 = call i32 @MLX4_GET(i32 %492, i32* %493, i32 93)
  %495 = load i32, i32* %8, align 4
  %496 = and i32 %495, 1
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %504

498:                                              ; preds = %491
  %499 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SVLAN_BY_QP, align 4
  %500 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %501 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %500, i32 0, i32 62
  %502 = load i32, i32* %501, align 8
  %503 = or i32 %502, %499
  store i32 %503, i32* %501, align 8
  br label %504

504:                                              ; preds = %498, %491
  %505 = load i32, i32* %8, align 4
  %506 = load i32*, i32** %7, align 8
  %507 = call i32 @MLX4_GET(i32 %505, i32* %506, i32 97)
  %508 = load i32, i32* %8, align 4
  %509 = shl i32 1, %508
  %510 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %511 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %510, i32 0, i32 33
  store i32 %509, i32* %511, align 4
  %512 = load i32, i32* %8, align 4
  %513 = load i32*, i32** %7, align 8
  %514 = call i32 @MLX4_GET(i32 %512, i32* %513, i32 98)
  %515 = load i32, i32* %8, align 4
  %516 = and i32 %515, 15
  %517 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %518 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %517, i32 0, i32 34
  store i32 %516, i32* %518, align 8
  %519 = load i32, i32* %8, align 4
  %520 = load i32*, i32** %7, align 8
  %521 = call i32 @MLX4_GET(i32 %519, i32* %520, i32 99)
  %522 = load i32, i32* %8, align 4
  %523 = shl i32 1, %522
  %524 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %525 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %524, i32 0, i32 35
  store i32 %523, i32* %525, align 4
  %526 = load i32, i32* %8, align 4
  %527 = load i32*, i32** %7, align 8
  %528 = call i32 @MLX4_GET(i32 %526, i32* %527, i32 100)
  %529 = load i32, i32* %8, align 4
  %530 = ashr i32 %529, 4
  %531 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %532 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %531, i32 0, i32 36
  store i32 %530, i32* %532, align 8
  %533 = load i32, i32* %8, align 4
  %534 = load i32*, i32** %7, align 8
  %535 = call i32 @MLX4_GET(i32 %533, i32* %534, i32 101)
  %536 = load i32, i32* %8, align 4
  %537 = and i32 %536, 63
  %538 = shl i32 1, %537
  %539 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %540 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %539, i32 0, i32 37
  store i32 %538, i32* %540, align 4
  %541 = load i32, i32* %8, align 4
  %542 = load i32*, i32** %7, align 8
  %543 = call i32 @MLX4_GET(i32 %541, i32* %542, i32 102)
  %544 = load i32, i32* %8, align 4
  %545 = ashr i32 %544, 4
  %546 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %547 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %546, i32 0, i32 38
  store i32 %545, i32* %547, align 8
  %548 = load i32, i32* %8, align 4
  %549 = load i32*, i32** %7, align 8
  %550 = call i32 @MLX4_GET(i32 %548, i32* %549, i32 103)
  %551 = load i32, i32* %8, align 4
  %552 = and i32 %551, 31
  %553 = shl i32 1, %552
  %554 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %555 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %554, i32 0, i32 39
  store i32 %553, i32* %555, align 4
  %556 = load i32, i32* %12, align 4
  %557 = load i32*, i32** %7, align 8
  %558 = call i32 @MLX4_GET(i32 %556, i32* %557, i32 128)
  %559 = load i32, i32* %12, align 4
  %560 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %561 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %560, i32 0, i32 40
  store i32 %559, i32* %561, align 8
  %562 = load i32, i32* %12, align 4
  %563 = load i32*, i32** %7, align 8
  %564 = call i32 @MLX4_GET(i32 %562, i32* %563, i32 130)
  %565 = load i32, i32* %12, align 4
  %566 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %567 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %566, i32 0, i32 41
  store i32 %565, i32* %567, align 4
  %568 = load i32, i32* %12, align 4
  %569 = load i32*, i32** %7, align 8
  %570 = call i32 @MLX4_GET(i32 %568, i32* %569, i32 132)
  %571 = load i32, i32* %12, align 4
  %572 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %573 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %572, i32 0, i32 42
  store i32 %571, i32* %573, align 8
  %574 = load i32, i32* %12, align 4
  %575 = load i32*, i32** %7, align 8
  %576 = call i32 @MLX4_GET(i32 %574, i32* %575, i32 134)
  %577 = load i32, i32* %12, align 4
  %578 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %579 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %578, i32 0, i32 43
  store i32 %577, i32* %579, align 4
  %580 = load i32, i32* %12, align 4
  %581 = load i32*, i32** %7, align 8
  %582 = call i32 @MLX4_GET(i32 %580, i32* %581, i32 136)
  %583 = load i32, i32* %12, align 4
  %584 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %585 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %584, i32 0, i32 44
  store i32 %583, i32* %585, align 8
  %586 = load i32, i32* %12, align 4
  %587 = load i32*, i32** %7, align 8
  %588 = call i32 @MLX4_GET(i32 %586, i32* %587, i32 138)
  %589 = load i32, i32* %12, align 4
  %590 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %591 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %590, i32 0, i32 45
  store i32 %589, i32* %591, align 4
  %592 = load i32, i32* %12, align 4
  %593 = load i32*, i32** %7, align 8
  %594 = call i32 @MLX4_GET(i32 %592, i32* %593, i32 140)
  %595 = load i32, i32* %12, align 4
  %596 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %597 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %596, i32 0, i32 46
  store i32 %595, i32* %597, align 8
  %598 = load i32, i32* %12, align 4
  %599 = load i32*, i32** %7, align 8
  %600 = call i32 @MLX4_GET(i32 %598, i32* %599, i32 142)
  %601 = load i32, i32* %12, align 4
  %602 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %603 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %602, i32 0, i32 47
  store i32 %601, i32* %603, align 4
  %604 = load i32, i32* %12, align 4
  %605 = load i32*, i32** %7, align 8
  %606 = call i32 @MLX4_GET(i32 %604, i32* %605, i32 144)
  %607 = load i32, i32* %12, align 4
  %608 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %609 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %608, i32 0, i32 48
  store i32 %607, i32* %609, align 8
  %610 = load i32, i32* %12, align 4
  %611 = load i32*, i32** %7, align 8
  %612 = call i32 @MLX4_GET(i32 %610, i32* %611, i32 146)
  %613 = load i32, i32* %12, align 4
  %614 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %615 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %614, i32 0, i32 49
  store i32 %613, i32* %615, align 4
  %616 = load i32, i32* %8, align 4
  %617 = load i32*, i32** %7, align 8
  %618 = call i32 @MLX4_GET(i32 %616, i32* %617, i32 16)
  %619 = load i32, i32* %8, align 4
  %620 = shl i32 1, %619
  %621 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %622 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %621, i32 0, i32 50
  store i32 %620, i32* %622, align 8
  %623 = load i32, i32* %8, align 4
  %624 = load i32*, i32** %7, align 8
  %625 = call i32 @MLX4_GET(i32 %623, i32* %624, i32 17)
  %626 = load i32, i32* %8, align 4
  %627 = shl i32 1, %626
  %628 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %629 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %628, i32 0, i32 51
  store i32 %627, i32* %629, align 4
  %630 = load i32, i32* %8, align 4
  %631 = load i32*, i32** %7, align 8
  %632 = call i32 @MLX4_GET(i32 %630, i32* %631, i32 51)
  %633 = load i32, i32* %8, align 4
  %634 = and i32 %633, 1
  %635 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %636 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %635, i32 0, i32 52
  store i32 %634, i32* %636, align 8
  %637 = load i32, i32* %8, align 4
  %638 = load i32*, i32** %7, align 8
  %639 = call i32 @MLX4_GET(i32 %637, i32* %638, i32 85)
  %640 = load i32, i32* %8, align 4
  %641 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %642 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %641, i32 0, i32 53
  store i32 %640, i32* %642, align 4
  %643 = load i32, i32* %12, align 4
  %644 = load i32*, i32** %7, align 8
  %645 = call i32 @MLX4_GET(i32 %643, i32* %644, i32 86)
  %646 = load i32, i32* %12, align 4
  %647 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %648 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %647, i32 0, i32 54
  store i32 %646, i32* %648, align 8
  %649 = load i32, i32* %8, align 4
  %650 = load i32*, i32** %7, align 8
  %651 = call i32 @MLX4_GET(i32 %649, i32* %650, i32 122)
  %652 = load i32, i32* %8, align 4
  %653 = and i32 %652, 16
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %661

655:                                              ; preds = %504
  %656 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QOS_VPP, align 4
  %657 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %658 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %657, i32 0, i32 62
  %659 = load i32, i32* %658, align 8
  %660 = or i32 %659, %656
  store i32 %660, i32* %658, align 8
  br label %661

661:                                              ; preds = %655, %504
  %662 = load i32, i32* %8, align 4
  %663 = and i32 %662, 32
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %671

665:                                              ; preds = %661
  %666 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL, align 4
  %667 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %668 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %667, i32 0, i32 62
  %669 = load i32, i32* %668, align 8
  %670 = or i32 %669, %666
  store i32 %670, i32* %668, align 8
  br label %671

671:                                              ; preds = %665, %661
  %672 = load i32, i32* %8, align 4
  %673 = and i32 %672, 64
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %681

675:                                              ; preds = %671
  %676 = load i32, i32* @MLX4_DEV_CAP_FLAG2_CQE_STRIDE, align 4
  %677 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %678 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %677, i32 0, i32 62
  %679 = load i32, i32* %678, align 8
  %680 = or i32 %679, %676
  store i32 %680, i32* %678, align 8
  br label %681

681:                                              ; preds = %675, %671
  %682 = load i32, i32* %8, align 4
  %683 = and i32 %682, 128
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %691

685:                                              ; preds = %681
  %686 = load i32, i32* @MLX4_DEV_CAP_FLAG2_EQE_STRIDE, align 4
  %687 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %688 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %687, i32 0, i32 62
  %689 = load i32, i32* %688, align 8
  %690 = or i32 %689, %686
  store i32 %690, i32* %688, align 8
  br label %691

691:                                              ; preds = %685, %681
  %692 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %693 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %692, i32 0, i32 55
  %694 = load i32, i32* %693, align 4
  %695 = load i32*, i32** %7, align 8
  %696 = call i32 @MLX4_GET(i32 %694, i32* %695, i32 148)
  %697 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %698 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %697, i32 0, i32 55
  %699 = load i32, i32* %698, align 4
  %700 = load i32, i32* @MLX4_FLAG_ROCE_V1_V2, align 4
  %701 = and i32 %699, %700
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %709

703:                                              ; preds = %691
  %704 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ROCE_V1_V2, align 4
  %705 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %706 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %705, i32 0, i32 62
  %707 = load i32, i32* %706, align 8
  %708 = or i32 %707, %704
  store i32 %708, i32* %706, align 8
  br label %709

709:                                              ; preds = %703, %691
  %710 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %711 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %710, i32 0, i32 55
  %712 = load i32, i32* %711, align 4
  %713 = load i32, i32* @MLX4_FLAG_PORT_REMAP, align 4
  %714 = and i32 %712, %713
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %722

716:                                              ; preds = %709
  %717 = load i32, i32* @MLX4_DEV_CAP_FLAG2_PORT_REMAP, align 4
  %718 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %719 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %718, i32 0, i32 62
  %720 = load i32, i32* %719, align 8
  %721 = or i32 %720, %717
  store i32 %721, i32* %719, align 8
  br label %722

722:                                              ; preds = %716, %709
  %723 = load i32, i32* %8, align 4
  %724 = load i32*, i32** %7, align 8
  %725 = call i32 @MLX4_GET(i32 %723, i32* %724, i32 148)
  %726 = load i32, i32* %8, align 4
  %727 = and i32 %726, 32
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %735

729:                                              ; preds = %722
  %730 = load i32, i32* @MLX4_DEV_CAP_FLAG2_CONFIG_DEV, align 4
  %731 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %732 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %731, i32 0, i32 62
  %733 = load i32, i32* %732, align 8
  %734 = or i32 %733, %730
  store i32 %734, i32* %732, align 8
  br label %735

735:                                              ; preds = %729, %722
  %736 = load i32, i32* %8, align 4
  %737 = and i32 %736, 4
  %738 = icmp ne i32 %737, 0
  br i1 %738, label %739, label %745

739:                                              ; preds = %735
  %740 = load i32, i32* @MLX4_DEV_CAP_FLAG2_IGNORE_FCS, align 4
  %741 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %742 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %741, i32 0, i32 62
  %743 = load i32, i32* %742, align 8
  %744 = or i32 %743, %740
  store i32 %744, i32* %742, align 8
  br label %745

745:                                              ; preds = %739, %735
  %746 = load i32, i32* %8, align 4
  %747 = load i32*, i32** %7, align 8
  %748 = call i32 @MLX4_GET(i32 %746, i32* %747, i32 150)
  %749 = load i32, i32* %8, align 4
  %750 = and i32 %749, 128
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %758

752:                                              ; preds = %745
  %753 = load i32, i32* @MLX4_DEV_CAP_FLAG2_PHV_EN, align 4
  %754 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %755 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %754, i32 0, i32 62
  %756 = load i32, i32* %755, align 8
  %757 = or i32 %756, %753
  store i32 %757, i32* %755, align 8
  br label %758

758:                                              ; preds = %752, %745
  %759 = load i32, i32* %8, align 4
  %760 = and i32 %759, 64
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %762, label %768

762:                                              ; preds = %758
  %763 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SKIP_OUTER_VLAN, align 4
  %764 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %765 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %764, i32 0, i32 62
  %766 = load i32, i32* %765, align 8
  %767 = or i32 %766, %763
  store i32 %767, i32* %765, align 8
  br label %768

768:                                              ; preds = %762, %758
  %769 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %770 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %769, i32 0, i32 56
  %771 = load i32, i32* %770, align 8
  %772 = load i32*, i32** %7, align 8
  %773 = call i32 @MLX4_GET(i32 %771, i32* %772, i32 152)
  %774 = load i32, i32* %9, align 4
  %775 = load i32*, i32** %7, align 8
  %776 = call i32 @MLX4_GET(i32 %774, i32* %775, i32 156)
  %777 = load i32, i32* %9, align 4
  %778 = and i32 %777, 1
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %780, label %786

780:                                              ; preds = %768
  %781 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP, align 4
  %782 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %783 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %782, i32 0, i32 62
  %784 = load i32, i32* %783, align 8
  %785 = or i32 %784, %781
  store i32 %785, i32* %783, align 8
  br label %786

786:                                              ; preds = %780, %768
  %787 = load i32, i32* %9, align 4
  %788 = and i32 %787, 128
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %796

790:                                              ; preds = %786
  %791 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RECOVERABLE_ERROR_EVENT, align 4
  %792 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %793 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %792, i32 0, i32 62
  %794 = load i32, i32* %793, align 8
  %795 = or i32 %794, %791
  store i32 %795, i32* %793, align 8
  br label %796

796:                                              ; preds = %790, %786
  %797 = load i32, i32* %9, align 4
  %798 = and i32 %797, 256
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %800, label %806

800:                                              ; preds = %796
  %801 = load i32, i32* @MLX4_DEV_CAP_FLAG2_DRIVER_VERSION_TO_FW, align 4
  %802 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %803 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %802, i32 0, i32 62
  %804 = load i32, i32* %803, align 8
  %805 = or i32 %804, %801
  store i32 %805, i32* %803, align 8
  br label %806

806:                                              ; preds = %800, %796
  %807 = load i32, i32* %9, align 4
  %808 = load i32*, i32** %7, align 8
  %809 = call i32 @MLX4_GET(i32 %807, i32* %808, i32 156)
  %810 = load i32, i32* %9, align 4
  %811 = and i32 %810, 131072
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %819

813:                                              ; preds = %806
  %814 = load i32, i32* @MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT, align 4
  %815 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %816 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %815, i32 0, i32 62
  %817 = load i32, i32* %816, align 8
  %818 = or i32 %817, %814
  store i32 %818, i32* %816, align 8
  br label %819

819:                                              ; preds = %813, %806
  %820 = load i32, i32* %8, align 4
  %821 = load i32*, i32** %7, align 8
  %822 = call i32 @MLX4_GET(i32 %820, i32* %821, i32 157)
  %823 = load i32, i32* %8, align 4
  %824 = and i32 %823, 64
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %832

826:                                              ; preds = %819
  %827 = load i32, i32* @MLX4_DEV_CAP_FLAG2_REASSIGN_MAC_EN, align 4
  %828 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %829 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %828, i32 0, i32 62
  %830 = load i32, i32* %829, align 8
  %831 = or i32 %830, %827
  store i32 %831, i32* %829, align 8
  br label %832

832:                                              ; preds = %826, %819
  %833 = load i32, i32* %8, align 4
  %834 = load i32*, i32** %7, align 8
  %835 = call i32 @MLX4_GET(i32 %833, i32* %834, i32 158)
  %836 = load i32, i32* %8, align 4
  %837 = and i32 %836, 8
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %845

839:                                              ; preds = %832
  %840 = load i32, i32* @MLX4_DEV_CAP_FLAG2_VXLAN_OFFLOADS, align 4
  %841 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %842 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %841, i32 0, i32 62
  %843 = load i32, i32* %842, align 8
  %844 = or i32 %843, %840
  store i32 %844, i32* %842, align 8
  br label %845

845:                                              ; preds = %839, %832
  %846 = load i32, i32* %8, align 4
  %847 = and i32 %846, 32
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %849, label %855

849:                                              ; preds = %845
  %850 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ETS_CFG, align 4
  %851 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %852 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %851, i32 0, i32 62
  %853 = load i32, i32* %852, align 8
  %854 = or i32 %853, %850
  store i32 %854, i32* %852, align 8
  br label %855

855:                                              ; preds = %849, %845
  %856 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %857 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %856, i32 0, i32 57
  %858 = load i32, i32* %857, align 4
  %859 = load i32*, i32** %7, align 8
  %860 = call i32 @MLX4_GET(i32 %858, i32* %859, i32 160)
  %861 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %862 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %861, i32 0, i32 24
  %863 = load i32, i32* %862, align 8
  %864 = load i32, i32* @MLX4_DEV_CAP_FLAG_COUNTERS, align 4
  %865 = and i32 %863, %864
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %867, label %873

867:                                              ; preds = %855
  %868 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %869 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %868, i32 0, i32 58
  %870 = load i32, i32* %869, align 8
  %871 = load i32*, i32** %7, align 8
  %872 = call i32 @MLX4_GET(i32 %870, i32* %871, i32 104)
  br label %873

873:                                              ; preds = %867, %855
  %874 = load i32, i32* %9, align 4
  %875 = load i32*, i32** %7, align 8
  %876 = call i32 @MLX4_GET(i32 %874, i32* %875, i32 176)
  %877 = load i32, i32* %9, align 4
  %878 = and i32 %877, 1
  %879 = icmp ne i32 %878, 0
  br i1 %879, label %880, label %886

880:                                              ; preds = %873
  %881 = load i32, i32* @MLX4_DEV_CAP_FLAG2_MAD_DEMUX, align 4
  %882 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %883 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %882, i32 0, i32 62
  %884 = load i32, i32* %883, align 8
  %885 = or i32 %884, %881
  store i32 %885, i32* %883, align 8
  br label %886

886:                                              ; preds = %880, %873
  %887 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %888 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %887, i32 0, i32 59
  %889 = load i32, i32* %888, align 4
  %890 = load i32*, i32** %7, align 8
  %891 = call i32 @MLX4_GET(i32 %889, i32* %890, i32 168)
  %892 = load i32, i32* @MGM_QPN_MASK, align 4
  %893 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %894 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %893, i32 0, i32 59
  %895 = load i32, i32* %894, align 4
  %896 = and i32 %895, %892
  store i32 %896, i32* %894, align 4
  %897 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %898 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %897, i32 0, i32 60
  %899 = load i32, i32* %898, align 8
  %900 = load i32*, i32** %7, align 8
  %901 = call i32 @MLX4_GET(i32 %899, i32* %900, i32 172)
  %902 = load i32, i32* @MGM_QPN_MASK, align 4
  %903 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %904 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %903, i32 0, i32 60
  %905 = load i32, i32* %904, align 8
  %906 = and i32 %905, %902
  store i32 %906, i32* %904, align 8
  %907 = load i32, i32* %12, align 4
  %908 = load i32*, i32** %7, align 8
  %909 = call i32 @MLX4_GET(i32 %907, i32* %908, i32 204)
  %910 = load i32, i32* %12, align 4
  %911 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %912 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %911, i32 0, i32 64
  %913 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %912, i32 0, i32 0
  store i32 %910, i32* %913, align 8
  %914 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %915 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %914, i32 0, i32 64
  %916 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %915, i32 0, i32 0
  %917 = load i32, i32* %916, align 8
  %918 = icmp ne i32 %917, 0
  br i1 %918, label %919, label %951

919:                                              ; preds = %886
  %920 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QP_RATE_LIMIT, align 4
  %921 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %922 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %921, i32 0, i32 62
  %923 = load i32, i32* %922, align 8
  %924 = or i32 %923, %920
  store i32 %924, i32* %922, align 8
  %925 = load i32, i32* %12, align 4
  %926 = load i32*, i32** %7, align 8
  %927 = call i32 @MLX4_GET(i32 %925, i32* %926, i32 208)
  %928 = load i32, i32* %12, align 4
  %929 = and i32 %928, 4095
  %930 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %931 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %930, i32 0, i32 64
  %932 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %931, i32 0, i32 1
  store i32 %929, i32* %932, align 4
  %933 = load i32, i32* %12, align 4
  %934 = ashr i32 %933, 14
  %935 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %936 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %935, i32 0, i32 64
  %937 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %936, i32 0, i32 2
  store i32 %934, i32* %937, align 8
  %938 = load i32, i32* %12, align 4
  %939 = load i32*, i32** %7, align 8
  %940 = call i32 @MLX4_GET(i32 %938, i32* %939, i32 210)
  %941 = load i32, i32* %12, align 4
  %942 = and i32 %941, 4095
  %943 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %944 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %943, i32 0, i32 64
  %945 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %944, i32 0, i32 3
  store i32 %942, i32* %945, align 4
  %946 = load i32, i32* %12, align 4
  %947 = ashr i32 %946, 14
  %948 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %949 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %948, i32 0, i32 64
  %950 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %949, i32 0, i32 4
  store i32 %947, i32* %950, align 8
  br label %951

951:                                              ; preds = %919, %886
  %952 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %953 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %952, i32 0, i32 61
  %954 = load i32, i32* %953, align 4
  %955 = load i32*, i32** %7, align 8
  %956 = call i32 @MLX4_GET(i32 %954, i32* %955, i32 228)
  %957 = load i32, i32* %9, align 4
  %958 = load i32*, i32** %7, align 8
  %959 = call i32 @MLX4_GET(i32 %957, i32* %958, i32 112)
  %960 = load i32, i32* %9, align 4
  %961 = and i32 %960, 65536
  %962 = icmp ne i32 %961, 0
  br i1 %962, label %963, label %969

963:                                              ; preds = %951
  %964 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP, align 4
  %965 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %966 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %965, i32 0, i32 62
  %967 = load i32, i32* %966, align 8
  %968 = or i32 %967, %964
  store i32 %968, i32* %966, align 8
  br label %969

969:                                              ; preds = %963, %951
  %970 = load i32, i32* %9, align 4
  %971 = and i32 %970, 262144
  %972 = icmp ne i32 %971, 0
  br i1 %972, label %973, label %979

973:                                              ; preds = %969
  %974 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB, align 4
  %975 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %976 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %975, i32 0, i32 62
  %977 = load i32, i32* %976, align 8
  %978 = or i32 %977, %974
  store i32 %978, i32* %976, align 8
  br label %979

979:                                              ; preds = %973, %969
  %980 = load i32, i32* %9, align 4
  %981 = and i32 %980, 524288
  %982 = icmp ne i32 %981, 0
  br i1 %982, label %983, label %989

983:                                              ; preds = %979
  %984 = load i32, i32* @MLX4_DEV_CAP_FLAG2_LB_SRC_CHK, align 4
  %985 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %986 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %985, i32 0, i32 62
  %987 = load i32, i32* %986, align 8
  %988 = or i32 %987, %984
  store i32 %988, i32* %986, align 8
  br label %989

989:                                              ; preds = %983, %979
  %990 = load i32, i32* %9, align 4
  %991 = and i32 %990, 67108864
  %992 = icmp ne i32 %991, 0
  br i1 %992, label %993, label %999

993:                                              ; preds = %989
  %994 = load i32, i32* @MLX4_DEV_CAP_FLAG2_VLAN_CONTROL, align 4
  %995 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %996 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %995, i32 0, i32 62
  %997 = load i32, i32* %996, align 8
  %998 = or i32 %997, %994
  store i32 %998, i32* %996, align 8
  br label %999

999:                                              ; preds = %993, %989
  %1000 = load i32, i32* %9, align 4
  %1001 = and i32 %1000, 1048576
  %1002 = icmp ne i32 %1001, 0
  br i1 %1002, label %1003, label %1009

1003:                                             ; preds = %999
  %1004 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FSM, align 4
  %1005 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1006 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1005, i32 0, i32 62
  %1007 = load i32, i32* %1006, align 8
  %1008 = or i32 %1007, %1004
  store i32 %1008, i32* %1006, align 8
  br label %1009

1009:                                             ; preds = %1003, %999
  %1010 = load i32, i32* %9, align 4
  %1011 = and i32 %1010, 2097152
  %1012 = icmp ne i32 %1011, 0
  br i1 %1012, label %1013, label %1019

1013:                                             ; preds = %1009
  %1014 = load i32, i32* @MLX4_DEV_CAP_FLAG2_80_VFS, align 4
  %1015 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1016 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1015, i32 0, i32 62
  %1017 = load i32, i32* %1016, align 8
  %1018 = or i32 %1017, %1014
  store i32 %1018, i32* %1016, align 8
  br label %1019

1019:                                             ; preds = %1013, %1009
  %1020 = load i32, i32* %9, align 4
  %1021 = and i32 %1020, 8388608
  %1022 = icmp ne i32 %1021, 0
  br i1 %1022, label %1023, label %1029

1023:                                             ; preds = %1019
  %1024 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SW_CQ_INIT, align 4
  %1025 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1026 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1025, i32 0, i32 62
  %1027 = load i32, i32* %1026, align 8
  %1028 = or i32 %1027, %1024
  store i32 %1028, i32* %1026, align 8
  br label %1029

1029:                                             ; preds = %1023, %1019
  store i32 1, i32* %15, align 4
  br label %1030

1030:                                             ; preds = %1050, %1029
  %1031 = load i32, i32* %15, align 4
  %1032 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1033 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1032, i32 0, i32 19
  %1034 = load i32, i32* %1033, align 4
  %1035 = icmp sle i32 %1031, %1034
  br i1 %1035, label %1036, label %1053

1036:                                             ; preds = %1030
  %1037 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %1038 = load i32, i32* %15, align 4
  %1039 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1040 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1039, i32 0, i32 63
  %1041 = load i64, i64* %1040, align 8
  %1042 = load i32, i32* %15, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = add nsw i64 %1041, %1043
  %1045 = call i32 @mlx4_QUERY_PORT(%struct.mlx4_dev* %1037, i32 %1038, i64 %1044)
  store i32 %1045, i32* %14, align 4
  %1046 = load i32, i32* %14, align 4
  %1047 = icmp ne i32 %1046, 0
  br i1 %1047, label %1048, label %1049

1048:                                             ; preds = %1036
  br label %1076

1049:                                             ; preds = %1036
  br label %1050

1050:                                             ; preds = %1049
  %1051 = load i32, i32* %15, align 4
  %1052 = add nsw i32 %1051, 1
  store i32 %1052, i32* %15, align 4
  br label %1030

1053:                                             ; preds = %1030
  %1054 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1055 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1054, i32 0, i32 12
  %1056 = load i32, i32* %1055, align 8
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1058, label %1069

1058:                                             ; preds = %1053
  %1059 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1060 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1059, i32 0, i32 26
  %1061 = load i32, i32* %1060, align 8
  %1062 = mul nsw i32 %1061, 4
  %1063 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1064 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1063, i32 0, i32 8
  %1065 = load i32, i32* %1064, align 8
  %1066 = call i32 @max(i32 %1062, i32 %1065)
  %1067 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1068 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1067, i32 0, i32 8
  store i32 %1066, i32* %1068, align 8
  br label %1075

1069:                                             ; preds = %1053
  %1070 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SYS_EQS, align 4
  %1071 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1072 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1071, i32 0, i32 62
  %1073 = load i32, i32* %1072, align 8
  %1074 = or i32 %1073, %1070
  store i32 %1074, i32* %1072, align 8
  br label %1075

1075:                                             ; preds = %1069, %1058
  br label %1076

1076:                                             ; preds = %1075, %1048, %40
  %1077 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %1078 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %1079 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %1077, %struct.mlx4_cmd_mailbox* %1078)
  %1080 = load i32, i32* %14, align 4
  store i32 %1080, i32* %3, align 4
  br label %1081

1081:                                             ; preds = %1076, %23
  %1082 = load i32, i32* %3, align 4
  ret i32 %1082
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @disable_unsupported_roce_caps(i32*) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_QUERY_PORT(%struct.mlx4_dev*, i32, i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
