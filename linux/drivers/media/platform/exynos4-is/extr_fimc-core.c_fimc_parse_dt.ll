; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { %struct.fimc_variant*, i32, i32, %struct.TYPE_2__* }
%struct.fimc_variant = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.fimc_pix_limit* }
%struct.fimc_pix_limit = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }

@FIMC_PIX_LIMITS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"samsung,lcd-wb\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fimc_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"samsung,pix-limits\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"samsung,min-pix-sizes\00", align 1
@FIMC_DEF_MIN_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"samsung,min-pix-alignment\00", align 1
@FIMC_DEF_HEIGHT_ALIGN = common dso_local global i32 0, align 4
@FIMC_DEF_HOR_OFFS_ALIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"samsung,rotators\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"samsung,mainscaler-ext\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"samsung,isp-wb\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"samsung,cam-if\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fimc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_dev*, i32*)* @fimc_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_parse_dt(%struct.fimc_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca %struct.fimc_variant*, align 8
  %10 = alloca %struct.fimc_pix_limit*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %16 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %7, align 8
  %22 = load i32, i32* @FIMC_PIX_LIMITS_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load %struct.device_node*, %struct.device_node** %7, align 8
  %27 = call i8* @of_property_read_bool(%struct.device_node* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %181

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.fimc_variant* @devm_kzalloc(%struct.device* %33, i32 72, i32 %34)
  store %struct.fimc_variant* %35, %struct.fimc_variant** %9, align 8
  %36 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %37 = icmp ne %struct.fimc_variant* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %181

41:                                               ; preds = %32
  %42 = load i32, i32* @fimc_of_match, align 4
  %43 = load %struct.device_node*, %struct.device_node** %7, align 8
  %44 = call %struct.of_device_id* @of_match_node(i32 %42, %struct.device_node* %43)
  store %struct.of_device_id* %44, %struct.of_device_id** %8, align 8
  %45 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %46 = icmp ne %struct.of_device_id* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %181

50:                                               ; preds = %41
  %51 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %52 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %55 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.device_node*, %struct.device_node** %7, align 8
  %57 = load i32, i32* @FIMC_PIX_LIMITS_MAX, align 4
  %58 = call i32 @of_property_read_u32_array(%struct.device_node* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %25, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %181

63:                                               ; preds = %50
  %64 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %65 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %64, i64 1
  %66 = bitcast %struct.fimc_variant* %65 to %struct.fimc_pix_limit*
  store %struct.fimc_pix_limit* %66, %struct.fimc_pix_limit** %10, align 8
  %67 = getelementptr inbounds i32, i32* %25, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = load %struct.fimc_pix_limit*, %struct.fimc_pix_limit** %10, align 8
  %70 = getelementptr inbounds %struct.fimc_pix_limit, %struct.fimc_pix_limit* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds i32, i32* %25, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fimc_pix_limit*, %struct.fimc_pix_limit** %10, align 8
  %74 = getelementptr inbounds %struct.fimc_pix_limit, %struct.fimc_pix_limit* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds i32, i32* %25, i64 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fimc_pix_limit*, %struct.fimc_pix_limit** %10, align 8
  %78 = getelementptr inbounds %struct.fimc_pix_limit, %struct.fimc_pix_limit* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds i32, i32* %25, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fimc_pix_limit*, %struct.fimc_pix_limit** %10, align 8
  %82 = getelementptr inbounds %struct.fimc_pix_limit, %struct.fimc_pix_limit* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.fimc_pix_limit*, %struct.fimc_pix_limit** %10, align 8
  %84 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %85 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %84, i32 0, i32 9
  store %struct.fimc_pix_limit* %83, %struct.fimc_pix_limit** %85, align 8
  %86 = load %struct.device_node*, %struct.device_node** %7, align 8
  %87 = call i32 @of_property_read_u32_array(%struct.device_node* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %25, i32 2)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %63
  %91 = load i32, i32* @FIMC_DEF_MIN_SIZE, align 4
  br label %95

92:                                               ; preds = %63
  %93 = getelementptr inbounds i32, i32* %25, i64 0
  %94 = load i32, i32* %93, align 16
  br label %95

95:                                               ; preds = %92, %90
  %96 = phi i32 [ %91, %90 ], [ %94, %92 ]
  %97 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %98 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @FIMC_DEF_MIN_SIZE, align 4
  br label %106

103:                                              ; preds = %95
  %104 = getelementptr inbounds i32, i32* %25, i64 1
  %105 = load i32, i32* %104, align 4
  br label %106

106:                                              ; preds = %103, %101
  %107 = phi i32 [ %102, %101 ], [ %105, %103 ]
  %108 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %109 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.device_node*, %struct.device_node** %7, align 8
  %111 = call i32 @of_property_read_u32_array(%struct.device_node* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %25, i32 2)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* @FIMC_DEF_HEIGHT_ALIGN, align 4
  br label %119

116:                                              ; preds = %106
  %117 = getelementptr inbounds i32, i32* %25, i64 0
  %118 = load i32, i32* %117, align 16
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi i32 [ %115, %114 ], [ %118, %116 ]
  %121 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %122 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @FIMC_DEF_HOR_OFFS_ALIGN, align 4
  br label %130

127:                                              ; preds = %119
  %128 = getelementptr inbounds i32, i32* %25, i64 1
  %129 = load i32, i32* %128, align 4
  br label %130

130:                                              ; preds = %127, %125
  %131 = phi i32 [ %126, %125 ], [ %129, %127 ]
  %132 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %133 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.device_node*, %struct.device_node** %7, align 8
  %135 = getelementptr inbounds i32, i32* %25, i64 1
  %136 = call i32 @of_property_read_u32(%struct.device_node* %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %144

140:                                              ; preds = %130
  %141 = getelementptr inbounds i32, i32* %25, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 1
  br label %144

144:                                              ; preds = %140, %139
  %145 = phi i32 [ 1, %139 ], [ %143, %140 ]
  %146 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %147 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %155

151:                                              ; preds = %144
  %152 = getelementptr inbounds i32, i32* %25, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 16
  br label %155

155:                                              ; preds = %151, %150
  %156 = phi i32 [ 1, %150 ], [ %154, %151 ]
  %157 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %158 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = load %struct.device_node*, %struct.device_node** %7, align 8
  %160 = call i8* @of_property_read_bool(%struct.device_node* %159, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %161 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %162 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %161, i32 0, i32 8
  store i8* %160, i8** %162, align 8
  %163 = load %struct.device_node*, %struct.device_node** %7, align 8
  %164 = call i8* @of_property_read_bool(%struct.device_node* %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %165 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %166 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  %167 = load %struct.device_node*, %struct.device_node** %7, align 8
  %168 = call i8* @of_property_read_bool(%struct.device_node* %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %169 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %170 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %169, i32 0, i32 6
  store i8* %168, i8** %170, align 8
  %171 = load %struct.device_node*, %struct.device_node** %7, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @of_property_read_u32(%struct.device_node* %171, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %172)
  %174 = load %struct.device_node*, %struct.device_node** %7, align 8
  %175 = call i32 @of_alias_get_id(%struct.device_node* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %176 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %177 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load %struct.fimc_variant*, %struct.fimc_variant** %9, align 8
  %179 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %180 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %179, i32 0, i32 0
  store %struct.fimc_variant* %178, %struct.fimc_variant** %180, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %181

181:                                              ; preds = %155, %61, %47, %38, %29
  %182 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #2

declare dso_local %struct.fimc_variant* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #2

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
