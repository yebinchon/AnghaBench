; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_mtk-smi.c_mtk_smi_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_mtk-smi.c_mtk_smi_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_smi = type { i8*, i8*, i8*, %struct.TYPE_2__*, i8*, i8*, i8*, i8*, %struct.device* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"smi\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"gals0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"gals1\00", align 1
@MTK_SMI_GEN1 = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_smi_common_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_smi_common_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_smi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mtk_smi* @devm_kzalloc(%struct.device* %10, i32 72, i32 %11)
  store %struct.mtk_smi* %12, %struct.mtk_smi** %5, align 8
  %13 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %14 = icmp ne %struct.mtk_smi* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %171

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %21 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %20, i32 0, i32 8
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %22)
  %24 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %24, i32 0, i32 3
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i8* @devm_clk_get(%struct.device* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %29 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %30, i32 0, i32 7
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %37 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %36, i32 0, i32 7
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  store i32 %39, i32* %2, align 4
  br label %171

40:                                               ; preds = %18
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i8* @devm_clk_get(%struct.device* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %46 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %45, i32 0, i32 6
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %52 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %171

55:                                               ; preds = %40
  %56 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %57 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %55
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i8* @devm_clk_get(%struct.device* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %66 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %68 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %74 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %2, align 4
  br label %171

77:                                               ; preds = %62
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i8* @devm_clk_get(%struct.device* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %81 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %83 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %82, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @IS_ERR(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %77
  %88 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %89 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @PTR_ERR(i8* %90)
  store i32 %91, i32* %2, align 4
  br label %171

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %55
  %94 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %95 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MTK_SMI_GEN1, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %145

101:                                              ; preds = %93
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load i32, i32* @IORESOURCE_MEM, align 4
  %104 = call %struct.resource* @platform_get_resource(%struct.platform_device* %102, i32 %103, i32 0)
  store %struct.resource* %104, %struct.resource** %6, align 8
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.resource*, %struct.resource** %6, align 8
  %107 = call i8* @devm_ioremap_resource(%struct.device* %105, %struct.resource* %106)
  %108 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %109 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %111 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %101
  %116 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %117 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @PTR_ERR(i8* %118)
  store i32 %119, i32* %2, align 4
  br label %171

120:                                              ; preds = %101
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i8* @devm_clk_get(%struct.device* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %124 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %126 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @IS_ERR(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %132 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @PTR_ERR(i8* %133)
  store i32 %134, i32* %2, align 4
  br label %171

135:                                              ; preds = %120
  %136 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %137 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @clk_prepare_enable(i8* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %171

144:                                              ; preds = %135
  br label %165

145:                                              ; preds = %93
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = load i32, i32* @IORESOURCE_MEM, align 4
  %148 = call %struct.resource* @platform_get_resource(%struct.platform_device* %146, i32 %147, i32 0)
  store %struct.resource* %148, %struct.resource** %6, align 8
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load %struct.resource*, %struct.resource** %6, align 8
  %151 = call i8* @devm_ioremap_resource(%struct.device* %149, %struct.resource* %150)
  %152 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %153 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %155 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @IS_ERR(i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %145
  %160 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %161 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @PTR_ERR(i8* %162)
  store i32 %163, i32* %2, align 4
  br label %171

164:                                              ; preds = %145
  br label %165

165:                                              ; preds = %164, %144
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = call i32 @pm_runtime_enable(%struct.device* %166)
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %170 = call i32 @platform_set_drvdata(%struct.platform_device* %168, %struct.mtk_smi* %169)
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %165, %159, %142, %130, %115, %87, %72, %50, %35, %15
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.mtk_smi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_smi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
