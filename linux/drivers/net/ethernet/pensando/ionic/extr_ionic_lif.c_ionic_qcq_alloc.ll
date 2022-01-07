; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_qcq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_qcq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.device*, %struct.ionic_dev }
%struct.device = type { i32 }
%struct.ionic_dev = type { i32 }
%struct.ionic_qcq = type { i32, i64, i64, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_14__, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_14__ = type { i8* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@IONIC_QCQ_F_SG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot allocate queue structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot allocate queue info\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot initialize queue\0A\00", align 1
@IONIC_QCQ_F_INTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"no intr for %s: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"no vector for %s: %d\0A\00", align 1
@IONIC_INTR_MASK_SET = common dso_local global i32 0, align 4
@INTR_INDEX_NOT_ASSIGNED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Cannot allocate completion queue info\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Cannot initialize completion queue\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Cannot allocate queue DMA memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"qcq alloc of %s%d failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_lif*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.ionic_qcq**)* @ionic_qcq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_qcq_alloc(%struct.ionic_lif* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.ionic_qcq** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ionic_lif*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ionic_qcq**, align 8
  %24 = alloca %struct.ionic_dev*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.device*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca %struct.ionic_qcq*, align 8
  %37 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i8* %3, i8** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store %struct.ionic_qcq** %10, %struct.ionic_qcq*** %23, align 8
  %38 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %39 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store %struct.ionic_dev* %41, %struct.ionic_dev** %24, align 8
  %42 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %43 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.device*, %struct.device** %45, align 8
  store %struct.device* %46, %struct.device** %29, align 8
  store i64 0, i64* %33, align 8
  store i64 0, i64* %34, align 8
  store i64 0, i64* %35, align 8
  %47 = load %struct.ionic_qcq**, %struct.ionic_qcq*** %23, align 8
  store %struct.ionic_qcq* null, %struct.ionic_qcq** %47, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = mul i32 %48, %49
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %25, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %20, align 4
  %54 = mul i32 %52, %53
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %26, align 8
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %21, align 4
  %58 = mul i32 %56, %57
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %27, align 8
  %60 = load i64, i64* %25, align 8
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = call i64 @ALIGN(i64 %60, i64 %61)
  %63 = load i64, i64* %26, align 8
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = call i64 @ALIGN(i64 %63, i64 %64)
  %66 = add i64 %62, %65
  store i64 %66, i64* %28, align 8
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i64, i64* %28, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %28, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @IONIC_QCQ_F_SG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %11
  %75 = load i64, i64* %27, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = call i64 @ALIGN(i64 %75, i64 %76)
  %78 = load i64, i64* %28, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %28, align 8
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = load i64, i64* %28, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %28, align 8
  br label %83

83:                                               ; preds = %74, %11
  %84 = load %struct.device*, %struct.device** %29, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @devm_kzalloc(%struct.device* %84, i32 72, i32 %85)
  %87 = bitcast i8* %86 to %struct.ionic_qcq*
  store %struct.ionic_qcq* %87, %struct.ionic_qcq** %36, align 8
  %88 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %89 = icmp ne %struct.ionic_qcq* %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %92 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @netdev_err(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %37, align 4
  br label %355

97:                                               ; preds = %83
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %100 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.device*, %struct.device** %29, align 8
  %102 = load i32, i32* %18, align 4
  %103 = zext i32 %102 to i64
  %104 = mul i64 1, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @devm_kzalloc(%struct.device* %101, i32 %105, i32 %106)
  %108 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %109 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  %111 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %112 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %97
  %117 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %118 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @netdev_err(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %37, align 4
  br label %355

123:                                              ; preds = %97
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %126 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %129 = load %struct.ionic_dev*, %struct.ionic_dev** %24, align 8
  %130 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %131 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %130, i32 0, i32 4
  %132 = load i32, i32* %15, align 4
  %133 = load i8*, i8** %16, align 8
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %22, align 4
  %138 = call i32 @ionic_q_init(%struct.ionic_lif* %128, %struct.ionic_dev* %129, %struct.TYPE_12__* %131, i32 %132, i8* %133, i32 %134, i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %37, align 4
  %139 = load i32, i32* %37, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %123
  %142 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %143 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @netdev_err(i32 %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %355

146:                                              ; preds = %123
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @IONIC_QCQ_F_INTR, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %222

151:                                              ; preds = %146
  %152 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %153 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %154 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %153, i32 0, i32 3
  %155 = call i32 @ionic_intr_alloc(%struct.ionic_lif* %152, %struct.TYPE_13__* %154)
  store i32 %155, i32* %37, align 4
  %156 = load i32, i32* %37, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %160 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i8*, i8** %16, align 8
  %163 = load i32, i32* %37, align 4
  %164 = call i32 @netdev_warn(i32 %161, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %162, i32 %163)
  br label %355

165:                                              ; preds = %151
  %166 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %167 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %166, i32 0, i32 1
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %170 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ionic_bus_get_irq(%struct.TYPE_11__* %168, i32 %172)
  store i32 %173, i32* %37, align 4
  %174 = load i32, i32* %37, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %165
  %177 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %178 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = load i32, i32* %37, align 4
  %182 = call i32 @netdev_warn(i32 %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %180, i32 %181)
  br label %348

183:                                              ; preds = %165
  %184 = load i32, i32* %37, align 4
  %185 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %186 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  store i32 %184, i32* %187, align 4
  %188 = load %struct.ionic_dev*, %struct.ionic_dev** %24, align 8
  %189 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %192 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @IONIC_INTR_MASK_SET, align 4
  %196 = call i32 @ionic_intr_mask_assert(i32 %190, i32 %194, i32 %195)
  %197 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %198 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (...) @num_online_cpus()
  %202 = srem i32 %200, %201
  %203 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %204 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  store i32 %202, i32* %205, align 8
  %206 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %207 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @cpu_online(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %183
  %213 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %214 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %218 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 3
  %220 = call i32 @cpumask_set_cpu(i32 %216, i32* %219)
  br label %221

221:                                              ; preds = %212, %183
  br label %227

222:                                              ; preds = %146
  %223 = load i32, i32* @INTR_INDEX_NOT_ASSIGNED, align 4
  %224 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %225 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 8
  br label %227

227:                                              ; preds = %222, %221
  %228 = load %struct.device*, %struct.device** %29, align 8
  %229 = load i32, i32* %18, align 4
  %230 = zext i32 %229 to i64
  %231 = mul i64 1, %230
  %232 = trunc i64 %231 to i32
  %233 = load i32, i32* @GFP_KERNEL, align 4
  %234 = call i8* @devm_kzalloc(%struct.device* %228, i32 %232, i32 %233)
  %235 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %236 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  store i8* %234, i8** %237, align 8
  %238 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %239 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %250, label %243

243:                                              ; preds = %227
  %244 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %245 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @netdev_err(i32 %246, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %248 = load i32, i32* @ENOMEM, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %37, align 4
  br label %348

250:                                              ; preds = %227
  %251 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %252 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %253 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %252, i32 0, i32 5
  %254 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %255 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %254, i32 0, i32 3
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %20, align 4
  %258 = call i32 @ionic_cq_init(%struct.ionic_lif* %251, %struct.TYPE_14__* %253, %struct.TYPE_13__* %255, i32 %256, i32 %257)
  store i32 %258, i32* %37, align 4
  %259 = load i32, i32* %37, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %250
  %262 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %263 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @netdev_err(i32 %264, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %348

266:                                              ; preds = %250
  %267 = load %struct.device*, %struct.device** %29, align 8
  %268 = load i64, i64* %28, align 8
  %269 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %270 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %269, i32 0, i32 1
  %271 = load i32, i32* @GFP_KERNEL, align 4
  %272 = call i8* @dma_alloc_coherent(%struct.device* %267, i64 %268, i64* %270, i32 %271)
  %273 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %274 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %273, i32 0, i32 6
  store i8* %272, i8** %274, align 8
  %275 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %276 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %275, i32 0, i32 6
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %286, label %279

279:                                              ; preds = %266
  %280 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %281 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @netdev_err(i32 %282, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %284 = load i32, i32* @ENOMEM, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %37, align 4
  br label %348

286:                                              ; preds = %266
  %287 = load i64, i64* %28, align 8
  %288 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %289 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %288, i32 0, i32 2
  store i64 %287, i64* %289, align 8
  %290 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %291 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %290, i32 0, i32 6
  %292 = load i8*, i8** %291, align 8
  store i8* %292, i8** %30, align 8
  %293 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %294 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %35, align 8
  %296 = load i8*, i8** %30, align 8
  %297 = ptrtoint i8* %296 to i64
  %298 = load i64, i64* %25, align 8
  %299 = add i64 %297, %298
  %300 = load i64, i64* @PAGE_SIZE, align 8
  %301 = call i64 @ALIGN(i64 %299, i64 %300)
  %302 = inttoptr i64 %301 to i8*
  store i8* %302, i8** %31, align 8
  %303 = load i64, i64* %35, align 8
  %304 = load i64, i64* %25, align 8
  %305 = add i64 %303, %304
  %306 = load i64, i64* @PAGE_SIZE, align 8
  %307 = call i64 @ALIGN(i64 %305, i64 %306)
  store i64 %307, i64* %33, align 8
  %308 = load i32, i32* %17, align 4
  %309 = load i32, i32* @IONIC_QCQ_F_SG, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %330

312:                                              ; preds = %286
  %313 = load i8*, i8** %31, align 8
  %314 = ptrtoint i8* %313 to i64
  %315 = load i64, i64* %26, align 8
  %316 = add i64 %314, %315
  %317 = load i64, i64* @PAGE_SIZE, align 8
  %318 = call i64 @ALIGN(i64 %316, i64 %317)
  %319 = inttoptr i64 %318 to i8*
  store i8* %319, i8** %32, align 8
  %320 = load i64, i64* %33, align 8
  %321 = load i64, i64* %26, align 8
  %322 = add i64 %320, %321
  %323 = load i64, i64* @PAGE_SIZE, align 8
  %324 = call i64 @ALIGN(i64 %322, i64 %323)
  store i64 %324, i64* %34, align 8
  %325 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %326 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %325, i32 0, i32 4
  %327 = load i8*, i8** %32, align 8
  %328 = load i64, i64* %34, align 8
  %329 = call i32 @ionic_q_sg_map(%struct.TYPE_12__* %326, i8* %327, i64 %328)
  br label %330

330:                                              ; preds = %312, %286
  %331 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %332 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %331, i32 0, i32 4
  %333 = load i8*, i8** %30, align 8
  %334 = load i64, i64* %35, align 8
  %335 = call i32 @ionic_q_map(%struct.TYPE_12__* %332, i8* %333, i64 %334)
  %336 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %337 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %336, i32 0, i32 5
  %338 = load i8*, i8** %31, align 8
  %339 = load i64, i64* %33, align 8
  %340 = call i32 @ionic_cq_map(%struct.TYPE_14__* %337, i8* %338, i64 %339)
  %341 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %342 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %341, i32 0, i32 5
  %343 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %344 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %343, i32 0, i32 4
  %345 = call i32 @ionic_cq_bind(%struct.TYPE_14__* %342, %struct.TYPE_12__* %344)
  %346 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %347 = load %struct.ionic_qcq**, %struct.ionic_qcq*** %23, align 8
  store %struct.ionic_qcq* %346, %struct.ionic_qcq** %347, align 8
  store i32 0, i32* %12, align 4
  br label %362

348:                                              ; preds = %279, %261, %243, %176
  %349 = load %struct.ionic_lif*, %struct.ionic_lif** %13, align 8
  %350 = load %struct.ionic_qcq*, %struct.ionic_qcq** %36, align 8
  %351 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @ionic_intr_free(%struct.ionic_lif* %349, i32 %353)
  br label %355

355:                                              ; preds = %348, %158, %141, %116, %90
  %356 = load %struct.device*, %struct.device** %29, align 8
  %357 = load i8*, i8** %16, align 8
  %358 = load i32, i32* %15, align 4
  %359 = load i32, i32* %37, align 4
  %360 = call i32 @dev_err(%struct.device* %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %357, i32 %358, i32 %359)
  %361 = load i32, i32* %37, align 4
  store i32 %361, i32* %12, align 4
  br label %362

362:                                              ; preds = %355, %330
  %363 = load i32, i32* %12, align 4
  ret i32 %363
}

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @ionic_q_init(%struct.ionic_lif*, %struct.ionic_dev*, %struct.TYPE_12__*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ionic_intr_alloc(%struct.ionic_lif*, %struct.TYPE_13__*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i8*, i32) #1

declare dso_local i32 @ionic_bus_get_irq(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ionic_intr_mask_assert(i32, i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @ionic_cq_init(%struct.ionic_lif*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i64*, i32) #1

declare dso_local i32 @ionic_q_sg_map(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @ionic_q_map(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @ionic_cq_map(%struct.TYPE_14__*, i8*, i64) #1

declare dso_local i32 @ionic_cq_bind(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ionic_intr_free(%struct.ionic_lif*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
