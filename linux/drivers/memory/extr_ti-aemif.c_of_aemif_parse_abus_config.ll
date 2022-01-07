; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_ti-aemif.c_of_aemif_parse_abus_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_ti-aemif.c_of_aemif_parse_abus_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.aemif_device = type { i64, i64, %struct.aemif_cs_data* }
%struct.aemif_cs_data = type { i32, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"ti,cs-chipselect\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cs property is required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NUM_CS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"cs number is incorrect %d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cs count is more than %d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ti,cs-min-turnaround-ns\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ti,cs-read-hold-ns\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ti,cs-read-strobe-ns\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ti,cs-read-setup-ns\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ti,cs-write-hold-ns\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ti,cs-write-strobe-ns\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ti,cs-write-setup-ns\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"ti,cs-bus-width\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"ti,cs-extended-wait-mode\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"ti,cs-select-strobe-mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.device_node*)* @of_aemif_parse_abus_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_aemif_parse_abus_config(%struct.platform_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.aemif_device*, align 8
  %7 = alloca %struct.aemif_cs_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = call %struct.aemif_device* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.aemif_device* %11, %struct.aemif_device** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i64 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64* %8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %148

21:                                               ; preds = %2
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.aemif_device*, %struct.aemif_device** %6, align 8
  %24 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load i64, i64* @NUM_CS, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.aemif_device*, %struct.aemif_device** %6, align 8
  %32 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29, %21
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %148

42:                                               ; preds = %29
  %43 = load %struct.aemif_device*, %struct.aemif_device** %6, align 8
  %44 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NUM_CS, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i64, i64* @NUM_CS, align 8
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %148

55:                                               ; preds = %42
  %56 = load %struct.aemif_device*, %struct.aemif_device** %6, align 8
  %57 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %56, i32 0, i32 2
  %58 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %57, align 8
  %59 = load %struct.aemif_device*, %struct.aemif_device** %6, align 8
  %60 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %58, i64 %61
  store %struct.aemif_cs_data* %62, %struct.aemif_cs_data** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %65 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %64, i32 0, i32 10
  store i64 %63, i64* %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %67 = load %struct.aemif_device*, %struct.aemif_device** %6, align 8
  %68 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = trunc i64 %69 to i32
  %72 = call i32 @aemif_get_hw_params(%struct.platform_device* %66, i32 %71)
  %73 = load %struct.device_node*, %struct.device_node** %5, align 8
  %74 = call i64 @of_property_read_u32(%struct.device_node* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64* %9)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %55
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %79 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %78, i32 0, i32 9
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %55
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = call i64 @of_property_read_u32(%struct.device_node* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64* %9)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %87 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %86, i32 0, i32 8
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  %89 = load %struct.device_node*, %struct.device_node** %5, align 8
  %90 = call i64 @of_property_read_u32(%struct.device_node* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64* %9)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %95 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %94, i32 0, i32 7
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.device_node*, %struct.device_node** %5, align 8
  %98 = call i64 @of_property_read_u32(%struct.device_node* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64* %9)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %103 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %102, i32 0, i32 6
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = load %struct.device_node*, %struct.device_node** %5, align 8
  %106 = call i64 @of_property_read_u32(%struct.device_node* %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64* %9)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %111 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %110, i32 0, i32 5
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %104
  %113 = load %struct.device_node*, %struct.device_node** %5, align 8
  %114 = call i64 @of_property_read_u32(%struct.device_node* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64* %9)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %119 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.device_node*, %struct.device_node** %5, align 8
  %122 = call i64 @of_property_read_u32(%struct.device_node* %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64* %9)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %9, align 8
  %126 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %127 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.device_node*, %struct.device_node** %5, align 8
  %130 = call i64 @of_property_read_u32(%struct.device_node* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64* %9)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* %9, align 8
  %134 = icmp eq i64 %133, 16
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %137 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  br label %138

138:                                              ; preds = %135, %132
  br label %139

139:                                              ; preds = %138, %128
  %140 = load %struct.device_node*, %struct.device_node** %5, align 8
  %141 = call i8* @of_property_read_bool(%struct.device_node* %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %142 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %143 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  %144 = load %struct.device_node*, %struct.device_node** %5, align 8
  %145 = call i8* @of_property_read_bool(%struct.device_node* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %146 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %7, align 8
  %147 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %139, %48, %35, %15
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.aemif_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @aemif_get_hw_params(%struct.platform_device*, i32) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
