; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_rx_update_af_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_rx_update_af_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, %struct.tuned_station_info }
%struct.TYPE_3__ = type { i64, i64 }
%struct.tuned_station_info = type { i64, i64, i64* }

@FM_RDS_1_AF_FOLLOWS = common dso_local global i64 0, align 8
@FM_RDS_25_AF_FOLLOWS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"No of expected AF : %d\0A\00", align 1
@FM_RDS_MIN_AF = common dso_local global i64 0, align 8
@FM_BAND_EUROPE_US = common dso_local global i64 0, align 8
@FM_RDS_MAX_AF = common dso_local global i64 0, align 8
@FM_BAND_JAPAN = common dso_local global i64 0, align 8
@FM_RDS_MAX_AF_JAPAN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Current freq(%d) is matching with received AF(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"AF cache is full\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Storing AF %d to cache index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmdev*, i64)* @fm_rx_update_af_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm_rx_update_af_cache(%struct.fmdev* %0, i64 %1) #0 {
  %3 = alloca %struct.fmdev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tuned_station_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fmdev* %0, %struct.fmdev** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %10 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store %struct.tuned_station_info* %11, %struct.tuned_station_info** %5, align 8
  %12 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %13 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @FM_RDS_1_AF_FOLLOWS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @FM_RDS_25_AF_FOLLOWS, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @FM_RDS_1_AF_FOLLOWS, align 8
  %27 = sub nsw i64 %25, %26
  %28 = add nsw i64 %27, 1
  %29 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %30 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.tuned_station_info, %struct.tuned_station_info* %31, i32 0, i32 0
  store i64 %28, i64* %32, align 8
  %33 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %34 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.tuned_station_info, %struct.tuned_station_info* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %38 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.tuned_station_info, %struct.tuned_station_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @fmdbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %137

43:                                               ; preds = %20, %2
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @FM_RDS_MIN_AF, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %137

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @FM_BAND_EUROPE_US, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @FM_RDS_MAX_AF, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %137

57:                                               ; preds = %52, %48
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @FM_BAND_JAPAN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @FM_RDS_MAX_AF_JAPAN, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %137

66:                                               ; preds = %61, %57
  %67 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %68 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = mul nsw i64 %72, 100
  %74 = add nsw i64 %71, %73
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %77 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %75, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %66
  %82 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %83 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 (i8*, ...) @fmdbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %86)
  br label %137

88:                                               ; preds = %66
  store i64 0, i64* %7, align 8
  br label %89

89:                                               ; preds = %106, %88
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.tuned_station_info*, %struct.tuned_station_info** %5, align 8
  %92 = getelementptr inbounds %struct.tuned_station_info, %struct.tuned_station_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.tuned_station_info*, %struct.tuned_station_info** %5, align 8
  %97 = getelementptr inbounds %struct.tuned_station_info, %struct.tuned_station_info* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %109

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %89

109:                                              ; preds = %104, %89
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.tuned_station_info*, %struct.tuned_station_info** %5, align 8
  %112 = getelementptr inbounds %struct.tuned_station_info, %struct.tuned_station_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32 (i8*, ...) @fmdbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %137

117:                                              ; preds = %109
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.tuned_station_info*, %struct.tuned_station_info** %5, align 8
  %120 = getelementptr inbounds %struct.tuned_station_info, %struct.tuned_station_info* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 (i8*, ...) @fmdbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %124, i64 %125)
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.tuned_station_info*, %struct.tuned_station_info** %5, align 8
  %129 = getelementptr inbounds %struct.tuned_station_info, %struct.tuned_station_info* %128, i32 0, i32 2
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  store i64 %127, i64* %132, align 8
  %133 = load %struct.tuned_station_info*, %struct.tuned_station_info** %5, align 8
  %134 = getelementptr inbounds %struct.tuned_station_info, %struct.tuned_station_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %24, %47, %56, %65, %81, %115, %123, %117
  ret void
}

declare dso_local i32 @fmdbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
