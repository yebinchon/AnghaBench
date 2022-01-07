; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.spi_device* }
%struct.spi_device = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.flash_platform_data = type { i8*, i32, i32*, i64 }
%struct.spi_nor = type { i64, i64, %struct.TYPE_6__, i32, %struct.TYPE_7__*, %struct.spi_mem* }
%struct.TYPE_6__ = type { i64 }
%struct.spi_nor_hwcaps = type { i32 }

@SNOR_HWCAPS_ALL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"spi-nor\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*)* @spi_nor_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_probe(%struct.spi_mem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_mem*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.flash_platform_data*, align 8
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca %struct.spi_nor_hwcaps, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %3, align 8
  %10 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %11 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %10, i32 0, i32 0
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %4, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 1
  %15 = call %struct.flash_platform_data* @dev_get_platdata(%struct.TYPE_7__* %14)
  store %struct.flash_platform_data* %15, %struct.flash_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.spi_nor_hwcaps, %struct.spi_nor_hwcaps* %7, i32 0, i32 0
  %17 = load i32, i32* @SNOR_HWCAPS_ALL, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.spi_nor* @devm_kzalloc(%struct.TYPE_7__* %19, i32 48, i32 %20)
  store %struct.spi_nor* %21, %struct.spi_nor** %6, align 8
  %22 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %23 = icmp ne %struct.spi_nor* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %161

27:                                               ; preds = %1
  %28 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %29 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %30 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %29, i32 0, i32 5
  store %struct.spi_mem* %28, %struct.spi_mem** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 1
  %33 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %34 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %33, i32 0, i32 4
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @spi_nor_set_flash_node(%struct.spi_nor* %35, i32 %39)
  %41 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %42 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %43 = call i32 @spi_mem_set_drvdata(%struct.spi_mem* %41, %struct.spi_nor* %42)
  %44 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %45 = icmp ne %struct.flash_platform_data* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %27
  %47 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %48 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %53 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %56 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %51, %46, %27
  %59 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %60 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %66 = call i64 @spi_mem_get_name(%struct.spi_mem* %65)
  %67 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %68 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %72 = icmp ne %struct.flash_platform_data* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %75 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %80 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %8, align 8
  br label %94

82:                                               ; preds = %73, %70
  %83 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store i8* null, i8** %8, align 8
  br label %93

89:                                               ; preds = %82
  %90 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %89, %88
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @spi_nor_scan(%struct.spi_nor* %95, i8* %96, %struct.spi_nor_hwcaps* %7)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %2, align 4
  br label %161

102:                                              ; preds = %94
  %103 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %104 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %102
  %109 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %110 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %113 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %115 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %114, i32 0, i32 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %118 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @devm_kfree(%struct.TYPE_7__* %116, i32 %119)
  %121 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %122 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %121, i32 0, i32 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %125 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i32 @devm_kmalloc(%struct.TYPE_7__* %123, i64 %126, i32 %127)
  %129 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %130 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  %131 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %132 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %108
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %161

138:                                              ; preds = %108
  br label %139

139:                                              ; preds = %138, %102
  %140 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %141 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %140, i32 0, i32 2
  %142 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %143 = icmp ne %struct.flash_platform_data* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %146 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  br label %149

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %144
  %150 = phi i32* [ %147, %144 ], [ null, %148 ]
  %151 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %152 = icmp ne %struct.flash_platform_data* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %155 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  br label %158

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157, %153
  %159 = phi i32 [ %156, %153 ], [ 0, %157 ]
  %160 = call i32 @mtd_device_register(%struct.TYPE_6__* %141, i32* %150, i32 %159)
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %158, %135, %100, %24
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.flash_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.spi_nor* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @spi_nor_set_flash_node(%struct.spi_nor*, i32) #1

declare dso_local i32 @spi_mem_set_drvdata(%struct.spi_mem*, %struct.spi_nor*) #1

declare dso_local i64 @spi_mem_get_name(%struct.spi_mem*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @spi_nor_scan(%struct.spi_nor*, i8*, %struct.spi_nor_hwcaps*) #1

declare dso_local i32 @devm_kfree(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @devm_kmalloc(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
