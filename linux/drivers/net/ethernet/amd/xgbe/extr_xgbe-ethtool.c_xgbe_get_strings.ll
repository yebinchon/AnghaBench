; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.xgbe_prv_data = type { i32, i32 }

@XGBE_STATS_COUNT = common dso_local global i32 0, align 4
@xgbe_gstring_stats = common dso_local global %struct.TYPE_2__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"txq_%u_packets\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"txq_%u_bytes\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"rxq_%u_packets\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rxq_%u_bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @xgbe_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xgbe_prv_data*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.xgbe_prv_data* %10, %struct.xgbe_prv_data** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %85 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @XGBE_STATS_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xgbe_gstring_stats, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %26 = call i32 @memcpy(i32* %18, i32 %24, i32 %25)
  %27 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %6, align 8
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %13

34:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %7, align 8
  %38 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @sprintf(i32* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @sprintf(i32* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %6, align 8
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %35

59:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %81, %59
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %7, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @sprintf(i32* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @sprintf(i32* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %6, align 8
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %60

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %3, %84
  ret void
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
