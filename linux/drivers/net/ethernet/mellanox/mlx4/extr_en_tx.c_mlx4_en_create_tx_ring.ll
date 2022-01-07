; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_create_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_create_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_dev*, %struct.TYPE_25__ }
%struct.mlx4_en_dev = type { %struct.TYPE_26__*, i32, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.mlx4_en_tx_ring*, i32, %struct.TYPE_18__, i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_17__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_24__* }
%struct.TYPE_17__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed allocating TX ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HEADROOM = common dso_local global i32 0, align 4
@MAX_DESC_TXBBS = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Allocated tx_info ring at addr:%p size:%d\0A\00", align 1
@MAX_DESC_SIZE = common dso_local global i32 0, align 4
@MLX4_EN_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed allocating hwq resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Allocated TX ring (addr:%p) - buf:%p size:%d buf_size:%d dma:%llx\0A\00", align 1
@MLX4_RESERVE_ETH_BF_QP = common dso_local global i32 0, align 4
@MLX4_RES_USAGE_DRIVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed reserving qp for TX ring\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed allocating qp %d\0A\00", align 1
@mlx4_en_sqp_event = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"working without blueflame (%d)\0A\00", align 1
@MLX4_EN_PRIV_FLAGS_BLUEFLAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_create_tx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_tx_ring**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_en_dev*, align 8
  %15 = alloca %struct.mlx4_en_tx_ring*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %8, align 8
  store %struct.mlx4_en_tx_ring** %1, %struct.mlx4_en_tx_ring*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 2
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %19, align 8
  store %struct.mlx4_en_dev* %20, %struct.mlx4_en_dev** %14, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.mlx4_en_tx_ring* @kzalloc_node(i32 104, i32 %21, i32 %22)
  store %struct.mlx4_en_tx_ring* %23, %struct.mlx4_en_tx_ring** %15, align 8
  %24 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %25 = icmp ne %struct.mlx4_en_tx_ring* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %6
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %28 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %331

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HEADROOM, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* @MAX_DESC_TXBBS, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32* @kvmalloc_node(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %59, i32 0, i32 7
  store i32* %58, i32** %60, align 8
  %61 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %61, i32 0, i32 7
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %31
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %17, align 4
  br label %326

68:                                               ; preds = %31
  %69 = load i32, i32* @DRV, align 4
  %70 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %71 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %69, %struct.mlx4_en_priv* %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %73, i32 %74)
  %76 = load i32, i32* @MAX_DESC_SIZE, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call %struct.mlx4_en_tx_ring* @kmalloc_node(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %80, i32 0, i32 8
  store %struct.mlx4_en_tx_ring* %79, %struct.mlx4_en_tx_ring** %81, align 8
  %82 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %82, i32 0, i32 8
  %84 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %83, align 8
  %85 = icmp ne %struct.mlx4_en_tx_ring* %84, null
  br i1 %85, label %100, label %86

86:                                               ; preds = %68
  %87 = load i32, i32* @MAX_DESC_SIZE, align 4
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.mlx4_en_tx_ring* @kmalloc(i32 %87, i32 %88)
  %90 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %90, i32 0, i32 8
  store %struct.mlx4_en_tx_ring* %89, %struct.mlx4_en_tx_ring** %91, align 8
  %92 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %92, i32 0, i32 8
  %94 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %93, align 8
  %95 = icmp ne %struct.mlx4_en_tx_ring* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %17, align 4
  br label %319

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %68
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %103 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %101, %104
  %106 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %107 = call i32 @ALIGN(i32 %105, i32 %106)
  %108 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %108, i32 0, i32 9
  store i32 %107, i32* %109, align 8
  %110 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @set_dev_node(i32* %117, i32 %118)
  %120 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %121 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %120, i32 0, i32 0
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %121, align 8
  %123 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %123, i32 0, i32 10
  %125 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %126 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @mlx4_alloc_hwq_res(%struct.TYPE_26__* %122, %struct.TYPE_18__* %124, i32 %127)
  store i32 %128, i32* %17, align 4
  %129 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %130 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %129, i32 0, i32 0
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %138 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @set_dev_node(i32* %136, i32 %141)
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %100
  %146 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %147 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %312

148:                                              ; preds = %100
  %149 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %150 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %149, i32 0, i32 10
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %156 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %155, i32 0, i32 16
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @DRV, align 4
  %158 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %159 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %160 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %161 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %160, i32 0, i32 16
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %164 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %167 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %170 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %169, i32 0, i32 10
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %157, %struct.mlx4_en_priv* %158, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), %struct.mlx4_en_tx_ring* %159, i32 %162, i32 %165, i32 %168, i64 %174)
  %176 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %177 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %176, i32 0, i32 0
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %177, align 8
  %179 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %180 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %179, i32 0, i32 11
  %181 = load i32, i32* @MLX4_RESERVE_ETH_BF_QP, align 4
  %182 = load i32, i32* @MLX4_RES_USAGE_DRIVER, align 4
  %183 = call i32 @mlx4_qp_reserve_range(%struct.TYPE_26__* %178, i32 1, i32 1, i32* %180, i32 %181, i32 %182)
  store i32 %183, i32* %17, align 4
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %148
  %187 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %188 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %302

189:                                              ; preds = %148
  %190 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %191 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %190, i32 0, i32 0
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %191, align 8
  %193 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %194 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %193, i32 0, i32 11
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %197 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %196, i32 0, i32 15
  %198 = call i32 @mlx4_qp_alloc(%struct.TYPE_26__* %192, i32 %195, %struct.TYPE_17__* %197)
  store i32 %198, i32* %17, align 4
  %199 = load i32, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %189
  %202 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %203 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %204 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %203, i32 0, i32 11
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %202, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %205)
  br label %294

207:                                              ; preds = %189
  %208 = load i32, i32* @mlx4_en_sqp_event, align 4
  %209 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %210 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  %212 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %213 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %212, i32 0, i32 0
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %213, align 8
  %215 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %216 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %215, i32 0, i32 14
  %217 = load i32, i32* %12, align 4
  %218 = call i32 @mlx4_bf_alloc(%struct.TYPE_26__* %214, %struct.TYPE_19__* %216, i32 %217)
  store i32 %218, i32* %17, align 4
  %219 = load i32, i32* %17, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %249

221:                                              ; preds = %207
  %222 = load i32, i32* @DRV, align 4
  %223 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %224 = load i32, i32* %17, align 4
  %225 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %222, %struct.mlx4_en_priv* %223, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %224)
  %226 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %227 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %226, i32 0, i32 2
  %228 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %229 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %228, i32 0, i32 14
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  store %struct.TYPE_24__* %227, %struct.TYPE_24__** %230, align 8
  %231 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %232 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %235 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %234, i32 0, i32 14
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 0
  store i32 %233, i32* %238, align 4
  %239 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %240 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %239, i32 0, i32 4
  store i32 0, i32* %240, align 8
  %241 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %242 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %241, i32 0, i32 5
  store i32 0, i32* %242, align 4
  %243 = load i32, i32* @MLX4_EN_PRIV_FLAGS_BLUEFLAME, align 4
  %244 = xor i32 %243, -1
  %245 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %246 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = and i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %263

249:                                              ; preds = %207
  %250 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %251 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %250, i32 0, i32 5
  store i32 1, i32* %251, align 4
  %252 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %253 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @MLX4_EN_PRIV_FLAGS_BLUEFLAME, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  %258 = xor i1 %257, true
  %259 = xor i1 %258, true
  %260 = zext i1 %259 to i32
  %261 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %262 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %261, i32 0, i32 4
  store i32 %260, i32* %262, align 8
  br label %263

263:                                              ; preds = %249, %221
  %264 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %265 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %269 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %268, i32 0, i32 13
  store i32 %267, i32* %269, align 8
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %272 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %271, i32 0, i32 6
  store i32 %270, i32* %272, align 8
  %273 = load i32, i32* %13, align 4
  %274 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %275 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp slt i32 %273, %276
  br i1 %277, label %278, label %291

278:                                              ; preds = %263
  %279 = load i32, i32* %13, align 4
  %280 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %281 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %280, i32 0, i32 2
  %282 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %281, align 8
  %283 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %282, i32 0, i32 0
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @cpumask_local_spread(i32 %279, i32 %286)
  %288 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %289 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %288, i32 0, i32 12
  %290 = call i32 @cpumask_set_cpu(i32 %287, i32* %289)
  br label %291

291:                                              ; preds = %278, %263
  %292 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %293 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %9, align 8
  store %struct.mlx4_en_tx_ring* %292, %struct.mlx4_en_tx_ring** %293, align 8
  store i32 0, i32* %7, align 4
  br label %331

294:                                              ; preds = %201
  %295 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %296 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %295, i32 0, i32 0
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %296, align 8
  %298 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %299 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %298, i32 0, i32 11
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @mlx4_qp_release_range(%struct.TYPE_26__* %297, i32 %300, i32 1)
  br label %302

302:                                              ; preds = %294, %186
  %303 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %304 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %303, i32 0, i32 0
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %304, align 8
  %306 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %307 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %306, i32 0, i32 10
  %308 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %309 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @mlx4_free_hwq_res(%struct.TYPE_26__* %305, %struct.TYPE_18__* %307, i32 %310)
  br label %312

312:                                              ; preds = %302, %145
  %313 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %314 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %313, i32 0, i32 8
  %315 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %314, align 8
  %316 = call i32 @kfree(%struct.mlx4_en_tx_ring* %315)
  %317 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %318 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %317, i32 0, i32 8
  store %struct.mlx4_en_tx_ring* null, %struct.mlx4_en_tx_ring** %318, align 8
  br label %319

319:                                              ; preds = %312, %96
  %320 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %321 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %320, i32 0, i32 7
  %322 = load i32*, i32** %321, align 8
  %323 = call i32 @kvfree(i32* %322)
  %324 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %325 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %324, i32 0, i32 7
  store i32* null, i32** %325, align 8
  br label %326

326:                                              ; preds = %319, %65
  %327 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  %328 = call i32 @kfree(%struct.mlx4_en_tx_ring* %327)
  %329 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %9, align 8
  store %struct.mlx4_en_tx_ring* null, %struct.mlx4_en_tx_ring** %329, align 8
  %330 = load i32, i32* %17, align 4
  store i32 %330, i32* %7, align 4
  br label %331

331:                                              ; preds = %326, %291, %26
  %332 = load i32, i32* %7, align 4
  ret i32 %332
}

declare dso_local %struct.mlx4_en_tx_ring* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32* @kvmalloc_node(i32, i32, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local %struct.mlx4_en_tx_ring* @kmalloc_node(i32, i32, i32) #1

declare dso_local %struct.mlx4_en_tx_ring* @kmalloc(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @set_dev_node(i32*, i32) #1

declare dso_local i32 @mlx4_alloc_hwq_res(%struct.TYPE_26__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @mlx4_qp_reserve_range(%struct.TYPE_26__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mlx4_qp_alloc(%struct.TYPE_26__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @mlx4_bf_alloc(%struct.TYPE_26__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

declare dso_local i32 @mlx4_qp_release_range(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @mlx4_free_hwq_res(%struct.TYPE_26__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_en_tx_ring*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
