; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ad525x_dpot.c_ad_dpot_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ad525x_dpot.c_ad_dpot_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ad_dpot_bus_data = type { i32 }
%struct.dpot_data = type { i64, i32, i32, i32, i32, i32*, i32, %struct.ad_dpot_bus_data, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DPOT_RDAC0 = common dso_local global i32 0, align 4
@MAX_RDACS = common dso_local global i32 0, align 4
@F_RDACS_WONLY = common dso_local global i32 0, align 4
@F_CMD_INC = common dso_local global i32 0, align 4
@ad525x_group_commands = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to register sysfs hooks\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s %d-Position Digital Potentiometer registered\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to create client for %s ID 0x%lX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ad_dpot_probe(%struct.device* %0, %struct.ad_dpot_bus_data* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ad_dpot_bus_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dpot_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.ad_dpot_bus_data* %1, %struct.ad_dpot_bus_data** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dpot_data* @kzalloc(i32 48, i32 %13)
  store %struct.dpot_data* %14, %struct.dpot_data** %10, align 8
  %15 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %16 = icmp ne %struct.dpot_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  br label %159

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %23 = call i32 @dev_set_drvdata(%struct.device* %21, %struct.dpot_data* %22)
  %24 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %25 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %24, i32 0, i32 8
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %28 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %27, i32 0, i32 7
  %29 = load %struct.ad_dpot_bus_data*, %struct.ad_dpot_bus_data** %7, align 8
  %30 = bitcast %struct.ad_dpot_bus_data* %28 to i8*
  %31 = bitcast %struct.ad_dpot_bus_data* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %34 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @DPOT_MAX_POS(i64 %35)
  %37 = shl i32 1, %36
  %38 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %39 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %41 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %45 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @DPOT_FEAT(i64 %46)
  %48 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %49 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @DPOT_UID(i64 %50)
  %52 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %53 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @DPOT_WIPERS(i64 %54)
  %56 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %57 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @DPOT_RDAC0, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %101, %20
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @MAX_RDACS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %104

63:                                               ; preds = %59
  %64 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %65 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %63
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %74 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @ad_dpot_add_files(%struct.device* %72, i32 %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %128

81:                                               ; preds = %71
  %82 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %83 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @F_RDACS_WONLY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %90 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 2
  %93 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %94 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  br label %99

99:                                               ; preds = %88, %81
  br label %100

100:                                              ; preds = %99, %63
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %59

104:                                              ; preds = %59
  %105 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %106 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @F_CMD_INC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = getelementptr inbounds %struct.device, %struct.device* %112, i32 0, i32 0
  %114 = call i32 @sysfs_create_group(i32* %113, i32* @ad525x_group_commands)
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %111, %104
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %154

121:                                              ; preds = %115
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %125 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_info(%struct.device* %122, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %123, i32 %126)
  store i32 0, i32* %5, align 4
  br label %165

128:                                              ; preds = %80
  %129 = load i32, i32* @DPOT_RDAC0, align 4
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %150, %128
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @MAX_RDACS, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %136 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %11, align 4
  %139 = shl i32 1, %138
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = load %struct.device*, %struct.device** %6, align 8
  %144 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %145 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @ad_dpot_remove_files(%struct.device* %143, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %142, %134
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %130

153:                                              ; preds = %130
  br label %154

154:                                              ; preds = %153, %118
  %155 = load %struct.dpot_data*, %struct.dpot_data** %10, align 8
  %156 = call i32 @kfree(%struct.dpot_data* %155)
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = call i32 @dev_set_drvdata(%struct.device* %157, %struct.dpot_data* null)
  br label %159

159:                                              ; preds = %154, %17
  %160 = load %struct.device*, %struct.device** %6, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = load i64, i64* %8, align 8
  %163 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %160, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %161, i64 %162)
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %159, %121
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local %struct.dpot_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.dpot_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DPOT_MAX_POS(i64) #1

declare dso_local i32 @DPOT_FEAT(i64) #1

declare dso_local i32 @DPOT_UID(i64) #1

declare dso_local i32 @DPOT_WIPERS(i64) #1

declare dso_local i32 @ad_dpot_add_files(%struct.device*, i32, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @ad_dpot_remove_files(%struct.device*, i32, i32) #1

declare dso_local i32 @kfree(%struct.dpot_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
