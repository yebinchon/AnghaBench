; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_rbtx4939-flash.c_rbtx4939_flash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_rbtx4939-flash.c_rbtx4939_flash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rbtx4939_flash_data = type { i32, i32, i32 (%struct.TYPE_8__*)*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }
%struct.rbtx4939_flash_info = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rbtx4939 platform flash device: %pR\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@rom_probe_types = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"map_probe failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rbtx4939_flash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbtx4939_flash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rbtx4939_flash_data*, align 8
  %5 = alloca %struct.rbtx4939_flash_info*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.rbtx4939_flash_data* @dev_get_platdata(i32* %11)
  store %struct.rbtx4939_flash_data* %12, %struct.rbtx4939_flash_data** %4, align 8
  %13 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %14 = icmp ne %struct.rbtx4939_flash_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %178

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %6, align 8
  %22 = load %struct.resource*, %struct.resource** %6, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %178

27:                                               ; preds = %18
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.rbtx4939_flash_info* @devm_kzalloc(i32* %29, i32 32, i32 %30)
  store %struct.rbtx4939_flash_info* %31, %struct.rbtx4939_flash_info** %5, align 8
  %32 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %33 = icmp ne %struct.rbtx4939_flash_info* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %178

37:                                               ; preds = %27
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.rbtx4939_flash_info* %39)
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = call i64 @resource_size(%struct.resource* %41)
  store i64 %42, i64* %9, align 8
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i32 @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.resource* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_name(i32* %52)
  %54 = call i32 @devm_request_mem_region(i32* %46, i32 %49, i64 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %37
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %178

59:                                               ; preds = %37
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_name(i32* %61)
  %63 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %64 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 4
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %70 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %74 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %77 = getelementptr inbounds %struct.rbtx4939_flash_data, %struct.rbtx4939_flash_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %80 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %85 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @devm_ioremap(i32* %83, i32 %87, i64 %88)
  %90 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %91 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 8
  %93 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %94 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %59
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %178

101:                                              ; preds = %59
  %102 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %103 = getelementptr inbounds %struct.rbtx4939_flash_data, %struct.rbtx4939_flash_data* %102, i32 0, i32 2
  %104 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %103, align 8
  %105 = icmp ne i32 (%struct.TYPE_8__*)* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %108 = getelementptr inbounds %struct.rbtx4939_flash_data, %struct.rbtx4939_flash_data* %107, i32 0, i32 2
  %109 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %108, align 8
  %110 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %111 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %110, i32 0, i32 1
  %112 = call i32 %109(%struct.TYPE_8__* %111)
  br label %117

113:                                              ; preds = %101
  %114 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %115 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %114, i32 0, i32 1
  %116 = call i32 @simple_map_init(%struct.TYPE_8__* %115)
  br label %117

117:                                              ; preds = %113, %106
  %118 = load i8**, i8*** @rom_probe_types, align 8
  store i8** %118, i8*** %7, align 8
  br label %119

119:                                              ; preds = %138, %117
  %120 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %121 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = icmp ne %struct.TYPE_9__* %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load i8**, i8*** %7, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br label %128

128:                                              ; preds = %124, %119
  %129 = phi i1 [ false, %119 ], [ %127, %124 ]
  br i1 %129, label %130, label %141

130:                                              ; preds = %128
  %131 = load i8**, i8*** %7, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %134 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %133, i32 0, i32 1
  %135 = call %struct.TYPE_9__* @do_map_probe(i8* %132, %struct.TYPE_8__* %134)
  %136 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %137 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %136, i32 0, i32 0
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %137, align 8
  br label %138

138:                                              ; preds = %130
  %139 = load i8**, i8*** %7, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i32 1
  store i8** %140, i8*** %7, align 8
  br label %119

141:                                              ; preds = %128
  %142 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %143 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = icmp ne %struct.TYPE_9__* %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @dev_err(i32* %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %150 = load i32, i32* @ENXIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %8, align 4
  br label %174

152:                                              ; preds = %141
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %156 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i32* %154, i32** %159, align 8
  %160 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %161 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %164 = getelementptr inbounds %struct.rbtx4939_flash_data, %struct.rbtx4939_flash_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %167 = getelementptr inbounds %struct.rbtx4939_flash_data, %struct.rbtx4939_flash_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @mtd_device_register(%struct.TYPE_9__* %162, i32 %165, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %152
  br label %174

173:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %178

174:                                              ; preds = %172, %146
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = call i32 @rbtx4939_flash_remove(%struct.platform_device* %175)
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %174, %173, %98, %56, %34, %24, %15
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.rbtx4939_flash_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.rbtx4939_flash_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rbtx4939_flash_info*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @pr_notice(i8*, %struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(i32*, i32, i64, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i64) #1

declare dso_local i32 @simple_map_init(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @do_map_probe(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @rbtx4939_flash_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
