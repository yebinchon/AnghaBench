; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_false_cca_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_false_cca_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, i32, i32, i8*, i32 }

@MT_PHYCTRL_STAT_PD = common dso_local global i32 0, align 4
@MT_PHYCTRL_STAT_PD_CCK = common dso_local global i32 0, align 4
@MT_PHYCTRL_STAT_PD_OFDM = common dso_local global i32 0, align 4
@MT_PHYCTRL_STAT_MDRDY = common dso_local global i32 0, align 4
@MT_PHYCTRL_STAT_MDRDY_CCK = common dso_local global i32 0, align 4
@MT_PHYCTRL_STAT_MDRDY_OFDM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7603_dev*)* @mt7603_false_cca_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_false_cca_check(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %10 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %11 = load i32, i32* @MT_PHYCTRL_STAT_PD, align 4
  %12 = call i32 @mt76_rr(%struct.mt7603_dev* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @MT_PHYCTRL_STAT_PD_CCK, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @FIELD_GET(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @MT_PHYCTRL_STAT_PD_OFDM, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @FIELD_GET(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %20 = load i32, i32* @MT_PHYCTRL_STAT_MDRDY, align 4
  %21 = call i32 @mt76_rr(%struct.mt7603_dev* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @MT_PHYCTRL_STAT_MDRDY_CCK, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @FIELD_GET(i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @MT_PHYCTRL_STAT_MDRDY_OFDM, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @FIELD_GET(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %37 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %39 = call i32 @mt7603_cca_stats_reset(%struct.mt7603_dev* %38)
  %40 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %41 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %40, i32 0, i32 4
  %42 = call i32 @mt76_get_min_avg_rssi(i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %1
  %46 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %47 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load i8*, i8** @jiffies, align 8
  %49 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %50 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  br label %128

51:                                               ; preds = %1
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 15
  store i32 %53, i32* %8, align 4
  %54 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %55 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %58 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 600
  br i1 %62, label %63, label %80

63:                                               ; preds = %51
  %64 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %70 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %69, i32 0, i32 2
  store i32 -92, i32* %70, align 8
  br label %76

71:                                               ; preds = %63
  %72 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %73 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i8*, i8** @jiffies, align 8
  %78 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %79 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  br label %109

80:                                               ; preds = %51
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 100
  br i1 %82, label %94, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** @jiffies, align 8
  %85 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %86 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @HZ, align 4
  %89 = mul nsw i32 10, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %87, i64 %90
  %92 = call i64 @time_after(i8* %84, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %83, %80
  %95 = load i8*, i8** @jiffies, align 8
  %96 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %97 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %99 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  br label %128

103:                                              ; preds = %94
  %104 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %105 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 2
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %103, %83
  br label %109

109:                                              ; preds = %108, %76
  %110 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %111 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %116 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %123 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load i8*, i8** @jiffies, align 8
  %125 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %126 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %120, %114, %109
  br label %128

128:                                              ; preds = %127, %102, %45
  %129 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %130 = call i32 @mt7603_adjust_sensitivity(%struct.mt7603_dev* %129)
  ret void
}

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @mt7603_cca_stats_reset(%struct.mt7603_dev*) #1

declare dso_local i32 @mt76_get_min_avg_rssi(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @mt7603_adjust_sensitivity(%struct.mt7603_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
