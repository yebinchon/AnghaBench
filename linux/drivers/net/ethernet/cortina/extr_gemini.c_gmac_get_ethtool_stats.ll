; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.gemini_ethernet_port = type { i32, i32, i64*, i32, i32, i32*, i32*, i32, i32*, i32 }

@RX_STATS_NUM = common dso_local global i32 0, align 4
@RX_STATUS_NUM = common dso_local global i32 0, align 4
@RX_CHKSUM_NUM = common dso_local global i32 0, align 4
@TX_MAX_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @gmac_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmac_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gemini_ethernet_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %11)
  store %struct.gemini_ethernet_port* %12, %struct.gemini_ethernet_port** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @gmac_update_hw_stats(%struct.net_device* %13)
  br label %15

15:                                               ; preds = %38, %3
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %18 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %17, i32 0, i32 9
  %19 = call i32 @u64_stats_fetch_begin(i32* %18)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %34, %15
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @RX_STATS_NUM, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %26 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %20

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %40 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %39, i32 0, i32 9
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @u64_stats_fetch_retry(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %15, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %9, align 8
  store i32* %45, i32** %6, align 8
  br label %46

46:                                               ; preds = %92, %44
  %47 = load i32*, i32** %6, align 8
  store i32* %47, i32** %9, align 8
  %48 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %49 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %48, i32 0, i32 7
  %50 = call i32 @u64_stats_fetch_begin(i32* %49)
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %65, %46
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @RX_STATUS_NUM, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %57 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %51

68:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @RX_CHKSUM_NUM, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %75 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %69

86:                                               ; preds = %69
  %87 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %88 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %92

92:                                               ; preds = %86
  %93 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %94 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %93, i32 0, i32 7
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @u64_stats_fetch_retry(i32* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %46, label %98

98:                                               ; preds = %92
  %99 = load i32*, i32** %9, align 8
  store i32* %99, i32** %6, align 8
  br label %100

100:                                              ; preds = %140, %98
  %101 = load i32*, i32** %6, align 8
  store i32* %101, i32** %9, align 8
  %102 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %103 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %102, i32 0, i32 3
  %104 = call i32 @u64_stats_fetch_begin(i32* %103)
  store i32 %104, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %126, %100
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @TX_MAX_FRAGS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %105
  %110 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %111 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %121 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %109
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %105

129:                                              ; preds = %105
  %130 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %131 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %6, align 8
  store i32 %132, i32* %133, align 4
  %135 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %136 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %6, align 8
  store i32 %137, i32* %138, align 4
  br label %140

140:                                              ; preds = %129
  %141 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %7, align 8
  %142 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %141, i32 0, i32 3
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @u64_stats_fetch_retry(i32* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %100, label %146

146:                                              ; preds = %140
  ret void
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gmac_update_hw_stats(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
