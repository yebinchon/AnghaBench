; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_pm_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_pm_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pm_stats_show.tx_pm_stats = internal constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"Read:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Write bypass:\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Write mem:\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Bypass + mem:\00", align 1
@pm_stats_show.rx_pm_stats = internal constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"Flush:\00", align 1
@T6_PM_NSTATS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"%13s %10s  %20s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Tx pcmds\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Tx bytes\00", align 1
@PM_NSTATS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"%-13s %10u  %20llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Rx pcmds\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Rx bytes\00", align 1
@CHELSIO_T5 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"Total wait\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Total Occupancy\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Tx FIFO wait  %10u  %20llu\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Rx FIFO wait  %10u  %20llu\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Reads\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Tx latency    %10u  %20llu\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Rx latency    %10u  %20llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pm_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.adapter*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @T6_PM_NSTATS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @T6_PM_NSTATS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load i32, i32* @T6_PM_NSTATS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load i32, i32* @T6_PM_NSTATS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %25, i32 0, i32 0
  %27 = load %struct.adapter*, %struct.adapter** %26, align 8
  store %struct.adapter* %27, %struct.adapter** %11, align 8
  %28 = load %struct.adapter*, %struct.adapter** %11, align 8
  %29 = call i32 @t4_pmtx_get_stats(%struct.adapter* %28, i32* %15, i32* %21)
  %30 = load %struct.adapter*, %struct.adapter** %11, align 8
  %31 = call i32 @t4_pmrx_get_stats(%struct.adapter* %30, i32* %18, i32* %24)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %56, %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PM_NSTATS, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* @pm_stats_show.tx_pm_stats, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %15, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %21, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %44, i8* %50, i32 %54)
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %84, %59
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PM_NSTATS, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i8*], [4 x i8*]* @pm_stats_show.rx_pm_stats, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %18, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %24, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %72, i8* %78, i32 %82)
  br label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %62

87:                                               ; preds = %62
  %88 = load %struct.adapter*, %struct.adapter** %11, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @CHELSIO_CHIP_VERSION(i32 %91)
  %93 = load i64, i64* @CHELSIO_T5, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %158

95:                                               ; preds = %87
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %15, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %21, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %104, i8* %110)
  %112 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %18, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %24, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* %118, i8* %124)
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %5, align 4
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %130 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %15, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %21, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* %136, i8* %142)
  %144 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %18, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %24, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %150, i8* %156)
  br label %158

158:                                              ; preds = %95, %87
  %159 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %159)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @t4_pmtx_get_stats(%struct.adapter*, i32*, i32*) #2

declare dso_local i32 @t4_pmrx_get_stats(%struct.adapter*, i32*, i32*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #2

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
