; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_set_phy_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_set_phy_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.aqc111_data* }
%struct.aqc111_data = type { i32 }

@AQ_ADV_MASK = common dso_local global i32 0, align 4
@AQ_PAUSE = common dso_local global i32 0, align 4
@AQ_ASYM_PAUSE = common dso_local global i32 0, align 4
@AQ_DOWNSHIFT = common dso_local global i32 0, align 4
@AQ_DSH_RETRIES_MASK = common dso_local global i32 0, align 4
@AQ_DSH_RETRIES_SHIFT = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AQ_ADV_5G = common dso_local global i32 0, align 4
@AQ_ADV_2G5 = common dso_local global i32 0, align 4
@AQ_ADV_1G = common dso_local global i32 0, align 4
@AQ_ADV_100M = common dso_local global i32 0, align 4
@AQ_PHY_OPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i64, i32)* @aqc111_set_phy_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aqc111_set_phy_speed(%struct.usbnet* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aqc111_data*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 0
  %10 = load %struct.aqc111_data*, %struct.aqc111_data** %9, align 8
  store %struct.aqc111_data* %10, %struct.aqc111_data** %7, align 8
  %11 = load i32, i32* @AQ_ADV_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %14 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @AQ_PAUSE, align 4
  %18 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %19 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @AQ_ASYM_PAUSE, align 4
  %23 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %24 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @AQ_DOWNSHIFT, align 4
  %28 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %29 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @AQ_DSH_RETRIES_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %35 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @AQ_DSH_RETRIES_SHIFT, align 4
  %39 = shl i32 3, %38
  %40 = load i32, i32* @AQ_DSH_RETRIES_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %43 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @AUTONEG_ENABLE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %75 [
    i32 128, label %51
    i32 129, label %57
    i32 130, label %63
    i32 131, label %69
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* @AQ_ADV_5G, align 4
  %53 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %54 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %51
  %58 = load i32, i32* @AQ_ADV_2G5, align 4
  %59 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %60 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %49, %57
  %64 = load i32, i32* @AQ_ADV_1G, align 4
  %65 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %66 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %49, %63
  %70 = load i32, i32* @AQ_ADV_100M, align 4
  %71 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %72 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %49
  br label %103

76:                                               ; preds = %3
  %77 = load i32, i32* %6, align 4
  switch i32 %77, label %102 [
    i32 128, label %78
    i32 129, label %84
    i32 130, label %90
    i32 131, label %96
  ]

78:                                               ; preds = %76
  %79 = load i32, i32* @AQ_ADV_5G, align 4
  %80 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %81 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %102

84:                                               ; preds = %76
  %85 = load i32, i32* @AQ_ADV_2G5, align 4
  %86 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %87 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %102

90:                                               ; preds = %76
  %91 = load i32, i32* @AQ_ADV_1G, align 4
  %92 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %93 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %102

96:                                               ; preds = %76
  %97 = load i32, i32* @AQ_ADV_100M, align 4
  %98 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %99 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %76, %96, %90, %84, %78
  br label %103

103:                                              ; preds = %102, %75
  %104 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %105 = load i32, i32* @AQ_PHY_OPS, align 4
  %106 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %107 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %106, i32 0, i32 0
  %108 = call i32 @aqc111_write32_cmd(%struct.usbnet* %104, i32 %105, i32 0, i32 0, i32* %107)
  ret void
}

declare dso_local i32 @aqc111_write32_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
