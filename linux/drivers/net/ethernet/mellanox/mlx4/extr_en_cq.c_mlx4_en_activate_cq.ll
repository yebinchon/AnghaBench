; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_cq.c_mlx4_en_activate_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_cq.c_mlx4_en_activate_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i64, i32, %struct.TYPE_14__, %struct.TYPE_13__**, %struct.mlx4_en_cq**, %struct.mlx4_en_dev* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_18__*, i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.mlx4_en_cq = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_16__, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64*, i64* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i64* }

@.str = private unnamed_addr constant [40 x i8] c"Failed assigning an EQ to CQ vector %d\0A\00", align 1
@MLX4_RES_USAGE_DRIVER = common dso_local global i32 0, align 4
@mlx4_en_cq_event = common dso_local global i32 0, align 4
@mlx4_en_tx_irq = common dso_local global i32 0, align 4
@mlx4_en_poll_tx_cq = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@mlx4_en_rx_irq = common dso_local global i32 0, align 4
@mlx4_en_poll_rx_cq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_en_cq*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 5
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  store %struct.mlx4_en_dev* %15, %struct.mlx4_en_dev** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  store i64* %30, i64** %33, align 8
  %34 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  store i64* %39, i64** %42, align 8
  %43 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  store i64 0, i64* %46, align 8
  %47 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  store i64 0, i64* %50, align 8
  %51 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memset(i32 %53, i32 0, i32 %56)
  %58 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 130
  br i1 %61, label %62, label %117

62:                                               ; preds = %3
  %63 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mlx4_is_eq_vector_valid(%struct.TYPE_18__* %65, i64 %68, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %106, label %74

74:                                               ; preds = %62
  %75 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %75, i32 0, i32 3
  %77 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %76, align 8
  %78 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %77, i64 %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cpumask_first(i32 %84)
  %86 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %94, i32 0, i32 3
  %96 = call i32 @mlx4_assign_eq(%struct.TYPE_18__* %90, i64 %93, i32* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %74
  %100 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %101 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mlx4_err(%struct.mlx4_en_dev* %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %253

105:                                              ; preds = %74
  store i32 1, i32* %11, align 4
  br label %106

106:                                              ; preds = %105, %62
  %107 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mlx4_eq_get_irq(%struct.TYPE_18__* %109, i32 %112)
  %114 = call i32 @irq_to_desc(i32 %113)
  %115 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %116 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 4
  br label %135

117:                                              ; preds = %3
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = srem i32 %118, %121
  store i32 %122, i32* %7, align 4
  %123 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %123, i32 0, i32 4
  %125 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %125, i64 %127
  %129 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %128, align 8
  store %struct.mlx4_en_cq* %129, %struct.mlx4_en_cq** %12, align 8
  %130 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %12, align 8
  %131 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %134 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %117, %106
  %136 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %137 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 130
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %142 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %141, i32 0, i32 3
  %143 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %142, align 8
  %144 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %145 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %143, i64 %146
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %152 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %140, %135
  %154 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %155 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 130
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %160 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %158, %153
  %165 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %166 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 130
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %171 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169, %158
  store i32 1, i32* %10, align 4
  br label %176

176:                                              ; preds = %175, %169, %164
  %177 = load i32, i32* @MLX4_RES_USAGE_DRIVER, align 4
  %178 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %179 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  store i32 %177, i32* %180, align 8
  %181 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %182 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %181, i32 0, i32 0
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %182, align 8
  %184 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %185 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %188 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %187, i32 0, i32 7
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %191 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %190, i32 0, i32 1
  %192 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %193 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %198 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %197, i32 0, i32 6
  %199 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %200 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %204 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = call i32 @mlx4_cq_alloc(%struct.TYPE_18__* %183, i32 %186, i32* %189, i32* %191, i32 %196, %struct.TYPE_12__* %198, i32 %201, i32 0, i32 %202, i32* %205, i32 0)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %176
  br label %253

210:                                              ; preds = %176
  %211 = load i32, i32* @mlx4_en_cq_event, align 4
  %212 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %213 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  store i32 %211, i32* %214, align 4
  %215 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %216 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  switch i32 %217, label %252 [
    i32 129, label %218
    i32 130, label %234
    i32 128, label %249
  ]

218:                                              ; preds = %210
  %219 = load i32, i32* @mlx4_en_tx_irq, align 4
  %220 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %221 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %224 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %227 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %226, i32 0, i32 4
  %228 = load i32, i32* @mlx4_en_poll_tx_cq, align 4
  %229 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %230 = call i32 @netif_tx_napi_add(i32 %225, i32* %227, i32 %228, i32 %229)
  %231 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %232 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %231, i32 0, i32 4
  %233 = call i32 @napi_enable(i32* %232)
  br label %252

234:                                              ; preds = %210
  %235 = load i32, i32* @mlx4_en_rx_irq, align 4
  %236 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %237 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  store i32 %235, i32* %238, align 8
  %239 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %240 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %243 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %242, i32 0, i32 4
  %244 = load i32, i32* @mlx4_en_poll_rx_cq, align 4
  %245 = call i32 @netif_napi_add(i32 %241, i32* %243, i32 %244, i32 64)
  %246 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %247 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %246, i32 0, i32 4
  %248 = call i32 @napi_enable(i32* %247)
  br label %252

249:                                              ; preds = %210
  %250 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %251 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %250, i32 0, i32 2
  store i32 0, i32* %251, align 8
  br label %252

252:                                              ; preds = %210, %249, %234, %218
  store i32 0, i32* %4, align 4
  br label %274

253:                                              ; preds = %209, %99
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  %257 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %258 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %257, i32 0, i32 0
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %258, align 8
  %260 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %261 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @mlx4_release_eq(%struct.TYPE_18__* %259, i32 %262)
  br label %264

264:                                              ; preds = %256, %253
  %265 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %266 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %265, i32 0, i32 0
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %272 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %271, i32 0, i32 3
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* %9, align 4
  store i32 %273, i32* %4, align 4
  br label %274

274:                                              ; preds = %264, %252
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mlx4_is_eq_vector_valid(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @mlx4_assign_eq(%struct.TYPE_18__*, i64, i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_en_dev*, i8*, i32) #1

declare dso_local i32 @irq_to_desc(i32) #1

declare dso_local i32 @mlx4_eq_get_irq(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mlx4_cq_alloc(%struct.TYPE_18__*, i32, i32*, i32*, i32, %struct.TYPE_12__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @netif_tx_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx4_release_eq(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
