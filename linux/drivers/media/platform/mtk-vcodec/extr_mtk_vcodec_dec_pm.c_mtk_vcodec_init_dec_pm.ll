; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec_pm.c_mtk_vcodec_init_dec_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec_pm.c_mtk_vcodec_init_dec_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_dev = type { %struct.platform_device*, %struct.mtk_vcodec_pm }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_vcodec_pm = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.mtk_vcodec_clk, %struct.mtk_vcodec_dev* }
%struct.mtk_vcodec_clk = type { i32, %struct.mtk_vcodec_clk_info* }
%struct.mtk_vcodec_clk_info = type { i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"mediatek,larb\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"of_parse_phandle mediatek,larb fail!\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to get vdec clock count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to get clock name id = %d\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"devm_clk_get (%d)%s fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_vcodec_init_dec_pm(%struct.mtk_vcodec_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_vcodec_dev*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.mtk_vcodec_pm*, align 8
  %7 = alloca %struct.mtk_vcodec_clk*, align 8
  %8 = alloca %struct.mtk_vcodec_clk_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtk_vcodec_dev* %0, %struct.mtk_vcodec_dev** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %11, i32 0, i32 0
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %14, i32 0, i32 1
  store %struct.mtk_vcodec_pm* %15, %struct.mtk_vcodec_pm** %6, align 8
  %16 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %17 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %18 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %17, i32 0, i32 3
  store %struct.mtk_vcodec_dev* %16, %struct.mtk_vcodec_dev** %18, align 8
  %19 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %20 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %19, i32 0, i32 2
  store %struct.mtk_vcodec_clk* %20, %struct.mtk_vcodec_clk** %7, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.device_node* @of_parse_phandle(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %25, %struct.device_node** %4, align 8
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %148

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %31)
  store %struct.platform_device* %32, %struct.platform_device** %5, align 8
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = call i32 @of_node_put(%struct.device_node* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = icmp ne %struct.platform_device* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %148

42:                                               ; preds = %30
  %43 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %46 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %45, i32 0, i32 1
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %46, align 8
  %47 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %47, i32 0, i32 0
  %49 = load %struct.platform_device*, %struct.platform_device** %48, align 8
  store %struct.platform_device* %49, %struct.platform_device** %5, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %53 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %52, i32 0, i32 0
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @of_property_count_strings(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %60 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %62 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %42
  %66 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %69 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.mtk_vcodec_clk_info* @devm_kcalloc(%struct.TYPE_4__* %67, i32 %70, i32 8, i32 %71)
  %73 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %74 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %73, i32 0, i32 1
  store %struct.mtk_vcodec_clk_info* %72, %struct.mtk_vcodec_clk_info** %74, align 8
  %75 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %76 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %75, i32 0, i32 1
  %77 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %76, align 8
  %78 = icmp ne %struct.mtk_vcodec_clk_info* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %148

82:                                               ; preds = %65
  br label %87

83:                                               ; preds = %42
  %84 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %148

87:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %140, %87
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %91 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %143

94:                                               ; preds = %88
  %95 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %96 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %95, i32 0, i32 1
  %97 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %97, i64 %99
  store %struct.mtk_vcodec_clk_info* %100, %struct.mtk_vcodec_clk_info** %8, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %107 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %106, i32 0, i32 1
  %108 = call i32 @of_property_read_string_index(i32 %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %94
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %2, align 4
  br label %148

115:                                              ; preds = %94
  %116 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %119 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @devm_clk_get(%struct.TYPE_4__* %117, i32 %120)
  %122 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %123 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %125 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @IS_ERR(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %115
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %132 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %130, i32 %133)
  %135 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %136 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @PTR_ERR(i32 %137)
  store i32 %138, i32* %2, align 4
  br label %148

139:                                              ; preds = %115
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %88

143:                                              ; preds = %88
  %144 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @pm_runtime_enable(%struct.TYPE_4__* %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %143, %129, %111, %83, %79, %41, %28
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, ...) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @of_property_count_strings(i32, i8*) #1

declare dso_local %struct.mtk_vcodec_clk_info* @devm_kcalloc(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
