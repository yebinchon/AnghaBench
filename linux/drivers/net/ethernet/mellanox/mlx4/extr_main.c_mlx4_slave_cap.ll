; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_slave_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_slave_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i64, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.mlx4_dev_cap = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mlx4_func_cap = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mlx4_init_hca_param = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate memory for slave_cap\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"QUERY_HCA command failed, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unknown hca global capabilities\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"QUERY_DEV_CAP command failed, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"QUERY_FW command failed: could not get FW version\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"HCA minimum page size:%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [75 x i8] c"HCA minimum page size of %d bigger than kernel PAGE_SIZE of %ld, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [70 x i8] c"Invalid configuration: uar page size is larger than system page size\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"QUERY_FUNC_CAP general command failed, aborting (%d)\0A\00", align 1
@PF_CONTEXT_BEHAVIOUR_MASK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [48 x i8] c"Unknown pf context behaviour %x known flags %x\0A\00", align 1
@MLX4_NUM_PDS = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [52 x i8] c"HCA has %d ports, but we only support %d, aborting\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Set special QP caps failed. aborting\0A\00", align 1
@.str.12 = private unnamed_addr constant [90 x i8] c"HCA reported UAR region size of 0x%x bigger than PCI resource 2 size of 0x%llx, aborting\0A\00", align 1
@MLX4_DEV_CAP_64B_EQE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_64B_CQE_ENABLED = common dso_local global i32 0, align 4
@MLX4_USER_DEV_CAP_LARGE_CQE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_EQE_STRIDE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_CQE_STRIDE_ENABLED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"Timestamping is not supported in slave mode\0A\00", align 1
@MLX4_DEV_CAP_FLAG2_USER_MAC_EN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [51 x i8] c"User MAC FW update is not supported in slave mode\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"RSS support for IP fragments is %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@MLX4_QUERY_FUNC_FLAGS_BF_RES_QP = common dso_local global i32 0, align 4
@MLX4_RESERVE_ETH_BF_QP = common dso_local global i32 0, align 4
@MLX4_QUERY_FUNC_FLAGS_A0_RES_QP = common dso_local global i32 0, align 4
@MLX4_RESERVE_A0_QP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_slave_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_slave_cap(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.mlx4_dev_cap*, align 8
  %6 = alloca %struct.mlx4_func_cap*, align 8
  %7 = alloca %struct.mlx4_init_hca_param*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  store %struct.mlx4_dev_cap* null, %struct.mlx4_dev_cap** %5, align 8
  store %struct.mlx4_func_cap* null, %struct.mlx4_func_cap** %6, align 8
  store %struct.mlx4_init_hca_param* null, %struct.mlx4_init_hca_param** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlx4_init_hca_param* @kzalloc(i32 120, i32 %8)
  store %struct.mlx4_init_hca_param* %9, %struct.mlx4_init_hca_param** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mlx4_init_hca_param* @kzalloc(i32 120, i32 %10)
  %12 = bitcast %struct.mlx4_init_hca_param* %11 to %struct.mlx4_func_cap*
  store %struct.mlx4_func_cap* %12, %struct.mlx4_func_cap** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlx4_init_hca_param* @kzalloc(i32 120, i32 %13)
  %15 = bitcast %struct.mlx4_init_hca_param* %14 to %struct.mlx4_dev_cap*
  store %struct.mlx4_dev_cap* %15, %struct.mlx4_dev_cap** %5, align 8
  %16 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %17 = icmp ne %struct.mlx4_init_hca_param* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %20 = icmp ne %struct.mlx4_func_cap* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %23 = icmp ne %struct.mlx4_dev_cap* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %18, %1
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %26 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %469

29:                                               ; preds = %21
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %31 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %32 = call i32 @mlx4_QUERY_HCA(%struct.mlx4_dev* %30, %struct.mlx4_init_hca_param* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %37 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %469

38:                                               ; preds = %29
  %39 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %39, i32 0, i32 22
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %45 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %469

48:                                               ; preds = %38
  %49 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %50 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %49, i32 0, i32 21
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %53 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 23
  store i32 %51, i32* %54, align 8
  %55 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 1, %57
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %63 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %64 = bitcast %struct.mlx4_dev_cap* %63 to %struct.mlx4_init_hca_param*
  %65 = call i32 @mlx4_dev_cap(%struct.mlx4_dev* %62, %struct.mlx4_init_hca_param* %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %48
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %70 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %469

71:                                               ; preds = %48
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %73 = call i32 @mlx4_QUERY_FW(%struct.mlx4_dev* %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %78 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %77, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %81 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %4, align 8
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %88)
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @PAGE_SIZE, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %79
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %94, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i64 %95, i64 %96)
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %469

100:                                              ; preds = %79
  %101 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %102 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 12
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %106 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %108 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PAGE_SHIFT, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %100
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %114 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %113, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %469

117:                                              ; preds = %100
  %118 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %119 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %120 = bitcast %struct.mlx4_dev_cap* %119 to %struct.mlx4_init_hca_param*
  %121 = call i32 @mlx4_set_num_reserved_uars(%struct.mlx4_dev* %118, %struct.mlx4_init_hca_param* %120)
  %122 = load i64, i64* @PAGE_SIZE, align 8
  %123 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %124 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store i64 %122, i64* %125, align 8
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %127 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %128 = bitcast %struct.mlx4_func_cap* %127 to %struct.mlx4_init_hca_param*
  %129 = call i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev* %126, i32 0, %struct.mlx4_init_hca_param* %128)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %117
  %133 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %134 = load i32, i32* %3, align 4
  %135 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %133, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  br label %469

136:                                              ; preds = %117
  %137 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %138 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PF_CONTEXT_BEHAVIOUR_MASK, align 8
  %141 = or i64 %139, %140
  %142 = load i64, i64* @PF_CONTEXT_BEHAVIOUR_MASK, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %136
  %145 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %146 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %147 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @PF_CONTEXT_BEHAVIOUR_MASK, align 8
  %150 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %145, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i64 %148, i64 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %469

153:                                              ; preds = %136
  %154 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %155 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %158 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  store i64 %156, i64* %159, align 8
  %160 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %161 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %160, i32 0, i32 20
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %164 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 4
  store i32 %162, i32* %165, align 8
  %166 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %167 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %166, i32 0, i32 19
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %170 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  store i32 %168, i32* %171, align 4
  %172 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %173 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %172, i32 0, i32 18
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %176 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  store i32 %174, i32* %177, align 8
  %178 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %179 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %178, i32 0, i32 17
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %182 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  %184 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %185 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %184, i32 0, i32 16
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %188 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i32 %186, i32* %189, align 8
  %190 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %191 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = shl i32 1, %192
  %194 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %195 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  store i32 %193, i32* %196, align 8
  %197 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %198 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 1, %199
  %201 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %202 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 5
  store i32 %200, i32* %203, align 4
  %204 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %205 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = shl i32 1, %206
  %208 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %209 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 6
  store i32 %207, i32* %210, align 8
  %211 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %212 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = shl i32 1, %213
  %215 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %216 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 7
  store i32 %214, i32* %217, align 4
  %218 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %219 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %218, i32 0, i32 15
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %222 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 22
  store i32 %220, i32* %223, align 4
  %224 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %225 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %224, i32 0, i32 14
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %228 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 21
  store i32 %226, i32* %229, align 8
  %230 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %231 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %230, i32 0, i32 13
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %234 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 20
  store i32 %232, i32* %235, align 4
  %236 = load i32, i32* @MLX4_NUM_PDS, align 4
  %237 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %238 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 19
  store i32 %236, i32* %239, align 8
  %240 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %241 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 18
  store i64 0, i64* %242, align 8
  %243 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %244 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 17
  store i64 0, i64* %245, align 8
  %246 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %247 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @MLX4_MAX_PORTS, align 8
  %251 = icmp ugt i64 %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %153
  %253 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %254 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %255 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @MLX4_MAX_PORTS, align 8
  %259 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %253, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i64 %257, i64 %258)
  %260 = load i32, i32* @ENODEV, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %3, align 4
  br label %469

262:                                              ; preds = %153
  %263 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %264 = call i32 @mlx4_replace_zero_macs(%struct.mlx4_dev* %263)
  %265 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %266 = call i32 @mlx4_slave_special_qp_cap(%struct.mlx4_dev* %265)
  store i32 %266, i32* %3, align 4
  %267 = load i32, i32* %3, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %271 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %270, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %469

272:                                              ; preds = %262
  %273 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %274 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %278 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 8
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %282 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 9
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = sub i64 %280, %285
  %287 = mul i64 %276, %286
  %288 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %289 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %288, i32 0, i32 2
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @pci_resource_len(i32 %292, i32 2)
  %294 = sext i32 %293 to i64
  %295 = icmp ugt i64 %287, %294
  br i1 %295, label %296, label %317

296:                                              ; preds = %272
  %297 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %298 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %299 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %303 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 8
  %305 = load i64, i64* %304, align 8
  %306 = mul i64 %301, %305
  %307 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %308 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %307, i32 0, i32 2
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @pci_resource_len(i32 %311, i32 2)
  %313 = sext i32 %312 to i64
  %314 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %297, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.12, i64 0, i64 0), i64 %306, i64 %313)
  %315 = load i32, i32* @ENOMEM, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %3, align 4
  br label %462

317:                                              ; preds = %272
  %318 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %319 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %318, i32 0, i32 8
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @MLX4_DEV_CAP_64B_EQE_ENABLED, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %317
  %325 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %326 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 10
  store i32 64, i32* %327, align 4
  %328 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %329 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 11
  store i32 1, i32* %330, align 8
  br label %338

331:                                              ; preds = %317
  %332 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %333 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 10
  store i32 32, i32* %334, align 4
  %335 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %336 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 11
  store i32 0, i32* %337, align 8
  br label %338

338:                                              ; preds = %331, %324
  %339 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %340 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %339, i32 0, i32 8
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @MLX4_DEV_CAP_64B_CQE_ENABLED, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %355

345:                                              ; preds = %338
  %346 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %347 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 12
  store i32 64, i32* %348, align 4
  %349 = load i32, i32* @MLX4_USER_DEV_CAP_LARGE_CQE, align 4
  %350 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %351 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 16
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %349
  store i32 %354, i32* %352, align 4
  br label %359

355:                                              ; preds = %338
  %356 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %357 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 12
  store i32 32, i32* %358, align 4
  br label %359

359:                                              ; preds = %355, %345
  %360 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %361 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %360, i32 0, i32 8
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @MLX4_DEV_CAP_EQE_STRIDE_ENABLED, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %376

366:                                              ; preds = %359
  %367 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %368 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %367, i32 0, i32 9
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %371 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 10
  store i32 %369, i32* %372, align 4
  %373 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %374 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 11
  store i32 0, i32* %375, align 8
  br label %376

376:                                              ; preds = %366, %359
  %377 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %378 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %377, i32 0, i32 8
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @MLX4_DEV_CAP_CQE_STRIDE_ENABLED, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %396

383:                                              ; preds = %376
  %384 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %385 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %384, i32 0, i32 10
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %388 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 12
  store i32 %386, i32* %389, align 4
  %390 = load i32, i32* @MLX4_USER_DEV_CAP_LARGE_CQE, align 4
  %391 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %392 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 16
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %394, %390
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %383, %376
  %397 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %398 = xor i32 %397, -1
  %399 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %400 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 15
  %402 = load i32, i32* %401, align 8
  %403 = and i32 %402, %398
  store i32 %403, i32* %401, align 8
  %404 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %405 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %404, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  %406 = load i32, i32* @MLX4_DEV_CAP_FLAG2_USER_MAC_EN, align 4
  %407 = xor i32 %406, -1
  %408 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %409 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 15
  %411 = load i32, i32* %410, align 8
  %412 = and i32 %411, %407
  store i32 %412, i32* %410, align 8
  %413 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %414 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %413, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %415 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %416 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %417 = bitcast %struct.mlx4_dev_cap* %416 to %struct.mlx4_init_hca_param*
  %418 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %419 = call i32 @slave_adjust_steering_mode(%struct.mlx4_dev* %415, %struct.mlx4_init_hca_param* %417, %struct.mlx4_init_hca_param* %418)
  %420 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %421 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %422 = getelementptr inbounds %struct.mlx4_init_hca_param, %struct.mlx4_init_hca_param* %421, i32 0, i32 12
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  %425 = zext i1 %424 to i64
  %426 = select i1 %424, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %427 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_dbg(%struct.mlx4_dev* %420, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8* %426)
  %428 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %429 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %428, i32 0, i32 11
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @MLX4_QUERY_FUNC_FLAGS_BF_RES_QP, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %447

434:                                              ; preds = %396
  %435 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %436 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 14
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %447

440:                                              ; preds = %434
  %441 = load i32, i32* @MLX4_RESERVE_ETH_BF_QP, align 4
  %442 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %443 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 13
  %445 = load i32, i32* %444, align 8
  %446 = or i32 %445, %441
  store i32 %446, i32* %444, align 8
  br label %447

447:                                              ; preds = %440, %434, %396
  %448 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %449 = getelementptr inbounds %struct.mlx4_func_cap, %struct.mlx4_func_cap* %448, i32 0, i32 11
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @MLX4_QUERY_FUNC_FLAGS_A0_RES_QP, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %461

454:                                              ; preds = %447
  %455 = load i32, i32* @MLX4_RESERVE_A0_QP, align 4
  %456 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %457 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 13
  %459 = load i32, i32* %458, align 8
  %460 = or i32 %459, %455
  store i32 %460, i32* %458, align 8
  br label %461

461:                                              ; preds = %454, %447
  br label %462

462:                                              ; preds = %461, %296
  %463 = load i32, i32* %3, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %462
  %466 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %467 = call i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev* %466)
  br label %468

468:                                              ; preds = %465, %462
  br label %469

469:                                              ; preds = %468, %269, %252, %144, %132, %112, %93, %68, %43, %35, %24
  %470 = load %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param** %7, align 8
  %471 = call i32 @kfree(%struct.mlx4_init_hca_param* %470)
  %472 = load %struct.mlx4_func_cap*, %struct.mlx4_func_cap** %6, align 8
  %473 = bitcast %struct.mlx4_func_cap* %472 to %struct.mlx4_init_hca_param*
  %474 = call i32 @kfree(%struct.mlx4_init_hca_param* %473)
  %475 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %476 = bitcast %struct.mlx4_dev_cap* %475 to %struct.mlx4_init_hca_param*
  %477 = call i32 @kfree(%struct.mlx4_init_hca_param* %476)
  %478 = load i32, i32* %3, align 4
  ret i32 %478
}

declare dso_local %struct.mlx4_init_hca_param* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_QUERY_HCA(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_dev_cap(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_QUERY_FW(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_set_num_reserved_uars(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_QUERY_FUNC_CAP(%struct.mlx4_dev*, i32, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_replace_zero_macs(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_special_qp_cap(%struct.mlx4_dev*) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @slave_adjust_steering_mode(%struct.mlx4_dev*, %struct.mlx4_init_hca_param*, %struct.mlx4_init_hca_param*) #1

declare dso_local i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev*) #1

declare dso_local i32 @kfree(%struct.mlx4_init_hca_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
