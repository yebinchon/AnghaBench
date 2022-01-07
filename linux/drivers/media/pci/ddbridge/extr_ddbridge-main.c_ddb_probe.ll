; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-main.c_ddb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-main.c_ddb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32, i32, i32 }
%struct.ddb = type { i32, %struct.TYPE_5__*, i32, %struct.pci_dev*, i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__*, %struct.ddb* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"detected %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"not enough memory for register map\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot read registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"HW %08x REGMAP %08x\0A\00", align 1
@DMA_BASE_READ = common dso_local global i32 0, align 4
@DMA_BASE_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"fail0\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ddb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ddb*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i64 @pci_enable_device(%struct.pci_dev* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %244

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i32 @pci_set_master(%struct.pci_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @DMA_BIT_MASK(i32 64)
  %19 = call i64 @pci_set_dma_mask(%struct.pci_dev* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @DMA_BIT_MASK(i32 32)
  %24 = call i64 @pci_set_dma_mask(%struct.pci_dev* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %244

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %14
  %31 = call %struct.ddb* @vzalloc(i32 56)
  store %struct.ddb* %31, %struct.ddb** %6, align 8
  %32 = load %struct.ddb*, %struct.ddb** %6, align 8
  %33 = icmp ne %struct.ddb* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %244

37:                                               ; preds = %30
  %38 = load %struct.ddb*, %struct.ddb** %6, align 8
  %39 = getelementptr inbounds %struct.ddb, %struct.ddb* %38, i32 0, i32 6
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.ddb*, %struct.ddb** %6, align 8
  %42 = getelementptr inbounds %struct.ddb, %struct.ddb* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = load %struct.ddb*, %struct.ddb** %6, align 8
  %45 = getelementptr inbounds %struct.ddb, %struct.ddb* %44, i32 0, i32 3
  store %struct.pci_dev* %43, %struct.pci_dev** %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load %struct.ddb*, %struct.ddb** %6, align 8
  %49 = getelementptr inbounds %struct.ddb, %struct.ddb* %48, i32 0, i32 5
  store i32* %47, i32** %49, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load %struct.ddb*, %struct.ddb** %6, align 8
  %52 = call i32 @pci_set_drvdata(%struct.pci_dev* %50, %struct.ddb* %51)
  %53 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %54 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ddb*, %struct.ddb** %6, align 8
  %57 = getelementptr inbounds %struct.ddb, %struct.ddb* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 8
  %62 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %63 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ddb*, %struct.ddb** %6, align 8
  %66 = getelementptr inbounds %struct.ddb, %struct.ddb* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %64, i32* %70, align 4
  %71 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %72 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ddb*, %struct.ddb** %6, align 8
  %75 = getelementptr inbounds %struct.ddb, %struct.ddb* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  store i32 %73, i32* %79, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ddb*, %struct.ddb** %6, align 8
  %84 = getelementptr inbounds %struct.ddb, %struct.ddb* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  store i32 %82, i32* %88, align 4
  %89 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %90 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 16
  %93 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %94 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %92, %95
  %97 = load %struct.ddb*, %struct.ddb** %6, align 8
  %98 = getelementptr inbounds %struct.ddb, %struct.ddb* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32 %96, i32* %102, align 8
  %103 = load %struct.ddb*, %struct.ddb** %6, align 8
  %104 = load %struct.ddb*, %struct.ddb** %6, align 8
  %105 = getelementptr inbounds %struct.ddb, %struct.ddb* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store %struct.ddb* %103, %struct.ddb** %108, align 8
  %109 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %110 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %113 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %116 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.TYPE_6__* @get_ddb_info(i32 %111, i32 %114, i32 %117, i32 %120)
  %122 = load %struct.ddb*, %struct.ddb** %6, align 8
  %123 = getelementptr inbounds %struct.ddb, %struct.ddb* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store %struct.TYPE_6__* %121, %struct.TYPE_6__** %126, align 8
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = load %struct.ddb*, %struct.ddb** %6, align 8
  %130 = getelementptr inbounds %struct.ddb, %struct.ddb* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load %struct.ddb*, %struct.ddb** %6, align 8
  %139 = getelementptr inbounds %struct.ddb, %struct.ddb* %138, i32 0, i32 3
  %140 = load %struct.pci_dev*, %struct.pci_dev** %139, align 8
  %141 = call i32 @pci_resource_len(%struct.pci_dev* %140, i32 0)
  %142 = load %struct.ddb*, %struct.ddb** %6, align 8
  %143 = getelementptr inbounds %struct.ddb, %struct.ddb* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.ddb*, %struct.ddb** %6, align 8
  %145 = getelementptr inbounds %struct.ddb, %struct.ddb* %144, i32 0, i32 3
  %146 = load %struct.pci_dev*, %struct.pci_dev** %145, align 8
  %147 = call i32 @pci_resource_start(%struct.pci_dev* %146, i32 0)
  %148 = load %struct.ddb*, %struct.ddb** %6, align 8
  %149 = getelementptr inbounds %struct.ddb, %struct.ddb* %148, i32 0, i32 3
  %150 = load %struct.pci_dev*, %struct.pci_dev** %149, align 8
  %151 = call i32 @pci_resource_len(%struct.pci_dev* %150, i32 0)
  %152 = call i32 @ioremap(i32 %147, i32 %151)
  %153 = load %struct.ddb*, %struct.ddb** %6, align 8
  %154 = getelementptr inbounds %struct.ddb, %struct.ddb* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ddb*, %struct.ddb** %6, align 8
  %156 = getelementptr inbounds %struct.ddb, %struct.ddb* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %37
  %160 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 0
  %162 = call i32 @dev_err(i32* %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %7, align 4
  br label %234

165:                                              ; preds = %37
  %166 = load %struct.ddb*, %struct.ddb** %6, align 8
  %167 = call i32 @ddbreadl(%struct.ddb* %166, i32 0)
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %171 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %170, i32 0, i32 0
  %172 = call i32 @dev_err(i32* %171, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %7, align 4
  br label %234

175:                                              ; preds = %165
  %176 = load %struct.ddb*, %struct.ddb** %6, align 8
  %177 = call i32 @ddbreadl(%struct.ddb* %176, i32 0)
  %178 = load %struct.ddb*, %struct.ddb** %6, align 8
  %179 = getelementptr inbounds %struct.ddb, %struct.ddb* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  store i32 %177, i32* %183, align 4
  %184 = load %struct.ddb*, %struct.ddb** %6, align 8
  %185 = call i32 @ddbreadl(%struct.ddb* %184, i32 4)
  %186 = load %struct.ddb*, %struct.ddb** %6, align 8
  %187 = getelementptr inbounds %struct.ddb, %struct.ddb* %186, i32 0, i32 1
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 4
  store i32 %185, i32* %191, align 8
  %192 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %193 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %192, i32 0, i32 0
  %194 = load %struct.ddb*, %struct.ddb** %6, align 8
  %195 = getelementptr inbounds %struct.ddb, %struct.ddb* %194, i32 0, i32 1
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ddb*, %struct.ddb** %6, align 8
  %202 = getelementptr inbounds %struct.ddb, %struct.ddb* %201, i32 0, i32 1
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %200, i32 %207)
  %209 = load %struct.ddb*, %struct.ddb** %6, align 8
  %210 = load i32, i32* @DMA_BASE_READ, align 4
  %211 = call i32 @ddbwritel(%struct.ddb* %209, i32 0, i32 %210)
  %212 = load %struct.ddb*, %struct.ddb** %6, align 8
  %213 = load i32, i32* @DMA_BASE_WRITE, align 4
  %214 = call i32 @ddbwritel(%struct.ddb* %212, i32 0, i32 %213)
  %215 = load %struct.ddb*, %struct.ddb** %6, align 8
  %216 = call i32 @ddb_irq_init(%struct.ddb* %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %175
  br label %228

220:                                              ; preds = %175
  %221 = load %struct.ddb*, %struct.ddb** %6, align 8
  %222 = call i64 @ddb_init(%struct.ddb* %221)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 0, i32* %3, align 4
  br label %244

225:                                              ; preds = %220
  %226 = load %struct.ddb*, %struct.ddb** %6, align 8
  %227 = call i32 @ddb_irq_exit(%struct.ddb* %226)
  br label %228

228:                                              ; preds = %225, %219
  %229 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %230 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %229, i32 0, i32 0
  %231 = call i32 @dev_err(i32* %230, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %232 = load %struct.ddb*, %struct.ddb** %6, align 8
  %233 = call i32 @ddb_msi_exit(%struct.ddb* %232)
  br label %234

234:                                              ; preds = %228, %169, %159
  %235 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %236 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %235, i32 0, i32 0
  %237 = call i32 @dev_err(i32* %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %238 = load %struct.ddb*, %struct.ddb** %6, align 8
  %239 = call i32 @ddb_unmap(%struct.ddb* %238)
  %240 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %241 = call i32 @pci_set_drvdata(%struct.pci_dev* %240, %struct.ddb* null)
  %242 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %243 = call i32 @pci_disable_device(%struct.pci_dev* %242)
  store i32 -1, i32* %3, align 4
  br label %244

244:                                              ; preds = %234, %224, %34, %26, %11
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.ddb* @vzalloc(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ddb*) #1

declare dso_local %struct.TYPE_6__* @get_ddb_info(i32, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ddbreadl(%struct.ddb*, i32) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @ddb_irq_init(%struct.ddb*) #1

declare dso_local i64 @ddb_init(%struct.ddb*) #1

declare dso_local i32 @ddb_irq_exit(%struct.ddb*) #1

declare dso_local i32 @ddb_msi_exit(%struct.ddb*) #1

declare dso_local i32 @ddb_unmap(%struct.ddb*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
