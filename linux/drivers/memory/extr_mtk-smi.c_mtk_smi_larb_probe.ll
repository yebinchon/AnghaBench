; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_mtk-smi.c_mtk_smi_larb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_mtk-smi.c_mtk_smi_larb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_smi_larb = type { %struct.device*, %struct.TYPE_3__, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { %struct.device*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.resource = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"smi\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gals\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"mediatek,smi\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to get the smi_common device\0A\00", align 1
@mtk_smi_larb_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_smi_larb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_smi_larb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_smi_larb*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mtk_smi_larb* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.mtk_smi_larb* %13, %struct.mtk_smi_larb** %4, align 8
  %14 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %15 = icmp ne %struct.mtk_smi_larb* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %167

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.TYPE_4__* @of_device_get_match_data(%struct.device* %20)
  %22 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %22, i32 0, i32 2
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %5, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.resource*, %struct.resource** %5, align 8
  %29 = call i32* @devm_ioremap_resource(%struct.device* %27, %struct.resource* %28)
  %30 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %39 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %2, align 4
  br label %167

42:                                               ; preds = %19
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i8* @devm_clk_get(%struct.device* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32* %45, i32** %48, align 8
  %49 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %50 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @IS_ERR(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %42
  %56 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %57 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @PTR_ERR(i32* %59)
  store i32 %60, i32* %2, align 4
  br label %167

61:                                               ; preds = %42
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i8* @devm_clk_get(%struct.device* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %66 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32* %64, i32** %67, align 8
  %68 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %69 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %61
  %75 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %76 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @PTR_ERR(i32* %78)
  store i32 %79, i32* %2, align 4
  br label %167

80:                                               ; preds = %61
  %81 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %82 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %80
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = call i8* @devm_clk_get(%struct.device* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %92 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32* %90, i32** %93, align 8
  %94 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %95 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @PTR_ERR(i32* %97)
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %87
  %103 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %104 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  br label %120

106:                                              ; preds = %87
  %107 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %108 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i64 @IS_ERR(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %115 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @PTR_ERR(i32* %117)
  store i32 %118, i32* %2, align 4
  br label %167

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %102
  br label %121

121:                                              ; preds = %120, %80
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %124 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store %struct.device* %122, %struct.device** %125, align 8
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = getelementptr inbounds %struct.device, %struct.device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call %struct.device_node* @of_parse_phandle(i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %129, %struct.device_node** %7, align 8
  %130 = load %struct.device_node*, %struct.device_node** %7, align 8
  %131 = icmp ne %struct.device_node* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %167

135:                                              ; preds = %121
  %136 = load %struct.device_node*, %struct.device_node** %7, align 8
  %137 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %136)
  store %struct.platform_device* %137, %struct.platform_device** %8, align 8
  %138 = load %struct.device_node*, %struct.device_node** %7, align 8
  %139 = call i32 @of_node_put(%struct.device_node* %138)
  %140 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %141 = icmp ne %struct.platform_device* %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %135
  %143 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %144 = call i32 @platform_get_drvdata(%struct.platform_device* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* @EPROBE_DEFER, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %167

149:                                              ; preds = %142
  %150 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %153 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %152, i32 0, i32 0
  store %struct.device* %151, %struct.device** %153, align 8
  br label %159

154:                                              ; preds = %135
  %155 = load %struct.device*, %struct.device** %6, align 8
  %156 = call i32 @dev_err(%struct.device* %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %167

159:                                              ; preds = %149
  %160 = load %struct.device*, %struct.device** %6, align 8
  %161 = call i32 @pm_runtime_enable(%struct.device* %160)
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %4, align 8
  %164 = call i32 @platform_set_drvdata(%struct.platform_device* %162, %struct.mtk_smi_larb* %163)
  %165 = load %struct.device*, %struct.device** %6, align 8
  %166 = call i32 @component_add(%struct.device* %165, i32* @mtk_smi_larb_component_ops)
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %159, %154, %146, %132, %113, %74, %55, %37, %16
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.mtk_smi_larb* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_smi_larb*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
