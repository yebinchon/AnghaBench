; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32, i32, i32 }

@ixgbe_gstrings_test = common dso_local global i32* null, align 8
@IXGBEVF_TEST_LEN = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@IXGBEVF_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@ixgbevf_gstrings_stats = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"tx_queue_%u_packets\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tx_queue_%u_bytes\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"xdp_queue_%u_packets\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"xdp_queue_%u_bytes\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"rx_queue_%u_packets\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"rx_queue_%u_bytes\00", align 1
@ixgbevf_priv_flags_strings = common dso_local global i32 0, align 4
@IXGBEVF_PRIV_FLAGS_STR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i8*)* @ixgbevf_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_get_strings(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbevf_adapter* %11, %struct.ixgbevf_adapter** %7, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %127 [
    i32 128, label %14
    i32 129, label %22
    i32 130, label %120
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i32*, i32** @ixgbe_gstrings_test, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IXGBEVF_TEST_LEN, align 4
  %19 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @memcpy(i8* %15, i32 %17, i32 %20)
  br label %127

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IXGBEVF_GLOBAL_STATS_LEN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgbevf_gstrings_stats, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %36 = call i32 @memcpy(i8* %28, i32 %34, i32 %35)
  %37 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %23

44:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %66, %44
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %8, align 8
  br label %66

66:                                               ; preds = %51
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %45

69:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %91, %69
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @sprintf(i8* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @sprintf(i8* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %8, align 8
  br label %91

91:                                               ; preds = %76
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %70

94:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %98 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @sprintf(i8* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @sprintf(i8* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %8, align 8
  br label %116

116:                                              ; preds = %101
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %95

119:                                              ; preds = %95
  br label %127

120:                                              ; preds = %3
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* @ixgbevf_priv_flags_strings, align 4
  %123 = load i32, i32* @IXGBEVF_PRIV_FLAGS_STR_LEN, align 4
  %124 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %125 = mul nsw i32 %123, %124
  %126 = call i32 @memcpy(i8* %121, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %3, %120, %119, %14
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
