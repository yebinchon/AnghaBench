; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_stream_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_stream_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csiphy_device = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__*, i32, i32, %struct.csiphy_config }
%struct.TYPE_10__ = type { i32 (%struct.csiphy_device*, %struct.csiphy_config*, i32, i32, i32)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.csiphy_config = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MSM_CSIPHY_PAD_SINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Cannot get CSI2 transmitter's pixel clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Got pixel clock == 0, cannot continue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csiphy_device*)* @csiphy_stream_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csiphy_stream_on(%struct.csiphy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csiphy_device*, align 8
  %4 = alloca %struct.csiphy_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.csiphy_device* %0, %struct.csiphy_device** %3, align 8
  %10 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %11 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %10, i32 0, i32 7
  store %struct.csiphy_config* %11, %struct.csiphy_config** %4, align 8
  %12 = load %struct.csiphy_config*, %struct.csiphy_config** %4, align 8
  %13 = getelementptr inbounds %struct.csiphy_config, %struct.csiphy_config* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @csiphy_get_lane_mask(i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %18 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %21 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %24 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %23, i32 0, i32 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i64, i64* @MSM_CSIPHY_PAD_SINK, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @csiphy_get_bpp(i32 %19, i32 %22, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %32 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @camss_get_pixel_clock(i32* %33, i32* %5)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %1
  %38 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %39 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %106

46:                                               ; preds = %1
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %51 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %106

58:                                               ; preds = %46
  %59 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %60 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @readl_relaxed(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.csiphy_config*, %struct.csiphy_config** %4, align 8
  %64 = getelementptr inbounds %struct.csiphy_config, %struct.csiphy_config* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 24
  %70 = icmp eq i32 %69, 24
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, -241
  store i32 %73, i32* %8, align 4
  %74 = load %struct.csiphy_config*, %struct.csiphy_config** %4, align 8
  %75 = getelementptr inbounds %struct.csiphy_config, %struct.csiphy_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 %76, 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %88

80:                                               ; preds = %67, %58
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, -16
  store i32 %82, i32* %8, align 4
  %83 = load %struct.csiphy_config*, %struct.csiphy_config** %4, align 8
  %84 = getelementptr inbounds %struct.csiphy_config, %struct.csiphy_config* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %80, %71
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %91 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @writel_relaxed(i32 %89, i32 %92)
  %94 = call i32 (...) @wmb()
  %95 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %96 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32 (%struct.csiphy_device*, %struct.csiphy_config*, i32, i32, i32)*, i32 (%struct.csiphy_device*, %struct.csiphy_config*, i32, i32, i32)** %98, align 8
  %100 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %101 = load %struct.csiphy_config*, %struct.csiphy_config** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 %99(%struct.csiphy_device* %100, %struct.csiphy_config* %101, i32 %102, i32 %103, i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %88, %49, %37
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @csiphy_get_lane_mask(i32*) #1

declare dso_local i32 @csiphy_get_bpp(i32, i32, i32) #1

declare dso_local i32 @camss_get_pixel_clock(i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
