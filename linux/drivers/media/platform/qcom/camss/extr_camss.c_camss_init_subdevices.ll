; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_init_subdevices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_init_subdevices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resources = type { i32 }
%struct.resources_ispif = type { i32 }
%struct.camss = type { i64, i32, i32, i32, i32, i32*, i32, i32*, i32* }

@CAMSS_8x16 = common dso_local global i64 0, align 8
@csiphy_res_8x16 = common dso_local global %struct.resources* null, align 8
@csid_res_8x16 = common dso_local global %struct.resources* null, align 8
@ispif_res_8x16 = common dso_local global %struct.resources_ispif zeroinitializer, align 4
@vfe_res_8x16 = common dso_local global %struct.resources* null, align 8
@CAMSS_8x96 = common dso_local global i64 0, align 8
@csiphy_res_8x96 = common dso_local global %struct.resources* null, align 8
@csid_res_8x96 = common dso_local global %struct.resources* null, align 8
@ispif_res_8x96 = common dso_local global %struct.resources_ispif zeroinitializer, align 4
@vfe_res_8x96 = common dso_local global %struct.resources* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to init csiphy%d sub-device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to init csid%d sub-device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to init ispif sub-device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Fail to init vfe%d sub-device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camss*)* @camss_init_subdevices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camss_init_subdevices(%struct.camss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camss*, align 8
  %4 = alloca %struct.resources*, align 8
  %5 = alloca %struct.resources*, align 8
  %6 = alloca %struct.resources_ispif*, align 8
  %7 = alloca %struct.resources*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.camss* %0, %struct.camss** %3, align 8
  %10 = load %struct.camss*, %struct.camss** %3, align 8
  %11 = getelementptr inbounds %struct.camss, %struct.camss* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CAMSS_8x16, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.resources*, %struct.resources** @csiphy_res_8x16, align 8
  store %struct.resources* %16, %struct.resources** %4, align 8
  %17 = load %struct.resources*, %struct.resources** @csid_res_8x16, align 8
  store %struct.resources* %17, %struct.resources** %5, align 8
  store %struct.resources_ispif* @ispif_res_8x16, %struct.resources_ispif** %6, align 8
  %18 = load %struct.resources*, %struct.resources** @vfe_res_8x16, align 8
  store %struct.resources* %18, %struct.resources** %7, align 8
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.camss*, %struct.camss** %3, align 8
  %21 = getelementptr inbounds %struct.camss, %struct.camss* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CAMSS_8x96, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.resources*, %struct.resources** @csiphy_res_8x96, align 8
  store %struct.resources* %26, %struct.resources** %4, align 8
  %27 = load %struct.resources*, %struct.resources** @csid_res_8x96, align 8
  store %struct.resources* %27, %struct.resources** %5, align 8
  store %struct.resources_ispif* @ispif_res_8x96, %struct.resources_ispif** %6, align 8
  %28 = load %struct.resources*, %struct.resources** @vfe_res_8x96, align 8
  store %struct.resources* %28, %struct.resources** %7, align 8
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %153

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %15
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %65, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.camss*, %struct.camss** %3, align 8
  %37 = getelementptr inbounds %struct.camss, %struct.camss* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load %struct.camss*, %struct.camss** %3, align 8
  %42 = load %struct.camss*, %struct.camss** %3, align 8
  %43 = getelementptr inbounds %struct.camss, %struct.camss* %42, i32 0, i32 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.resources*, %struct.resources** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.resources, %struct.resources* %48, i64 %50
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @msm_csiphy_subdev_init(%struct.camss* %41, i32* %47, %struct.resources* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %40
  %57 = load %struct.camss*, %struct.camss** %3, align 8
  %58 = getelementptr inbounds %struct.camss, %struct.camss* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %153

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %34

68:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %100, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.camss*, %struct.camss** %3, align 8
  %72 = getelementptr inbounds %struct.camss, %struct.camss* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = load %struct.camss*, %struct.camss** %3, align 8
  %77 = load %struct.camss*, %struct.camss** %3, align 8
  %78 = getelementptr inbounds %struct.camss, %struct.camss* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load %struct.resources*, %struct.resources** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.resources, %struct.resources* %83, i64 %85
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @msm_csid_subdev_init(%struct.camss* %76, i32* %82, %struct.resources* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %75
  %92 = load %struct.camss*, %struct.camss** %3, align 8
  %93 = getelementptr inbounds %struct.camss, %struct.camss* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %153

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %69

103:                                              ; preds = %69
  %104 = load %struct.camss*, %struct.camss** %3, align 8
  %105 = getelementptr inbounds %struct.camss, %struct.camss* %104, i32 0, i32 6
  %106 = load %struct.resources_ispif*, %struct.resources_ispif** %6, align 8
  %107 = call i32 @msm_ispif_subdev_init(i32* %105, %struct.resources_ispif* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load %struct.camss*, %struct.camss** %3, align 8
  %112 = getelementptr inbounds %struct.camss, %struct.camss* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %153

117:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %149, %117
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.camss*, %struct.camss** %3, align 8
  %121 = getelementptr inbounds %struct.camss, %struct.camss* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = icmp ult i32 %119, %122
  br i1 %123, label %124, label %152

124:                                              ; preds = %118
  %125 = load %struct.camss*, %struct.camss** %3, align 8
  %126 = load %struct.camss*, %struct.camss** %3, align 8
  %127 = getelementptr inbounds %struct.camss, %struct.camss* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load %struct.resources*, %struct.resources** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.resources, %struct.resources* %132, i64 %134
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @msm_vfe_subdev_init(%struct.camss* %125, i32* %131, %struct.resources* %135, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %124
  %141 = load %struct.camss*, %struct.camss** %3, align 8
  %142 = getelementptr inbounds %struct.camss, %struct.camss* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %2, align 4
  br label %153

148:                                              ; preds = %124
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %118

152:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %140, %110, %91, %56, %29
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @msm_csiphy_subdev_init(%struct.camss*, i32*, %struct.resources*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @msm_csid_subdev_init(%struct.camss*, i32*, %struct.resources*, i32) #1

declare dso_local i32 @msm_ispif_subdev_init(i32*, %struct.resources_ispif*) #1

declare dso_local i32 @msm_vfe_subdev_init(%struct.camss*, i32*, %struct.resources*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
