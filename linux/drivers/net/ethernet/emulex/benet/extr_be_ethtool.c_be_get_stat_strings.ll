; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_stat_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_stat_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, i32 }

@ETHTOOL_STATS_NUM = common dso_local global i32 0, align 4
@et_stats = common dso_local global %struct.TYPE_5__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@ETHTOOL_RXSTATS_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rxq%d: %s\00", align 1
@et_rx_stats = common dso_local global %struct.TYPE_6__* null, align 8
@ETHTOOL_TXSTATS_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"txq%d: %s\00", align 1
@et_tx_stats = common dso_local global %struct.TYPE_4__* null, align 8
@ETHTOOL_TESTS_NUM = common dso_local global i32 0, align 4
@et_self_tests = common dso_local global i32* null, align 8
@be_priv_flags = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @be_get_stat_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_get_stat_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.be_adapter* %11, %struct.be_adapter** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %147 [
    i32 129, label %13
    i32 128, label %102
    i32 130, label %124
  ]

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ETHTOOL_STATS_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @et_stats, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %27 = call i32 @memcpy(i32* %19, i32 %25, i32 %26)
  %28 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %6, align 8
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %14

35:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ETHTOOL_RXSTATS_NUM, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @et_rx_stats, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @sprintf(i32* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %55)
  %57 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %6, align 8
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %43

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %36

68:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %98, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %72 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %94, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @ETHTOOL_TXSTATS_NUM, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @et_tx_stats, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @sprintf(i32* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %82, i8* %88)
  %90 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %6, align 8
  br label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %76

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %69

101:                                              ; preds = %69
  br label %147

102:                                              ; preds = %3
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %120, %102
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ETHTOOL_TESTS_NUM, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load i32*, i32** %6, align 8
  %109 = load i32*, i32** @et_self_tests, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %115 = call i32 @memcpy(i32* %108, i32 %113, i32 %114)
  %116 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %6, align 8
  br label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %103

123:                                              ; preds = %103
  br label %147

124:                                              ; preds = %3
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %143, %124
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** @be_priv_flags, align 8
  %128 = call i32 @ARRAY_SIZE(i32* %127)
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32*, i32** @be_priv_flags, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @strcpy(i32* %136, i32 %141)
  br label %143

143:                                              ; preds = %130
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %125

146:                                              ; preds = %125
  br label %147

147:                                              ; preds = %3, %146, %123, %101
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcpy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
