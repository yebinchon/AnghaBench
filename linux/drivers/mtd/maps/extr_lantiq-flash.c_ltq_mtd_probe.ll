; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_lantiq-flash.c_ltq_mtd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_lantiq-flash.c_ltq_mtd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.ltq_mtd = type { %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, %struct.cfi_private*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfi_private = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to get memory resource\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ltq_map_name = common dso_local global i32 0, align 4
@ltq_read16 = common dso_local global i32 0, align 4
@ltq_write16 = common dso_local global i32 0, align 4
@ltq_copy_from = common dso_local global i32 0, align 4
@ltq_copy_to = common dso_local global i32 0, align 4
@LTQ_NOR_PROBING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cfi_probe\00", align 1
@LTQ_NOR_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"probing failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to add partitions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_mtd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_mtd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ltq_mtd*, align 8
  %5 = alloca %struct.cfi_private*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @devm_kzalloc(%struct.TYPE_17__* %8, i32 24, i32 %9)
  %11 = bitcast i8* %10 to %struct.ltq_mtd*
  store %struct.ltq_mtd* %11, %struct.ltq_mtd** %4, align 8
  %12 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %13 = icmp ne %struct.ltq_mtd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %195

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.ltq_mtd* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.TYPE_14__* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  %24 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %25 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %24, i32 0, i32 2
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %25, align 8
  %26 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %27 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %26, i32 0, i32 2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %17
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_17__* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %195

36:                                               ; preds = %17
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kzalloc(%struct.TYPE_17__* %38, i32 4, i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_16__*
  %42 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %43 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %42, i32 0, i32 1
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %43, align 8
  %44 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %45 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = icmp ne %struct.TYPE_16__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %195

51:                                               ; preds = %36
  %52 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %53 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %52, i32 0, i32 2
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %58 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 10
  store i32 %56, i32* %60, align 8
  %61 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %62 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %61, i32 0, i32 2
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = call i32 @resource_size(%struct.TYPE_14__* %63)
  %65 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %66 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 9
  store i32 %64, i32* %68, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %72 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %71, i32 0, i32 2
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = call i32 @devm_ioremap_resource(%struct.TYPE_17__* %70, %struct.TYPE_14__* %73)
  %75 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %76 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %75, i32 0, i32 1
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 8
  store i32 %74, i32* %78, align 8
  %79 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %80 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %51
  %87 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %88 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %195

93:                                               ; preds = %51
  %94 = load i32, i32* @ltq_map_name, align 4
  %95 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %96 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %95, i32 0, i32 1
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 7
  store i32 %94, i32* %98, align 4
  %99 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %100 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  store i32 2, i32* %102, align 8
  %103 = load i32, i32* @ltq_read16, align 4
  %104 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %105 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %104, i32 0, i32 1
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 6
  store i32 %103, i32* %107, align 8
  %108 = load i32, i32* @ltq_write16, align 4
  %109 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %110 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 5
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @ltq_copy_from, align 4
  %114 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %115 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %114, i32 0, i32 1
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 4
  store i32 %113, i32* %117, align 8
  %118 = load i32, i32* @ltq_copy_to, align 4
  %119 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %120 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* @LTQ_NOR_PROBING, align 4
  %124 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %125 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %124, i32 0, i32 1
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  store i32 %123, i32* %127, align 8
  %128 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %129 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %128, i32 0, i32 1
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = call %struct.TYPE_15__* @do_map_probe(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %130)
  %132 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %133 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %132, i32 0, i32 0
  store %struct.TYPE_15__* %131, %struct.TYPE_15__** %133, align 8
  %134 = load i32, i32* @LTQ_NOR_NORMAL, align 4
  %135 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %136 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %135, i32 0, i32 1
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 8
  %139 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %140 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %139, i32 0, i32 0
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = icmp ne %struct.TYPE_15__* %141, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %93
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @dev_err(%struct.TYPE_17__* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @ENXIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %195

149:                                              ; preds = %93
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %153 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %152, i32 0, i32 0
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %156, align 8
  %157 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %158 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @mtd_set_of_node(%struct.TYPE_15__* %159, i32 %163)
  %165 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %166 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %165, i32 0, i32 1
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load %struct.cfi_private*, %struct.cfi_private** %168, align 8
  store %struct.cfi_private* %169, %struct.cfi_private** %5, align 8
  %170 = load %struct.cfi_private*, %struct.cfi_private** %5, align 8
  %171 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = load %struct.cfi_private*, %struct.cfi_private** %5, align 8
  %175 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = xor i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %179 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %178, i32 0, i32 0
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = call i32 @mtd_device_register(%struct.TYPE_15__* %180, i32* null, i32 0)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %149
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i32 @dev_err(%struct.TYPE_17__* %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %189

188:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %195

189:                                              ; preds = %184
  %190 = load %struct.ltq_mtd*, %struct.ltq_mtd** %4, align 8
  %191 = getelementptr inbounds %struct.ltq_mtd, %struct.ltq_mtd* %190, i32 0, i32 0
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = call i32 @map_destroy(%struct.TYPE_15__* %192)
  %194 = load i32, i32* %6, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %189, %188, %143, %86, %48, %30, %14
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ltq_mtd*) #1

declare dso_local %struct.TYPE_14__* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @resource_size(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_17__*, %struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_15__* @do_map_probe(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @mtd_set_of_node(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @map_destroy(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
