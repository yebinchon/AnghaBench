; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_init_hca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_init_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_profile = type { i32 }
%struct.mlx4_dev = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_init_hca_param = type { i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.mlx4_dev_cap = type { i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.mlx4_adapter = type { i32, i32 }
%struct.mlx4_config_dev_params = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"QUERY_DEV_CAP command failed, aborting\0A\00", align 1
@MLX4_STEERING_DMFS_A0_STATIC = common dso_local global i64 0, align 8
@MLX4_FUNC_CAP_DMFS_A0_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Fail to get physical port id\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Running from within kdump kernel. Using low memory profile\0A\00", align 1
@low_mem_profile = common dso_local global %struct.mlx4_profile zeroinitializer, align 4
@default_profile = common dso_local global %struct.mlx4_profile zeroinitializer, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@MLX4_FS_NUM_MCG = common dso_local global i32 0, align 4
@enable_4k_uar = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i8* null, align 8
@DEFAULT_UAR_PAGE_SHIFT = common dso_local global i8* null, align 8
@MLX4_DEV_CAP_FLAG_MEM_WINDOW = common dso_local global i32 0, align 4
@MLX4_BMME_FLAG_TYPE_2_WIN = common dso_local global i32 0, align 4
@INIT_HCA_TPT_MW_ENABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"INIT_HCA command failed, aborting\0A\00", align 1
@MLX4_DEV_CAP_FLAG2_SYS_EQS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"QUERY_FUNC command failed, aborting.\0A\00", align 1
@MLX4_QUERY_FUNC_NUM_SYS_EQS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"QUERY_HCA command failed, disable timestamp\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"HCA frequency is 0 - timestamping is not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Failed to map internal clock. Timestamping is not supported\0A\00", align 1
@MLX4_STEERING_DMFS_A0_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"Optimized steering validation failed\0A\00", align 1
@MLX4_STEERING_DMFS_A0_DISABLE = common dso_local global i64 0, align 8
@MLX4_QP_REGION_FW = common dso_local global i64 0, align 8
@MLX4_A0_STEERING_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"DMFS high rate steer mode is: %s\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"Failed to initialize slave\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to obtain slave caps\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to map blue flame area\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"QUERY_ADAPTER command failed, aborting\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"Failed to query CONFIG_DEV parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_init_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_hca(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca %struct.mlx4_init_hca_param*, align 8
  %6 = alloca %struct.mlx4_dev_cap*, align 8
  %7 = alloca %struct.mlx4_adapter, align 4
  %8 = alloca %struct.mlx4_profile, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_config_dev_params, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %12)
  store %struct.mlx4_priv* %13, %struct.mlx4_priv** %4, align 8
  store %struct.mlx4_init_hca_param* null, %struct.mlx4_init_hca_param** %5, align 8
  store %struct.mlx4_dev_cap* null, %struct.mlx4_dev_cap** %6, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %15 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %357, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlx4_init_hca_param* @kzalloc(i32 40, i32 %18)
  %20 = bitcast %struct.mlx4_init_hca_param* %19 to %struct.mlx4_dev_cap*
  store %struct.mlx4_dev_cap* %20, %struct.mlx4_dev_cap** %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mlx4_init_hca_param* @kzalloc(i32 40, i32 %21)
  store %struct.mlx4_init_hca_param* %22, %struct.mlx4_init_hca_param** %5, align 8
  %23 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %24 = icmp ne %struct.mlx4_dev_cap* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %27 = icmp ne %struct.mlx4_init_hca_param* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %17
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %478

31:                                               ; preds = %25
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %33 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %34 = bitcast %struct.mlx4_dev_cap* %33 to %struct.mlx4_init_hca_param*
  %35 = call i32 @mlx4_dev_cap(%struct.mlx4_dev* %32, %struct.mlx4_init_hca_param* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %40 = call i32 @mlx4_err(%struct.mlx4_dev* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %478

41:                                               ; preds = %31
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %43 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %44 = bitcast %struct.mlx4_dev_cap* %43 to %struct.mlx4_init_hca_param*
  %45 = call i32 @choose_steering_mode(%struct.mlx4_dev* %42, %struct.mlx4_init_hca_param* %44)
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %47 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %48 = bitcast %struct.mlx4_dev_cap* %47 to %struct.mlx4_init_hca_param*
  %49 = call i32 @choose_tunnel_offload_mode(%struct.mlx4_dev* %46, %struct.mlx4_init_hca_param* %48)
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MLX4_STEERING_DMFS_A0_STATIC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %41
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %58 = call i64 @mlx4_is_master(%struct.mlx4_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* @MLX4_FUNC_CAP_DMFS_A0_STATIC, align 4
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 16
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %56, %41
  %68 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %69 = call i32 @mlx4_get_phys_port_id(%struct.mlx4_dev* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %74 = call i32 @mlx4_err(%struct.mlx4_dev* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %77 = call i64 @mlx4_is_master(%struct.mlx4_dev* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = call i32 @mlx4_parav_master_pf_caps(%struct.mlx4_dev* %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = call i64 (...) @mlx4_low_memory_profile()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %87 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %86, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %88 = bitcast %struct.mlx4_profile* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 bitcast (%struct.mlx4_profile* @low_mem_profile to i8*), i64 4, i1 false)
  br label %91

89:                                               ; preds = %82
  %90 = bitcast %struct.mlx4_profile* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 bitcast (%struct.mlx4_profile* @default_profile to i8*), i64 4, i1 false)
  br label %91

91:                                               ; preds = %89, %85
  %92 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %93 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @MLX4_FS_NUM_MCG, align 4
  %100 = getelementptr inbounds %struct.mlx4_profile, %struct.mlx4_profile* %8, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %91
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %103 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %104 = bitcast %struct.mlx4_dev_cap* %103 to %struct.mlx4_init_hca_param*
  %105 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %106 = call i32 @mlx4_make_profile(%struct.mlx4_dev* %102, %struct.mlx4_profile* %8, %struct.mlx4_init_hca_param* %104, %struct.mlx4_init_hca_param* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %11, align 4
  br label %478

112:                                              ; preds = %101
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %114 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 15
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ilog2(i32 %116)
  %118 = sub nsw i32 32, %117
  %119 = shl i32 1, %118
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load i64, i64* @enable_4k_uar, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %112
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %128 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %153, label %133

133:                                              ; preds = %126, %112
  %134 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %135 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 14
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ilog2(i32 %137)
  %139 = load i8*, i8** @PAGE_SHIFT, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr i8, i8* %139, i64 %140
  %142 = load i8*, i8** @DEFAULT_UAR_PAGE_SHIFT, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %148 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** @DEFAULT_UAR_PAGE_SHIFT, align 8
  %150 = getelementptr i8, i8* %149, i64 -12
  %151 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %152 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %151, i32 0, i32 7
  store i8* %150, i8** %152, align 8
  br label %165

153:                                              ; preds = %126
  %154 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %155 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ilog2(i32 %157)
  %159 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %160 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load i8*, i8** @PAGE_SHIFT, align 8
  %162 = getelementptr i8, i8* %161, i64 -12
  %163 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %164 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %163, i32 0, i32 7
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %153, %133
  %166 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %167 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %166, i32 0, i32 6
  store i64 0, i64* %167, align 8
  %168 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %169 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @MLX4_DEV_CAP_FLAG_MEM_WINDOW, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %165
  %176 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %177 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @MLX4_BMME_FLAG_TYPE_2_WIN, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %175, %165
  %184 = load i64, i64* @INIT_HCA_TPT_MW_ENABLE, align 8
  %185 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %186 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %185, i32 0, i32 6
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %183, %175
  %188 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %189 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %190 = bitcast %struct.mlx4_dev_cap* %189 to %struct.mlx4_init_hca_param*
  %191 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @mlx4_init_icm(%struct.mlx4_dev* %188, %struct.mlx4_init_hca_param* %190, %struct.mlx4_init_hca_param* %191, i32 %192)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %478

197:                                              ; preds = %187
  %198 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %199 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %200 = call i32 @mlx4_INIT_HCA(%struct.mlx4_dev* %198, %struct.mlx4_init_hca_param* %199)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %205 = call i32 @mlx4_err(%struct.mlx4_dev* %204, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %470

206:                                              ; preds = %197
  %207 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %208 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SYS_EQS, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %249

213:                                              ; preds = %206
  %214 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %215 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %216 = bitcast %struct.mlx4_dev_cap* %215 to %struct.mlx4_init_hca_param*
  %217 = call i32 @mlx4_query_func(%struct.mlx4_dev* %214, %struct.mlx4_init_hca_param* %216)
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %222 = call i32 @mlx4_err(%struct.mlx4_dev* %221, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %459

223:                                              ; preds = %213
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @MLX4_QUERY_FUNC_NUM_SYS_EQS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %223
  %229 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %230 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %233 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 13
  store i32 %231, i32* %234, align 8
  %235 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %236 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %239 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 12
  store i32 %237, i32* %240, align 4
  %241 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %242 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %245 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 11
  store i32 %243, i32* %246, align 8
  br label %247

247:                                              ; preds = %228, %223
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248, %206
  %250 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %251 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %312

257:                                              ; preds = %249
  %258 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %259 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %260 = call i32 @mlx4_QUERY_HCA(%struct.mlx4_dev* %258, %struct.mlx4_init_hca_param* %259)
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* %11, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %257
  %264 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %265 = call i32 @mlx4_err(%struct.mlx4_dev* %264, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %266 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %267 = xor i32 %266, -1
  %268 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %269 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, %267
  store i32 %272, i32* %270, align 4
  br label %280

273:                                              ; preds = %257
  %274 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %275 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %278 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 10
  store i32 %276, i32* %279, align 4
  br label %280

280:                                              ; preds = %273, %263
  %281 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %282 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 10
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %280
  %287 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %288 = xor i32 %287, -1
  %289 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %290 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, %288
  store i32 %293, i32* %291, align 4
  %294 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %295 = call i32 @mlx4_err(%struct.mlx4_dev* %294, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %311

296:                                              ; preds = %280
  %297 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %298 = call i64 @map_internal_clock(%struct.mlx4_dev* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %310

300:                                              ; preds = %296
  %301 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %302 = xor i32 %301, -1
  %303 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %304 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = and i32 %306, %302
  store i32 %307, i32* %305, align 4
  %308 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %309 = call i32 @mlx4_err(%struct.mlx4_dev* %308, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  br label %310

310:                                              ; preds = %300, %296
  br label %311

311:                                              ; preds = %310, %286
  br label %312

312:                                              ; preds = %311, %249
  %313 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %314 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @MLX4_STEERING_DMFS_A0_NOT_SUPPORTED, align 8
  %318 = icmp ne i64 %316, %317
  br i1 %318, label %319, label %356

319:                                              ; preds = %312
  %320 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %321 = call i64 @mlx4_validate_optimized_steering(%struct.mlx4_dev* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %319
  %324 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %325 = call i32 @mlx4_warn(%struct.mlx4_dev* %324, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %326

326:                                              ; preds = %323, %319
  %327 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %328 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @MLX4_STEERING_DMFS_A0_DISABLE, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %348

333:                                              ; preds = %326
  %334 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %335 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 8
  %337 = load i32*, i32** %336, align 8
  %338 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %342 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 9
  store i32 %340, i32* %343, align 8
  %344 = load i32, i32* @MLX4_A0_STEERING_TABLE_SIZE, align 4
  %345 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %346 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 7
  store i32 %344, i32* %347, align 8
  br label %348

348:                                              ; preds = %333, %326
  %349 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %350 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %351 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = call i32 @dmfs_high_rate_steering_mode_str(i64 %353)
  %355 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %349, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %354)
  br label %356

356:                                              ; preds = %348, %312
  br label %381

357:                                              ; preds = %1
  %358 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %359 = call i32 @mlx4_init_slave(%struct.mlx4_dev* %358)
  store i32 %359, i32* %11, align 4
  %360 = load i32, i32* %11, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %372

362:                                              ; preds = %357
  %363 = load i32, i32* %11, align 4
  %364 = load i32, i32* @EPROBE_DEFER, align 4
  %365 = sub nsw i32 0, %364
  %366 = icmp ne i32 %363, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %362
  %368 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %369 = call i32 @mlx4_err(%struct.mlx4_dev* %368, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %370

370:                                              ; preds = %367, %362
  %371 = load i32, i32* %11, align 4
  store i32 %371, i32* %2, align 4
  br label %485

372:                                              ; preds = %357
  %373 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %374 = call i32 @mlx4_slave_cap(%struct.mlx4_dev* %373)
  store i32 %374, i32* %11, align 4
  %375 = load i32, i32* %11, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %372
  %378 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %379 = call i32 @mlx4_err(%struct.mlx4_dev* %378, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %459

380:                                              ; preds = %372
  br label %381

381:                                              ; preds = %380, %356
  %382 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %383 = call i64 @map_bf_area(%struct.mlx4_dev* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %381
  %386 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %387 = call i32 @mlx4_dbg(%struct.mlx4_dev* %386, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %388

388:                                              ; preds = %385, %381
  %389 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %390 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %395, label %392

392:                                              ; preds = %388
  %393 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %394 = call i32 @mlx4_set_port_mask(%struct.mlx4_dev* %393)
  br label %395

395:                                              ; preds = %392, %388
  %396 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %397 = call i32 @mlx4_QUERY_ADAPTER(%struct.mlx4_dev* %396, %struct.mlx4_adapter* %7)
  store i32 %397, i32* %11, align 4
  %398 = load i32, i32* %11, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %395
  %401 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %402 = call i32 @mlx4_err(%struct.mlx4_dev* %401, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %447

403:                                              ; preds = %395
  %404 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %405 = call i32 @mlx4_config_dev_retrieval(%struct.mlx4_dev* %404, %struct.mlx4_config_dev_params* %10)
  store i32 %405, i32* %11, align 4
  %406 = load i32, i32* %11, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %416

408:                                              ; preds = %403
  %409 = load i32, i32* %11, align 4
  %410 = load i32, i32* @EOPNOTSUPP, align 4
  %411 = sub nsw i32 0, %410
  %412 = icmp ne i32 %409, %411
  br i1 %412, label %413, label %416

413:                                              ; preds = %408
  %414 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %415 = call i32 @mlx4_err(%struct.mlx4_dev* %414, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %435

416:                                              ; preds = %408, %403
  %417 = load i32, i32* %11, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %434, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.mlx4_config_dev_params, %struct.mlx4_config_dev_params* %10, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %423 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 6
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 1
  store i32 %421, i32* %426, align 4
  %427 = getelementptr inbounds %struct.mlx4_config_dev_params, %struct.mlx4_config_dev_params* %10, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %430 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 6
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 2
  store i32 %428, i32* %433, align 4
  br label %434

434:                                              ; preds = %419, %416
  br label %435

435:                                              ; preds = %434, %413
  %436 = getelementptr inbounds %struct.mlx4_adapter, %struct.mlx4_adapter* %7, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %439 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 0
  store i32 %437, i32* %440, align 4
  %441 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %442 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = getelementptr inbounds %struct.mlx4_adapter, %struct.mlx4_adapter* %7, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @memcpy(i32 %443, i32 %445, i32 4)
  store i32 0, i32* %11, align 4
  br label %478

447:                                              ; preds = %400
  %448 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %449 = call i32 @unmap_internal_clock(%struct.mlx4_dev* %448)
  %450 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %451 = call i32 @unmap_bf_area(%struct.mlx4_dev* %450)
  %452 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %453 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %447
  %456 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %457 = call i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev* %456)
  br label %458

458:                                              ; preds = %455, %447
  br label %459

459:                                              ; preds = %458, %377, %220
  %460 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %461 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %460)
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %459
  %464 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %465 = call i32 @mlx4_slave_exit(%struct.mlx4_dev* %464)
  br label %469

466:                                              ; preds = %459
  %467 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %468 = call i32 @mlx4_CLOSE_HCA(%struct.mlx4_dev* %467, i32 0)
  br label %469

469:                                              ; preds = %466, %463
  br label %470

470:                                              ; preds = %469, %203
  %471 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %472 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %477, label %474

474:                                              ; preds = %470
  %475 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %476 = call i32 @mlx4_free_icms(%struct.mlx4_dev* %475)
  br label %477

477:                                              ; preds = %474, %470
  br label %478

478:                                              ; preds = %477, %435, %196, %110, %38, %28
  %479 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %6, align 8
  %480 = bitcast %struct.mlx4_dev_cap* %479 to %struct.mlx4_init_hca_param*
  %481 = call i32 @kfree(%struct.mlx4_init_hca_param* %480)
  %482 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %5, align 8
  %483 = call i32 @kfree(%struct.mlx4_init_hca_param* %482)
  %484 = load i32, i32* %11, align 4
  store i32 %484, i32* %2, align 4
  br label %485

485:                                              ; preds = %478, %370
  %486 = load i32, i32* %2, align 4
  ret i32 %486
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local %struct.mlx4_init_hca_param* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_dev_cap(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @choose_steering_mode(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @choose_tunnel_offload_mode(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_phys_port_id(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_parav_master_pf_caps(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_low_memory_profile(...) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_make_profile(%struct.mlx4_dev*, %struct.mlx4_profile*, %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx4_init_icm(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param*, i32) #1

declare dso_local i32 @mlx4_INIT_HCA(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_query_func(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_QUERY_HCA(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i64 @map_internal_clock(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_validate_optimized_steering(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @dmfs_high_rate_steering_mode_str(i64) #1

declare dso_local i32 @mlx4_init_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_cap(%struct.mlx4_dev*) #1

declare dso_local i64 @map_bf_area(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_set_port_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_QUERY_ADAPTER(%struct.mlx4_dev*, %struct.mlx4_adapter*) #1

declare dso_local i32 @mlx4_config_dev_retrieval(%struct.mlx4_dev*, %struct.mlx4_config_dev_params*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @unmap_internal_clock(%struct.mlx4_dev*) #1

declare dso_local i32 @unmap_bf_area(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_exit(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_CLOSE_HCA(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_free_icms(%struct.mlx4_dev*) #1

declare dso_local i32 @kfree(%struct.mlx4_init_hca_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
