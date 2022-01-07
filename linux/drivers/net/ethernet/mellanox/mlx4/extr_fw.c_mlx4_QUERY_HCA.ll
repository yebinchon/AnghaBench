; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_HCA.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_QUERY_HCA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_init_hca_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32* }

@mlx4_QUERY_HCA.a0_dmfs_query_hw_steering = internal constant [4 x i32] [i32 131, i32 129, i32 128, i32 130], align 16
@MLX4_CMD_QUERY_HCA = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@INIT_HCA_QPC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_QP_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_SRQC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_SRQ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_CQC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_CQ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_ALTC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_AUXC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_EQC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_EQ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_NUM_SYS_EQS_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_RDMARC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_RD_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FLAGS_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@INIT_HCA_UC_STEERING_OFFSET = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_B0 = common dso_local global i64 0, align 8
@MLX4_STEERING_MODE_A0 = common dso_local global i64 0, align 8
@INIT_HCA_FS_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FS_LOG_TABLE_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_FS_A0_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_MC_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MC_HASH_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MC_TABLE_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_EQE_CQE_OFFSETS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_64B_EQE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_64B_CQE_ENABLED = common dso_local global i32 0, align 4
@INIT_HCA_EQE_CQE_STRIDE_OFFSET = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_EQE_STRIDE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_CQE_STRIDE_ENABLED = common dso_local global i32 0, align 4
@MLX4_CQE_SIZE_MASK_STRIDE = common dso_local global i32 0, align 4
@MLX4_EQE_SIZE_MASK_STRIDE = common dso_local global i32 0, align 4
@INIT_HCA_DMPT_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_TPT_MW_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_MPT_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_MTT_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_CMPT_BASE_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_UAR_PAGE_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_LOG_UAR_SZ_OFFSET = common dso_local global i32 0, align 4
@INIT_HCA_CACHELINE_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_HCA_CORE_CLOCK_OFFSET = common dso_local global i32 0, align 4
@QUERY_HCA_GLOBAL_CAPS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_HCA(%struct.mlx4_dev* %0, %struct.mlx4_init_hca_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_init_hca_param*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_init_hca_param* %1, %struct.mlx4_init_hca_param** %5, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %13)
  store %struct.mlx4_cmd_mailbox* %14, %struct.mlx4_cmd_mailbox** %6, align 8
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %16 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %19)
  store i32 %20, i32* %3, align 4
  br label %384

21:                                               ; preds = %2
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MLX4_CMD_QUERY_HCA, align 4
  %30 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %32 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %25, i32 0, i32 %28, i32 0, i32 0, i32 %29, i32 %30, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  br label %379

40:                                               ; preds = %21
  %41 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %42 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @MLX4_GET(i32 %43, i32* %44, i32 4)
  %46 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %47 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @MLX4_GET(i32 %48, i32* %49, i32 12)
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @INIT_HCA_QPC_BASE_OFFSET, align 4
  %54 = call i32 @MLX4_GET(i32 %51, i32* %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, -32
  %57 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @INIT_HCA_LOG_QP_OFFSET, align 4
  %62 = call i32 @MLX4_GET(i32 %59, i32* %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 31
  %65 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %66 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @INIT_HCA_SRQC_BASE_OFFSET, align 4
  %70 = call i32 @MLX4_GET(i32 %67, i32* %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, -32
  %73 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %74 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @INIT_HCA_LOG_SRQ_OFFSET, align 4
  %78 = call i32 @MLX4_GET(i32 %75, i32* %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 31
  %81 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %82 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @INIT_HCA_CQC_BASE_OFFSET, align 4
  %86 = call i32 @MLX4_GET(i32 %83, i32* %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, -32
  %89 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %90 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* @INIT_HCA_LOG_CQ_OFFSET, align 4
  %94 = call i32 @MLX4_GET(i32 %91, i32* %92, i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = and i32 %95, 31
  %97 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %98 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @INIT_HCA_ALTC_BASE_OFFSET, align 4
  %102 = call i32 @MLX4_GET(i32 %99, i32* %100, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %105 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* @INIT_HCA_AUXC_BASE_OFFSET, align 4
  %109 = call i32 @MLX4_GET(i32 %106, i32* %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %112 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* @INIT_HCA_EQC_BASE_OFFSET, align 4
  %116 = call i32 @MLX4_GET(i32 %113, i32* %114, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %117, -32
  %119 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %120 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %119, i32 0, i32 10
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @INIT_HCA_LOG_EQ_OFFSET, align 4
  %124 = call i32 @MLX4_GET(i32 %121, i32* %122, i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = and i32 %125, 31
  %127 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %128 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %127, i32 0, i32 11
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* @INIT_HCA_NUM_SYS_EQS_OFFSET, align 4
  %132 = call i32 @MLX4_GET(i32 %129, i32* %130, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, 4095
  %135 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %136 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %135, i32 0, i32 12
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* @INIT_HCA_RDMARC_BASE_OFFSET, align 4
  %140 = call i32 @MLX4_GET(i32 %137, i32* %138, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, -32
  %143 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %144 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %143, i32 0, i32 13
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* @INIT_HCA_LOG_RD_OFFSET, align 4
  %148 = call i32 @MLX4_GET(i32 %145, i32* %146, i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = and i32 %149, 7
  %151 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %152 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %151, i32 0, i32 14
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* @INIT_HCA_FLAGS_OFFSET, align 4
  %156 = call i32 @MLX4_GET(i32 %153, i32* %154, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN, align 4
  %159 = shl i32 1, %158
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %40
  %163 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %164 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %165 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %164, i32 0, i32 15
  store i64 %163, i64* %165, align 8
  br label %183

166:                                              ; preds = %40
  %167 = load i32, i32* %11, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* @INIT_HCA_UC_STEERING_OFFSET, align 4
  %170 = call i32 @MLX4_GET(i32 %167, i32* %168, i32 %169)
  %171 = load i32, i32* %11, align 4
  %172 = and i32 %171, 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load i64, i64* @MLX4_STEERING_MODE_B0, align 8
  %176 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %177 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %176, i32 0, i32 15
  store i64 %175, i64* %177, align 8
  br label %182

178:                                              ; preds = %166
  %179 = load i64, i64* @MLX4_STEERING_MODE_A0, align 8
  %180 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %181 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %180, i32 0, i32 15
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %178, %174
  br label %183

183:                                              ; preds = %182, %162
  %184 = load i32, i32* %9, align 4
  %185 = and i32 %184, 8192
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %189 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %188, i32 0, i32 16
  store i32 1, i32* %189, align 8
  br label %190

190:                                              ; preds = %187, %183
  %191 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %192 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %191, i32 0, i32 15
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %231

196:                                              ; preds = %190
  %197 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %198 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %197, i32 0, i32 17
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* @INIT_HCA_FS_BASE_OFFSET, align 4
  %202 = call i32 @MLX4_GET(i32 %199, i32* %200, i32 %201)
  %203 = load i32, i32* %11, align 4
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* @INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET, align 4
  %206 = call i32 @MLX4_GET(i32 %203, i32* %204, i32 %205)
  %207 = load i32, i32* %11, align 4
  %208 = and i32 %207, 31
  %209 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %210 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %209, i32 0, i32 18
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* @INIT_HCA_FS_LOG_TABLE_SZ_OFFSET, align 4
  %214 = call i32 @MLX4_GET(i32 %211, i32* %212, i32 %213)
  %215 = load i32, i32* %11, align 4
  %216 = and i32 %215, 31
  %217 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %218 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %217, i32 0, i32 19
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* @INIT_HCA_FS_A0_OFFSET, align 4
  %222 = call i32 @MLX4_GET(i32 %219, i32* %220, i32 %221)
  %223 = load i32, i32* %11, align 4
  %224 = ashr i32 %223, 6
  %225 = and i32 %224, 3
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* @mlx4_QUERY_HCA.a0_dmfs_query_hw_steering, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %230 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %229, i32 0, i32 20
  store i32 %228, i32* %230, align 8
  br label %262

231:                                              ; preds = %190
  %232 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %233 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %232, i32 0, i32 17
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %7, align 8
  %236 = load i32, i32* @INIT_HCA_MC_BASE_OFFSET, align 4
  %237 = call i32 @MLX4_GET(i32 %234, i32* %235, i32 %236)
  %238 = load i32, i32* %11, align 4
  %239 = load i32*, i32** %7, align 8
  %240 = load i32, i32* @INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET, align 4
  %241 = call i32 @MLX4_GET(i32 %238, i32* %239, i32 %240)
  %242 = load i32, i32* %11, align 4
  %243 = and i32 %242, 31
  %244 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %245 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %244, i32 0, i32 18
  store i32 %243, i32* %245, align 8
  %246 = load i32, i32* %11, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* @INIT_HCA_LOG_MC_HASH_SZ_OFFSET, align 4
  %249 = call i32 @MLX4_GET(i32 %246, i32* %247, i32 %248)
  %250 = load i32, i32* %11, align 4
  %251 = and i32 %250, 31
  %252 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %253 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %252, i32 0, i32 21
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32*, i32** %7, align 8
  %256 = load i32, i32* @INIT_HCA_LOG_MC_TABLE_SZ_OFFSET, align 4
  %257 = call i32 @MLX4_GET(i32 %254, i32* %255, i32 %256)
  %258 = load i32, i32* %11, align 4
  %259 = and i32 %258, 31
  %260 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %261 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %260, i32 0, i32 19
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %231, %196
  %263 = load i32, i32* %11, align 4
  %264 = load i32*, i32** %7, align 8
  %265 = load i32, i32* @INIT_HCA_EQE_CQE_OFFSETS, align 4
  %266 = call i32 @MLX4_GET(i32 %263, i32* %264, i32 %265)
  %267 = load i32, i32* %11, align 4
  %268 = and i32 %267, 32
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %262
  %271 = load i32, i32* @MLX4_DEV_CAP_64B_EQE_ENABLED, align 4
  %272 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %273 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %272, i32 0, i32 32
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %270, %262
  %277 = load i32, i32* %11, align 4
  %278 = and i32 %277, 64
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = load i32, i32* @MLX4_DEV_CAP_64B_CQE_ENABLED, align 4
  %282 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %283 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %282, i32 0, i32 32
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %280, %276
  %287 = load i32, i32* %11, align 4
  %288 = load i32*, i32** %7, align 8
  %289 = load i32, i32* @INIT_HCA_EQE_CQE_STRIDE_OFFSET, align 4
  %290 = call i32 @MLX4_GET(i32 %287, i32* %288, i32 %289)
  %291 = load i32, i32* %11, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %319

293:                                              ; preds = %286
  %294 = load i32, i32* @MLX4_DEV_CAP_EQE_STRIDE_ENABLED, align 4
  %295 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %296 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %295, i32 0, i32 32
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  %299 = load i32, i32* @MLX4_DEV_CAP_CQE_STRIDE_ENABLED, align 4
  %300 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %301 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %300, i32 0, i32 32
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* @MLX4_CQE_SIZE_MASK_STRIDE, align 4
  %306 = and i32 %304, %305
  %307 = add nsw i32 %306, 5
  %308 = shl i32 1, %307
  %309 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %310 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %309, i32 0, i32 22
  store i32 %308, i32* %310, align 8
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* @MLX4_EQE_SIZE_MASK_STRIDE, align 4
  %313 = and i32 %311, %312
  %314 = ashr i32 %313, 4
  %315 = add nsw i32 %314, 5
  %316 = shl i32 1, %315
  %317 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %318 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %317, i32 0, i32 23
  store i32 %316, i32* %318, align 4
  br label %319

319:                                              ; preds = %293, %286
  %320 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %321 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %320, i32 0, i32 24
  %322 = load i32, i32* %321, align 8
  %323 = load i32*, i32** %7, align 8
  %324 = load i32, i32* @INIT_HCA_DMPT_BASE_OFFSET, align 4
  %325 = call i32 @MLX4_GET(i32 %322, i32* %323, i32 %324)
  %326 = load i32, i32* %11, align 4
  %327 = load i32*, i32** %7, align 8
  %328 = load i32, i32* @INIT_HCA_TPT_MW_OFFSET, align 4
  %329 = call i32 @MLX4_GET(i32 %326, i32* %327, i32 %328)
  %330 = load i32, i32* %11, align 4
  %331 = ashr i32 %330, 7
  %332 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %333 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %332, i32 0, i32 25
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %11, align 4
  %335 = load i32*, i32** %7, align 8
  %336 = load i32, i32* @INIT_HCA_LOG_MPT_SZ_OFFSET, align 4
  %337 = call i32 @MLX4_GET(i32 %334, i32* %335, i32 %336)
  %338 = load i32, i32* %11, align 4
  %339 = and i32 %338, 63
  %340 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %341 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %340, i32 0, i32 26
  store i32 %339, i32* %341, align 8
  %342 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %343 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %342, i32 0, i32 27
  %344 = load i32, i32* %343, align 4
  %345 = load i32*, i32** %7, align 8
  %346 = load i32, i32* @INIT_HCA_MTT_BASE_OFFSET, align 4
  %347 = call i32 @MLX4_GET(i32 %344, i32* %345, i32 %346)
  %348 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %349 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %348, i32 0, i32 28
  %350 = load i32, i32* %349, align 8
  %351 = load i32*, i32** %7, align 8
  %352 = load i32, i32* @INIT_HCA_CMPT_BASE_OFFSET, align 4
  %353 = call i32 @MLX4_GET(i32 %350, i32* %351, i32 %352)
  %354 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %355 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %354, i32 0, i32 29
  %356 = load i32, i32* %355, align 4
  %357 = load i32*, i32** %7, align 8
  %358 = load i32, i32* @INIT_HCA_UAR_PAGE_SZ_OFFSET, align 4
  %359 = call i32 @MLX4_GET(i32 %356, i32* %357, i32 %358)
  %360 = load i32, i32* %11, align 4
  %361 = load i32*, i32** %7, align 8
  %362 = load i32, i32* @INIT_HCA_LOG_UAR_SZ_OFFSET, align 4
  %363 = call i32 @MLX4_GET(i32 %360, i32* %361, i32 %362)
  %364 = load i32, i32* %11, align 4
  %365 = and i32 %364, 15
  %366 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %367 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %366, i32 0, i32 30
  store i32 %365, i32* %367, align 8
  %368 = load i32, i32* %11, align 4
  %369 = load i32*, i32** %7, align 8
  %370 = load i32, i32* @INIT_HCA_CACHELINE_SZ_OFFSET, align 4
  %371 = call i32 @MLX4_GET(i32 %368, i32* %369, i32 %370)
  %372 = load i32, i32* %11, align 4
  %373 = and i32 %372, 2
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %319
  %376 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %377 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %376, i32 0, i32 31
  store i32 1, i32* %377, align 4
  br label %378

378:                                              ; preds = %375, %319
  br label %379

379:                                              ; preds = %378, %39
  %380 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %381 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %382 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %380, %struct.mlx4_cmd_mailbox* %381)
  %383 = load i32, i32* %12, align 4
  store i32 %383, i32* %3, align 4
  br label %384

384:                                              ; preds = %379, %18
  %385 = load i32, i32* %3, align 4
  ret i32 %385
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
