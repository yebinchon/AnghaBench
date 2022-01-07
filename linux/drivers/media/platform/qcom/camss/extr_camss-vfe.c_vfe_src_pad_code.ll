; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_src_pad_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_src_pad_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_line = type { i32 }
%struct.vfe_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CAMSS_8x16 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_YUYV8_1_5X8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YVYU8_1_5X8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_1_5X8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_VYUY8_1_5X8 = common dso_local global i32 0, align 4
@CAMSS_8x96 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_line*, i32, i32, i32)* @vfe_src_pad_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_src_pad_code(%struct.vfe_line* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfe_line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfe_device*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [5 x i32], align 16
  %16 = alloca [5 x i32], align 16
  %17 = alloca [5 x i32], align 16
  %18 = alloca [5 x i32], align 16
  store %struct.vfe_line* %0, %struct.vfe_line** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.vfe_line*, %struct.vfe_line** %6, align 8
  %20 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %19)
  store %struct.vfe_device* %20, %struct.vfe_device** %10, align 8
  %21 = load %struct.vfe_device*, %struct.vfe_device** %10, align 8
  %22 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CAMSS_8x16, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %70 [
    i32 129, label %30
    i32 128, label %40
    i32 131, label %50
    i32 130, label %60
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 129, i32* %31, align 4
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_1_5X8, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @vfe_find_code(i32* %34, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %145

40:                                               ; preds = %28
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 128, i32* %41, align 4
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* @MEDIA_BUS_FMT_YVYU8_1_5X8, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @vfe_find_code(i32* %44, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %145

50:                                               ; preds = %28
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 131, i32* %51, align 4
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_1_5X8, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %56 = call i32 @ARRAY_SIZE(i32* %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @vfe_find_code(i32* %54, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %145

60:                                               ; preds = %28
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 130, i32* %61, align 4
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* @MEDIA_BUS_FMT_VYUY8_1_5X8, align 4
  store i32 %63, i32* %62, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(i32* %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @vfe_find_code(i32* %64, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %145

70:                                               ; preds = %28
  %71 = load i32, i32* %8, align 4
  %72 = icmp ugt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %145

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %5, align 4
  br label %145

76:                                               ; preds = %4
  %77 = load %struct.vfe_device*, %struct.vfe_device** %10, align 8
  %78 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CAMSS_8x96, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %144

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  switch i32 %85, label %138 [
    i32 129, label %86
    i32 128, label %99
    i32 131, label %112
    i32 130, label %125
  ]

86:                                               ; preds = %84
  %87 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  store i32 129, i32* %87, align 4
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 128, i32* %88, align 4
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 131, i32* %89, align 4
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 130, i32* %90, align 4
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_1_5X8, align 4
  store i32 %92, i32* %91, align 4
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %94 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %95 = call i32 @ARRAY_SIZE(i32* %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @vfe_find_code(i32* %93, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %5, align 4
  br label %145

99:                                               ; preds = %84
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  store i32 128, i32* %100, align 4
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 129, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 131, i32* %102, align 4
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 130, i32* %103, align 4
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* @MEDIA_BUS_FMT_YVYU8_1_5X8, align 4
  store i32 %105, i32* %104, align 4
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %107 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %108 = call i32 @ARRAY_SIZE(i32* %107)
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @vfe_find_code(i32* %106, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  br label %145

112:                                              ; preds = %84
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  store i32 131, i32* %113, align 4
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 129, i32* %114, align 4
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 128, i32* %115, align 4
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 130, i32* %116, align 4
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_1_5X8, align 4
  store i32 %118, i32* %117, align 4
  %119 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %121 = call i32 @ARRAY_SIZE(i32* %120)
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @vfe_find_code(i32* %119, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %5, align 4
  br label %145

125:                                              ; preds = %84
  %126 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 0
  store i32 130, i32* %126, align 4
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 129, i32* %127, align 4
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 128, i32* %128, align 4
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 131, i32* %129, align 4
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* @MEDIA_BUS_FMT_VYUY8_1_5X8, align 4
  store i32 %131, i32* %130, align 4
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 0
  %133 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 0
  %134 = call i32 @ARRAY_SIZE(i32* %133)
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @vfe_find_code(i32* %132, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %5, align 4
  br label %145

138:                                              ; preds = %84
  %139 = load i32, i32* %8, align 4
  %140 = icmp ugt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %145

142:                                              ; preds = %138
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %5, align 4
  br label %145

144:                                              ; preds = %76
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %142, %141, %125, %112, %99, %86, %74, %73, %60, %50, %40, %30
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

declare dso_local i32 @vfe_find_code(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
