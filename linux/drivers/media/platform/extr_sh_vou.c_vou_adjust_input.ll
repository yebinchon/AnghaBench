; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_vou_adjust_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_vou_adjust_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_vou_geometry = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VOU_MIN_IMAGE_WIDTH = common dso_local global i32 0, align 4
@VOU_MAX_IMAGE_WIDTH = common dso_local global i32 0, align 4
@VOU_MIN_IMAGE_HEIGHT = common dso_local global i32 0, align 4
@vou_scale_h_num = common dso_local global i32* null, align 8
@vou_scale_h_den = common dso_local global i32* null, align 8
@vou_scale_v_num = common dso_local global i32* null, align 8
@vou_scale_v_den = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_vou_geometry*, i32)* @vou_adjust_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vou_adjust_input(%struct.sh_vou_geometry* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_vou_geometry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sh_vou_geometry* %0, %struct.sh_vou_geometry** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @UINT_MAX, align 4
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @V4L2_STD_525_60, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 480, i32* %7, align 4
  br label %21

20:                                               ; preds = %2
  store i32 576, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %23 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %22, i32 0, i32 0
  %24 = load i32, i32* @VOU_MIN_IMAGE_WIDTH, align 4
  %25 = load i32, i32* @VOU_MAX_IMAGE_WIDTH, align 4
  %26 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %27 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %26, i32 0, i32 1
  %28 = load i32, i32* @VOU_MIN_IMAGE_HEIGHT, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @v4l_bound_align_image(i32* %23, i32 %24, i32 %25, i32 2, i32* %27, i32 %28, i32 %29, i32 1, i32 0)
  %31 = load i32*, i32** @vou_scale_h_num, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %77, %21
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %34
  %38 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %39 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** @vou_scale_h_den, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %41, %46
  %48 = load i32*, i32** @vou_scale_h_num, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = udiv i32 %47, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @VOU_MAX_IMAGE_WIDTH, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  br label %80

58:                                               ; preds = %37
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %61 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub i32 %59, %62
  %64 = call i32 @abs(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %80

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %8, align 4
  br label %34

80:                                               ; preds = %75, %57, %34
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %83 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %86 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @UINT_MAX, align 4
  store i32 %87, i32* %5, align 4
  %88 = load i32*, i32** @vou_scale_v_num, align 8
  %89 = call i32 @ARRAY_SIZE(i32* %88)
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %134, %80
  %92 = load i32, i32* %8, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %137

94:                                               ; preds = %91
  %95 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %96 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** @vou_scale_v_den, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul i32 %98, %103
  %105 = load i32*, i32** @vou_scale_v_num, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = udiv i32 %104, %109
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ugt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %94
  br label %137

115:                                              ; preds = %94
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %118 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub i32 %116, %119
  %121 = call i32 @abs(i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %125, %115
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %137

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %8, align 4
  br label %91

137:                                              ; preds = %132, %114, %91
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %140 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.sh_vou_geometry*, %struct.sh_vou_geometry** %3, align 8
  %143 = getelementptr inbounds %struct.sh_vou_geometry, %struct.sh_vou_geometry* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  ret void
}

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
