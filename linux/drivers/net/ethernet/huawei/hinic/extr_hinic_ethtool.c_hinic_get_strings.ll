; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.net_device = type { i32 }
%struct.hinic_dev = type { i64 }

@hinic_function_stats = common dso_local global %struct.TYPE_6__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@hinic_port_stats = common dso_local global %struct.TYPE_6__* null, align 8
@hinic_tx_queue_stats = common dso_local global %struct.TYPE_6__* null, align 8
@hinic_rx_queue_stats = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @hinic_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hinic_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hinic_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %11)
  store %struct.hinic_dev* %12, %struct.hinic_dev** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %127 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hinic_function_stats, align 8
  %20 = call i64 @ARRAY_LEN(%struct.TYPE_6__* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hinic_function_stats, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %30 = call i32 @memcpy(i8* %23, i8* %28, i32 %29)
  %31 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %22
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %17

38:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hinic_port_stats, align 8
  %42 = call i64 @ARRAY_LEN(%struct.TYPE_6__* %41)
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hinic_port_stats, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %52 = call i32 @memcpy(i8* %45, i8* %50, i32 %51)
  %53 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %44
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %39

60:                                               ; preds = %39
  store i64 0, i64* %9, align 8
  br label %61

61:                                               ; preds = %90, %60
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %64 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hinic_tx_queue_stats, align 8
  %71 = call i64 @ARRAY_LEN(%struct.TYPE_6__* %70)
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hinic_tx_queue_stats, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @sprintf(i8* %74, i8* %79, i64 %80)
  %82 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %73
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %68

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  br label %61

93:                                               ; preds = %61
  store i64 0, i64* %9, align 8
  br label %94

94:                                               ; preds = %123, %93
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %97 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %94
  store i64 0, i64* %10, align 8
  br label %101

101:                                              ; preds = %119, %100
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hinic_rx_queue_stats, align 8
  %104 = call i64 @ARRAY_LEN(%struct.TYPE_6__* %103)
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hinic_rx_queue_stats, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @sprintf(i8* %107, i8* %112, i64 %113)
  %115 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %8, align 8
  br label %119

119:                                              ; preds = %106
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %10, align 8
  br label %101

122:                                              ; preds = %101
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %9, align 8
  br label %94

126:                                              ; preds = %94
  br label %128

127:                                              ; preds = %3
  br label %128

128:                                              ; preds = %127, %126
  ret void
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ARRAY_LEN(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
