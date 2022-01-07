; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_FUNC_CAP_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_FUNC_CAP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.mlx4_vhcr = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.mlx4_slave_state*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.mlx4_slave_state = type { i32 }
%struct.TYPE_12__ = type { %struct.mlx4_vport_oper_state* }
%struct.mlx4_vport_oper_state = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.mlx4_func = type { i32, i32 }
%struct.mlx4_active_ports = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i64 0, align 8
@RES_SRQ = common dso_local global i64 0, align 8
@RES_CQ = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG2_SYS_EQS = common dso_local global i32 0, align 4
@RES_MPT = common dso_local global i64 0, align 8
@RES_MTT = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_CQ_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_CQ_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_EXTRA_FLAGS_A0_QP_ALLOC_FLAG = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_EXTRA_FLAGS_BF_QP_ALLOC_FLAG = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_EXTRA_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAGS0_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAGS1_NIC_INFO = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_FLAGS1_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_FLAG_ETH = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_FLAG_QUOTAS = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_FLAG_RDMA = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_FLAG_RESD_LKEY = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_FLAG_VALID_MAILBOX = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_FMR_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MAX_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MCG_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MCG_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MPT_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MPT_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MTT_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_MTT_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_NUM_PORTS_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PF_BHVR_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PHV_BIT = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_PHYS_PORT_ID = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PHYS_PORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_PRIV_VF_QKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP0_PROXY = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP0_TUNNEL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP1_PROXY = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP1_TUNNEL = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_QP_RESD_LKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_RESERVED_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_SRQ_QUOTA_OFFSET_DEP = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_SUPPORTS_NON_POWER_OF_2_NUM_EQS = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_SUPPORTS_VST_QINQ = common dso_local global i32 0, align 4
@QUERY_FUNC_CAP_VF_ENABLE_QP0 = common dso_local global i64 0, align 8
@QUERY_FUNC_CAP_VLAN_OFFLOAD_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_FUNC_CAP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.mlx4_func, align 4
  %22 = alloca %struct.mlx4_active_ports, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.mlx4_vport_oper_state*, align 8
  %25 = alloca %struct.mlx4_active_ports, align 4
  %26 = alloca %struct.mlx4_slave_state*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %28 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %27)
  store %struct.mlx4_priv* %28, %struct.mlx4_priv** %14, align 8
  store i32 0, i32* %20, align 4
  %29 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %212

33:                                               ; preds = %6
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %34, i32 %35)
  %37 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %22, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %41 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %38, i32 %39, i32 %42)
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %23, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %537

49:                                               ; preds = %33
  %50 = load i32, i32* %23, align 4
  %51 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %52 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %22, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @find_first_bit(i32 %58, i32 %62)
  %64 = sub i64 %56, %63
  store i64 %64, i64* %15, align 8
  %65 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %66 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %15, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @MLX4_PUT(i32 %67, i32 %69, i32 3)
  %71 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %72 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %16, align 8
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %76 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 8, %79
  %81 = add nsw i32 %78, %80
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %16, align 8
  %84 = add i64 %82, %83
  %85 = sub i64 %84, 1
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %18, align 4
  store i64 16, i64* %15, align 8
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i64, i64* %16, align 8
  %90 = call i64 @mlx4_vf_smi_enabled(%struct.mlx4_dev* %87, i32 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %49
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @mlx4_get_parav_qkey(%struct.mlx4_dev* %93, i32 %94, i32* %19)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %15, align 8
  %99 = or i64 %98, 8
  store i64 %99, i64* %15, align 8
  %100 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %101 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @MLX4_PUT(i32 %102, i32 %103, i32 4)
  br label %105

105:                                              ; preds = %97, %92, %49
  %106 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %107 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %15, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @MLX4_PUT(i32 %108, i32 %110, i32 12)
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %113 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = mul nsw i32 8, %116
  %118 = add nsw i32 %115, %117
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %16, align 8
  %121 = add i64 %119, %120
  %122 = sub i64 %121, 1
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %17, align 4
  %124 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %125 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @MLX4_PUT(i32 %126, i32 %127, i32 16)
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %17, align 4
  %131 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %132 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @MLX4_PUT(i32 %133, i32 %134, i32 24)
  %136 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %137 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @MLX4_PUT(i32 %138, i32 %139, i32 20)
  %141 = load i32, i32* %18, align 4
  %142 = add nsw i32 %141, 2
  store i32 %142, i32* %18, align 4
  %143 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %144 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @MLX4_PUT(i32 %145, i32 %146, i32 28)
  %148 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %149 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %152 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %156 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @MLX4_PUT(i32 %150, i32 %160, i32 40)
  %162 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %163 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %170, align 8
  %172 = load i64, i64* %16, align 8
  %173 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %171, i64 %172
  store %struct.mlx4_vport_oper_state* %173, %struct.mlx4_vport_oper_state** %24, align 8
  %174 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i64, i64* %16, align 8
  %177 = call i32 @mlx4_handle_vst_qinq(%struct.mlx4_priv* %174, i32 %175, i64 %176)
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %20, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %105
  %181 = load i32, i32* %20, align 4
  store i32 %181, i32* %7, align 4
  br label %537

182:                                              ; preds = %105
  store i64 0, i64* %15, align 8
  %183 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %184 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 14
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* %16, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load i64, i64* %15, align 8
  %193 = or i64 %192, 64
  store i64 %193, i64* %15, align 8
  br label %194

194:                                              ; preds = %191, %182
  %195 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %24, align 8
  %196 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @ETH_P_8021AD, align 4
  %200 = call i64 @htons(i32 %199)
  %201 = icmp eq i64 %198, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load i64, i64* %15, align 8
  %204 = or i64 %203, 32
  store i64 %204, i64* %15, align 8
  br label %205

205:                                              ; preds = %202, %194
  %206 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %207 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i64, i64* %15, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @MLX4_PUT(i32 %208, i32 %210, i32 8)
  br label %535

212:                                              ; preds = %6
  %213 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %214 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %531

217:                                              ; preds = %212
  %218 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %218, i32 %219)
  %221 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %25, i32 0, i32 0
  store i32 %220, i32* %221, align 4
  %222 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %223 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %226, i64 %228
  store %struct.mlx4_slave_state* %229, %struct.mlx4_slave_state** %26, align 8
  store i64 220, i64* %15, align 8
  %230 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %231 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i64, i64* %15, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @MLX4_PUT(i32 %232, i32 %234, i32 0)
  %236 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %25, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %239 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 13
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @bitmap_weight(i32 %237, i32 %241)
  %243 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %244 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 13
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @min(i32 %242, i32 %246)
  store i64 %247, i64* %15, align 8
  %248 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %249 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i64, i64* %15, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i32 @MLX4_PUT(i32 %250, i32 %252, i32 1)
  %254 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %255 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  store i32 %257, i32* %17, align 4
  %258 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %259 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %17, align 4
  %262 = call i32 @MLX4_PUT(i32 %260, i32 %261, i32 4)
  store i64 0, i64* %15, align 8
  %263 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %264 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i64, i64* %15, align 8
  %267 = trunc i64 %266 to i32
  %268 = call i32 @MLX4_PUT(i32 %265, i32 %267, i32 8)
  %269 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %270 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %273, align 8
  %275 = load i64, i64* @RES_QP, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %17, align 4
  %283 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %284 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %17, align 4
  %287 = call i32 @MLX4_PUT(i32 %285, i32 %286, i32 80)
  %288 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %289 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %17, align 4
  %292 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %293 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %17, align 4
  %296 = call i32 @MLX4_PUT(i32 %294, i32 %295, i32 16)
  %297 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %298 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %301, align 8
  %303 = load i64, i64* @RES_SRQ, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %17, align 4
  %311 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %312 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %17, align 4
  %315 = call i32 @MLX4_PUT(i32 %313, i32 %314, i32 88)
  %316 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %317 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 8
  store i32 %319, i32* %17, align 4
  %320 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %321 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %17, align 4
  %324 = call i32 @MLX4_PUT(i32 %322, i32 %323, i32 24)
  %325 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %326 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %329, align 8
  %331 = load i64, i64* @RES_CQ, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %17, align 4
  %339 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %340 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %17, align 4
  %343 = call i32 @MLX4_PUT(i32 %341, i32 %342, i32 84)
  %344 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %345 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  store i32 %347, i32* %17, align 4
  %348 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %349 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %17, align 4
  %352 = call i32 @MLX4_PUT(i32 %350, i32 %351, i32 20)
  %353 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %354 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 5
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SYS_EQS, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %217
  %361 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %362 = load i32, i32* %9, align 4
  %363 = call i64 @mlx4_QUERY_FUNC(%struct.mlx4_dev* %361, %struct.mlx4_func* %21, i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %399

365:                                              ; preds = %360, %217
  %366 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %367 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 31)
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %365
  %373 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %374 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 4
  br label %383

377:                                              ; preds = %365
  %378 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %379 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @rounddown_pow_of_two(i32 %381)
  br label %383

383:                                              ; preds = %377, %372
  %384 = phi i32 [ %376, %372 ], [ %382, %377 ]
  store i32 %384, i32* %17, align 4
  %385 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %386 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %17, align 4
  %389 = call i32 @MLX4_PUT(i32 %387, i32 %388, i32 44)
  %390 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %391 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 7
  %393 = load i32, i32* %392, align 8
  store i32 %393, i32* %17, align 4
  %394 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %395 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* %17, align 4
  %398 = call i32 @MLX4_PUT(i32 %396, i32 %397, i32 48)
  br label %427

399:                                              ; preds = %360
  %400 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %401 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 31)
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %399
  %407 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %21, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  br label %413

409:                                              ; preds = %399
  %410 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %21, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @rounddown_pow_of_two(i32 %411)
  br label %413

413:                                              ; preds = %409, %406
  %414 = phi i32 [ %408, %406 ], [ %412, %409 ]
  store i32 %414, i32* %17, align 4
  %415 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %416 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %17, align 4
  %419 = call i32 @MLX4_PUT(i32 %417, i32 %418, i32 44)
  %420 = getelementptr inbounds %struct.mlx4_func, %struct.mlx4_func* %21, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  store i32 %421, i32* %17, align 4
  %422 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %423 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* %17, align 4
  %426 = call i32 @MLX4_PUT(i32 %424, i32 %425, i32 48)
  br label %427

427:                                              ; preds = %413, %383
  %428 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %429 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %432, align 8
  %434 = load i64, i64* @RES_MPT, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 0
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %9, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = load i32, i32* %440, align 4
  store i32 %441, i32* %17, align 4
  %442 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %443 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* %17, align 4
  %446 = call i32 @MLX4_PUT(i32 %444, i32 %445, i32 96)
  %447 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %448 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 8
  %450 = load i32, i32* %449, align 4
  store i32 %450, i32* %17, align 4
  %451 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %452 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* %17, align 4
  %455 = call i32 @MLX4_PUT(i32 %453, i32 %454, i32 32)
  %456 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %457 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_9__*, %struct.TYPE_9__** %460, align 8
  %462 = load i64, i64* @RES_MTT, align 8
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %461, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 0
  %465 = load i32*, i32** %464, align 8
  %466 = load i32, i32* %9, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32, i32* %468, align 4
  store i32 %469, i32* %17, align 4
  %470 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %471 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* %17, align 4
  %474 = call i32 @MLX4_PUT(i32 %472, i32 %473, i32 100)
  %475 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %476 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %476, i32 0, i32 9
  %478 = load i32, i32* %477, align 8
  store i32 %478, i32* %17, align 4
  %479 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %480 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* %17, align 4
  %483 = call i32 @MLX4_PUT(i32 %481, i32 %482, i32 36)
  %484 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %485 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %485, i32 0, i32 10
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %489 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %489, i32 0, i32 11
  %491 = load i32, i32* %490, align 8
  %492 = add nsw i32 %487, %491
  store i32 %492, i32* %17, align 4
  %493 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %494 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* %17, align 4
  %497 = call i32 @MLX4_PUT(i32 %495, i32 %496, i32 104)
  %498 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %499 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %17, align 4
  %502 = call i32 @MLX4_PUT(i32 %500, i32 %501, i32 40)
  store i32 -1073741824, i32* %17, align 4
  %503 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %504 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* %17, align 4
  %507 = call i32 @MLX4_PUT(i32 %505, i32 %506, i32 108)
  %508 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %509 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %509, i32 0, i32 12
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* %9, align 4
  %513 = shl i32 %512, 8
  %514 = and i32 %513, 65280
  %515 = add nsw i32 %511, %514
  store i32 %515, i32* %17, align 4
  %516 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %517 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* %17, align 4
  %520 = call i32 @MLX4_PUT(i32 %518, i32 %519, i32 72)
  %521 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %522 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 30)
  %525 = and i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %530

527:                                              ; preds = %427
  %528 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %26, align 8
  %529 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %528, i32 0, i32 0
  store i32 1, i32* %529, align 4
  br label %530

530:                                              ; preds = %527, %427
  br label %534

531:                                              ; preds = %212
  %532 = load i32, i32* @EINVAL, align 4
  %533 = sub nsw i32 0, %532
  store i32 %533, i32* %20, align 4
  br label %534

534:                                              ; preds = %531, %530
  br label %535

535:                                              ; preds = %534, %205
  %536 = load i32, i32* %20, align 4
  store i32 %536, i32* %7, align 4
  br label %537

537:                                              ; preds = %535, %180, %46
  %538 = load i32, i32* %7, align 4
  ret i32 %538
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i64 @find_first_bit(i32, i32) #1

declare dso_local i32 @MLX4_PUT(i32, i32, i32) #1

declare dso_local i64 @mlx4_vf_smi_enabled(%struct.mlx4_dev*, i32, i64) #1

declare dso_local i32 @mlx4_get_parav_qkey(%struct.mlx4_dev*, i32, i32*) #1

declare dso_local i32 @mlx4_handle_vst_qinq(%struct.mlx4_priv*, i32, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i64 @mlx4_QUERY_FUNC(%struct.mlx4_dev*, %struct.mlx4_func*, i32) #1

declare dso_local i32 @BIT(...) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
