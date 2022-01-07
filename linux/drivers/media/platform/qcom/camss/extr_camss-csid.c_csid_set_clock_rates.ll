; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_set_clock_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_set_clock_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csid_device = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32, i32, %struct.camss_clock*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.camss_clock = type { i32, i64*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.csid_format = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"csi0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"csi1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"csi2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"csi3\00", align 1
@MSM_CSIPHY_PAD_SINK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Pixel clock is too high for CSID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"clk round rate failed: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"clk set rate failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csid_device*)* @csid_set_clock_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csid_set_clock_rates(%struct.csid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csid_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.camss_clock*, align 8
  %10 = alloca %struct.csid_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.csid_device* %0, %struct.csid_device** %3, align 8
  %14 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %15 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %14, i32 0, i32 7
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %4, align 8
  %19 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %20 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @camss_get_pixel_clock(i32* %21, i32* %5)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %1
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %168, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %30 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %171

33:                                               ; preds = %27
  %34 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %35 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %34, i32 0, i32 5
  %36 = load %struct.camss_clock*, %struct.camss_clock** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %36, i64 %38
  store %struct.camss_clock* %39, %struct.camss_clock** %9, align 8
  %40 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %41 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcmp(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %33
  %46 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %47 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcmp(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %53 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %59 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcmp(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %167, label %63

63:                                               ; preds = %57, %51, %45, %33
  %64 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %65 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %68 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %71 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i64, i64* @MSM_CSIPHY_PAD_SINK, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.csid_format* @csid_get_fmt_entry(i32 %66, i32 %69, i32 %76)
  store %struct.csid_format* %77, %struct.csid_format** %10, align 8
  %78 = load %struct.csid_device*, %struct.csid_device** %3, align 8
  %79 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.csid_format*, %struct.csid_format** %10, align 8
  %84 = getelementptr inbounds %struct.csid_format, %struct.csid_format* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 2, %87
  %89 = mul nsw i32 %88, 4
  %90 = sdiv i32 %86, %89
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %12, align 8
  %92 = call i32 @camss_add_clock_margin(i64* %12)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %111, %63
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %96 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %102 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %100, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %114

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %93

114:                                              ; preds = %109, %93
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %117 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %172

125:                                              ; preds = %114
  %126 = load i64, i64* %12, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %130 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %128, %125
  %134 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %135 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %138 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @clk_round_rate(i32 %136, i64 %143)
  store i64 %144, i64* %13, align 8
  %145 = load i64, i64* %13, align 8
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %133
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = load i64, i64* %13, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %172

153:                                              ; preds = %133
  %154 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %155 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @clk_set_rate(i32 %156, i64 %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %153
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %172

166:                                              ; preds = %153
  br label %167

167:                                              ; preds = %166, %57
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %27

171:                                              ; preds = %27
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %161, %147, %120
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @camss_get_pixel_clock(i32*, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.csid_format* @csid_get_fmt_entry(i32, i32, i32) #1

declare dso_local i32 @camss_add_clock_margin(i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
