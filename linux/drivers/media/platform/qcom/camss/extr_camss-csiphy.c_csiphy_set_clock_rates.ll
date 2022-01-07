; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_set_clock_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_set_clock_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csiphy_device = type { i32, i64, %struct.TYPE_12__, %struct.TYPE_9__*, i32, i32, %struct.camss_clock*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.camss_clock = type { i32, i64*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"csiphy0_timer\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"csiphy1_timer\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"csiphy2_timer\00", align 1
@MSM_CSIPHY_PAD_SINK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Pixel clock is too high for CSIPHY\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"clk round rate failed: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"clk set rate failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csiphy_device*)* @csiphy_set_clock_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csiphy_set_clock_rates(%struct.csiphy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csiphy_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.camss_clock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.csiphy_device* %0, %struct.csiphy_device** %3, align 8
  %14 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %15 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %14, i32 0, i32 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %4, align 8
  %19 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %20 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
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
  %29 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %30 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %171

33:                                               ; preds = %27
  %34 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %35 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %34, i32 0, i32 6
  %36 = load %struct.camss_clock*, %struct.camss_clock** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %36, i64 %38
  store %struct.camss_clock* %39, %struct.camss_clock** %9, align 8
  %40 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %41 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcmp(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %33
  %46 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %47 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcmp(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %53 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %167, label %57

57:                                               ; preds = %51, %45, %33
  %58 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %59 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %62 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %65 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %64, i32 0, i32 3
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i64, i64* @MSM_CSIPHY_PAD_SINK, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @csiphy_get_bpp(i32 %60, i32 %63, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %73 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 2, %82
  %84 = mul nsw i32 %83, 4
  %85 = sdiv i32 %81, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %12, align 8
  %87 = call i32 @camss_add_clock_margin(i64* %12)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %106, %57
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %91 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %97 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %95, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %109

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %88

109:                                              ; preds = %104, %88
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %112 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %172

120:                                              ; preds = %109
  %121 = load i64, i64* %12, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %125 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %123, %120
  %129 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %130 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %133 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @clk_round_rate(i32 %131, i64 %138)
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %128
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = load i64, i64* %13, align 8
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %172

148:                                              ; preds = %128
  %149 = load i64, i64* %13, align 8
  %150 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %151 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load %struct.camss_clock*, %struct.camss_clock** %9, align 8
  %153 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %156 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @clk_set_rate(i32 %154, i64 %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %148
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %172

166:                                              ; preds = %148
  br label %167

167:                                              ; preds = %166, %51
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %27

171:                                              ; preds = %27
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %161, %142, %115
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @camss_get_pixel_clock(i32*, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @csiphy_get_bpp(i32, i32, i32) #1

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
