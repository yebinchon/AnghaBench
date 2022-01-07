; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_check_clock_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_check_clock_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i32, %struct.vfe_line*, %struct.camss_clock* }
%struct.vfe_line = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.camss_clock = type { i32, i32 }

@MSM_VFE_LINE_NUM = common dso_local global i32 0, align 4
@VFE_LINE_RDI0 = common dso_local global i32 0, align 4
@VFE_LINE_PIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vfe0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vfe1\00", align 1
@MSM_VFE_PAD_SINK = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_device*)* @vfe_check_clock_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_check_clock_rates(%struct.vfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.camss_clock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vfe_line*, align 8
  %15 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  %16 = load i32, i32* @MSM_VFE_LINE_NUM, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = load i32, i32* @VFE_LINE_RDI0, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %45, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @VFE_LINE_PIX, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %27 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %26, i32 0, i32 1
  %28 = load %struct.vfe_line*, %struct.vfe_line** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %28, i64 %30
  %32 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %19, i64 %35
  %37 = call i32 @camss_get_pixel_clock(i32* %33, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %19, i64 %42
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %21

48:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %141, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %52 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %144

55:                                               ; preds = %49
  %56 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %57 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %56, i32 0, i32 2
  %58 = load %struct.camss_clock*, %struct.camss_clock** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %58, i64 %60
  store %struct.camss_clock* %61, %struct.camss_clock** %9, align 8
  %62 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %63 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strcmp(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %69 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strcmp(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %140, label %73

73:                                               ; preds = %67, %55
  store i32 0, i32* %10, align 4
  %74 = load i32, i32* @VFE_LINE_RDI0, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %123, %73
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @VFE_LINE_PIX, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %126

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @VFE_LINE_PIX, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %19, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  br label %116

88:                                               ; preds = %79
  %89 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %90 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %89, i32 0, i32 1
  %91 = load %struct.vfe_line*, %struct.vfe_line** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %91, i64 %93
  store %struct.vfe_line* %94, %struct.vfe_line** %14, align 8
  %95 = load %struct.vfe_line*, %struct.vfe_line** %14, align 8
  %96 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vfe_line*, %struct.vfe_line** %14, align 8
  %99 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.vfe_line*, %struct.vfe_line** %14, align 8
  %102 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @vfe_get_bpp(i32 %97, i32 %100, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %19, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %13, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sdiv i32 %114, 64
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %88, %83
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %120, %116
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %75

126:                                              ; preds = %75
  %127 = call i32 @camss_add_clock_margin(i32* %10)
  %128 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %129 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @clk_get_rate(i32 %130)
  store i64 %131, i64* %11, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load i32, i32* @EBUSY, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %145

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %67
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %49

144:                                              ; preds = %49
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %145

145:                                              ; preds = %144, %136
  %146 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @camss_get_pixel_clock(i32*, i32*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @vfe_get_bpp(i32, i32, i32) #2

declare dso_local i32 @camss_add_clock_margin(i32*) #2

declare dso_local i64 @clk_get_rate(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
