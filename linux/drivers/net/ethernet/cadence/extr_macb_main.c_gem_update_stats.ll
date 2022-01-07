; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.macb = type { i32 (%struct.macb*, i64)*, i32*, i32, %struct.macb_queue*, %struct.TYPE_6__ }
%struct.macb_queue = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@GEM_STATS_LEN = common dso_local global i32 0, align 4
@gem_statistics = common dso_local global %struct.TYPE_8__* null, align 8
@GEM_OCTTXL = common dso_local global i64 0, align 8
@GEM_OCTRXL = common dso_local global i64 0, align 8
@QUEUE_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @gem_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_update_stats(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca %struct.macb_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  %11 = load %struct.macb*, %struct.macb** %2, align 8
  %12 = getelementptr inbounds %struct.macb, %struct.macb* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i64* %14, i64** %8, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %78, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GEM_STATS_LEN, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gem_statistics, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.macb*, %struct.macb** %2, align 8
  %27 = getelementptr inbounds %struct.macb, %struct.macb* %26, i32 0, i32 0
  %28 = load i32 (%struct.macb*, i64)*, i32 (%struct.macb*, i64)** %27, align 8
  %29 = load %struct.macb*, %struct.macb** %2, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 %28(%struct.macb* %29, i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.macb*, %struct.macb** %2, align 8
  %34 = getelementptr inbounds %struct.macb, %struct.macb* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %32
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @GEM_OCTTXL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %19
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @GEM_OCTRXL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49, %19
  %54 = load %struct.macb*, %struct.macb** %2, align 8
  %55 = getelementptr inbounds %struct.macb, %struct.macb* %54, i32 0, i32 0
  %56 = load i32 (%struct.macb*, i64)*, i32 (%struct.macb*, i64)** %55, align 8
  %57 = load %struct.macb*, %struct.macb** %2, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 4
  %60 = call i32 %56(%struct.macb* %57, i64 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 32
  %63 = load %struct.macb*, %struct.macb** %2, align 8
  %64 = getelementptr inbounds %struct.macb, %struct.macb* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %62
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %8, align 8
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %53, %49
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %4, align 4
  %81 = load i64*, i64** %8, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %8, align 8
  br label %15

83:                                               ; preds = %15
  %84 = load i32, i32* @GEM_STATS_LEN, align 4
  store i32 %84, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %85 = load %struct.macb*, %struct.macb** %2, align 8
  %86 = getelementptr inbounds %struct.macb, %struct.macb* %85, i32 0, i32 3
  %87 = load %struct.macb_queue*, %struct.macb_queue** %86, align 8
  store %struct.macb_queue* %87, %struct.macb_queue** %3, align 8
  br label %88

88:                                               ; preds = %119, %83
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.macb*, %struct.macb** %2, align 8
  %91 = getelementptr inbounds %struct.macb, %struct.macb* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  %95 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %96 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i64* %97, i64** %7, align 8
  br label %98

98:                                               ; preds = %113, %94
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @QUEUE_STATS_LEN, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load i64*, i64** %7, align 8
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = load %struct.macb*, %struct.macb** %2, align 8
  %107 = getelementptr inbounds %struct.macb, %struct.macb* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %6, align 4
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %105, i32* %112, align 4
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %4, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %4, align 4
  %116 = load i64*, i64** %7, align 8
  %117 = getelementptr inbounds i64, i64* %116, i32 1
  store i64* %117, i64** %7, align 8
  br label %98

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %5, align 4
  %122 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %123 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %122, i32 1
  store %struct.macb_queue* %123, %struct.macb_queue** %3, align 8
  br label %88

124:                                              ; preds = %88
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
