; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc_pm.c_mtk_vcodec_init_enc_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc_pm.c_mtk_vcodec_init_enc_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_dev = type { %struct.platform_device*, %struct.mtk_vcodec_pm }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_vcodec_pm = type { %struct.device*, %struct.device*, %struct.device*, %struct.mtk_vcodec_clk, %struct.mtk_vcodec_dev* }
%struct.mtk_vcodec_clk = type { i32, %struct.mtk_vcodec_clk_info* }
%struct.mtk_vcodec_clk_info = type { i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"mediatek,larb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"no mediatek,larb found\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"no mediatek,larb device found\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to get venc clock count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"venc failed to get clk name %d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"venc devm_clk_get (%d)%s fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_vcodec_init_enc_pm(%struct.mtk_vcodec_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_vcodec_dev*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.mtk_vcodec_pm*, align 8
  %7 = alloca %struct.mtk_vcodec_clk*, align 8
  %8 = alloca %struct.mtk_vcodec_clk_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.mtk_vcodec_dev* %0, %struct.mtk_vcodec_dev** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %12, i32 0, i32 0
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  %15 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %15, i32 0, i32 1
  store %struct.mtk_vcodec_pm* %16, %struct.mtk_vcodec_pm** %6, align 8
  %17 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %18 = call i32 @memset(%struct.mtk_vcodec_pm* %17, i32 0, i32 48)
  %19 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %20 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %21 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %20, i32 0, i32 4
  store %struct.mtk_vcodec_dev* %19, %struct.mtk_vcodec_dev** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %25 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %24, i32 0, i32 0
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %11, align 8
  %28 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %28, i32 0, i32 3
  store %struct.mtk_vcodec_clk* %29, %struct.mtk_vcodec_clk** %7, align 8
  %30 = load %struct.device*, %struct.device** %11, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.device_node* @of_parse_phandle(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %33, %struct.device_node** %4, align 8
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = icmp ne %struct.device_node* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %1
  %37 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %180

40:                                               ; preds = %1
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %41)
  store %struct.platform_device* %42, %struct.platform_device** %5, align 8
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = icmp ne %struct.platform_device* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %180

51:                                               ; preds = %40
  %52 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %55 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %54, i32 0, i32 2
  store %struct.device* %53, %struct.device** %55, align 8
  %56 = load %struct.device*, %struct.device** %11, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.device_node* @of_parse_phandle(i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  store %struct.device_node* %59, %struct.device_node** %4, align 8
  %60 = load %struct.device_node*, %struct.device_node** %4, align 8
  %61 = icmp ne %struct.device_node* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %180

66:                                               ; preds = %51
  %67 = load %struct.device_node*, %struct.device_node** %4, align 8
  %68 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %67)
  store %struct.platform_device* %68, %struct.platform_device** %5, align 8
  %69 = load %struct.device_node*, %struct.device_node** %4, align 8
  %70 = call i32 @of_node_put(%struct.device_node* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %72 = icmp ne %struct.platform_device* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %180

77:                                               ; preds = %66
  %78 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %81 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %80, i32 0, i32 1
  store %struct.device* %79, %struct.device** %81, align 8
  %82 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %82, i32 0, i32 0
  %84 = load %struct.platform_device*, %struct.platform_device** %83, align 8
  store %struct.platform_device* %84, %struct.platform_device** %5, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %6, align 8
  %88 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %87, i32 0, i32 0
  store %struct.device* %86, %struct.device** %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @of_property_count_strings(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %95 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %97 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %77
  %101 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %104 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.mtk_vcodec_clk_info* @devm_kcalloc(%struct.device* %102, i32 %105, i32 8, i32 %106)
  %108 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %109 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %108, i32 0, i32 1
  store %struct.mtk_vcodec_clk_info* %107, %struct.mtk_vcodec_clk_info** %109, align 8
  %110 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %111 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %110, i32 0, i32 1
  %112 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %111, align 8
  %113 = icmp ne %struct.mtk_vcodec_clk_info* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %100
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %180

117:                                              ; preds = %100
  br label %122

118:                                              ; preds = %77
  %119 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %180

122:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %175, %122
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %126 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %178

129:                                              ; preds = %123
  %130 = load %struct.mtk_vcodec_clk*, %struct.mtk_vcodec_clk** %7, align 8
  %131 = getelementptr inbounds %struct.mtk_vcodec_clk, %struct.mtk_vcodec_clk* %130, i32 0, i32 1
  %132 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %132, i64 %134
  store %struct.mtk_vcodec_clk_info* %135, %struct.mtk_vcodec_clk_info** %8, align 8
  %136 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.device, %struct.device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %142 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %141, i32 0, i32 1
  %143 = call i32 @of_property_read_string_index(i32 %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %129
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %2, align 4
  br label %180

150:                                              ; preds = %129
  %151 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %154 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @devm_clk_get(%struct.device* %152, i32 %155)
  %157 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %158 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %160 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @IS_ERR(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %150
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %167 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, ...) @mtk_v4l2_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %165, i32 %168)
  %170 = load %struct.mtk_vcodec_clk_info*, %struct.mtk_vcodec_clk_info** %8, align 8
  %171 = getelementptr inbounds %struct.mtk_vcodec_clk_info, %struct.mtk_vcodec_clk_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @PTR_ERR(i32 %172)
  store i32 %173, i32* %2, align 4
  br label %180

174:                                              ; preds = %150
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %123

178:                                              ; preds = %123
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %164, %146, %118, %114, %73, %62, %47, %36
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @memset(%struct.mtk_vcodec_pm*, i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, ...) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_count_strings(i32, i8*) #1

declare dso_local %struct.mtk_vcodec_clk_info* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i32*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
