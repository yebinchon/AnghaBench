; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_get_ethtool_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_get_ethtool_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.net_device = type { i32 }
%struct.macb = type { i32, %struct.macb_queue* }
%struct.macb_queue = type { i32 }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@GEM_STATS_LEN = common dso_local global i32 0, align 4
@gem_statistics = common dso_local global %struct.TYPE_4__* null, align 8
@QUEUE_STATS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"q%d_%s\00", align 1
@queue_statistics = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @gem_get_ethtool_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_get_ethtool_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.macb*, align 8
  %10 = alloca %struct.macb_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.macb* @netdev_priv(%struct.net_device* %17)
  store %struct.macb* %18, %struct.macb** %9, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %84 [
    i32 128, label %20
  ]

20:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @GEM_STATS_LEN, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gem_statistics, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %34 = call i32 @memcpy(i32* %26, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %6, align 8
  br label %21

42:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  %43 = load %struct.macb*, %struct.macb** %9, align 8
  %44 = getelementptr inbounds %struct.macb, %struct.macb* %43, i32 0, i32 1
  %45 = load %struct.macb_queue*, %struct.macb_queue** %44, align 8
  store %struct.macb_queue* %45, %struct.macb_queue** %10, align 8
  br label %46

46:                                               ; preds = %78, %42
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.macb*, %struct.macb** %9, align 8
  %49 = getelementptr inbounds %struct.macb, %struct.macb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @QUEUE_STATS_LEN, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @queue_statistics, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @snprintf(i8* %16, i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %59, i8* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %69 = call i32 @memcpy(i32* %67, i8* %16, i32 %68)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %6, align 8
  br label %53

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %12, align 4
  %81 = load %struct.macb_queue*, %struct.macb_queue** %10, align 8
  %82 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %81, i32 1
  store %struct.macb_queue* %82, %struct.macb_queue** %10, align 8
  br label %46

83:                                               ; preds = %46
  br label %84

84:                                               ; preds = %3, %83
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
