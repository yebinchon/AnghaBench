; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.nicvf = type { i32, %struct.nicvf** }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@nicvf_n_hw_stats = common dso_local global i32 0, align 4
@nicvf_hw_stats = common dso_local global %struct.TYPE_3__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@nicvf_n_drv_stats = common dso_local global i32 0, align 4
@nicvf_drv_stats = common dso_local global %struct.TYPE_4__* null, align 8
@BGX_RX_STATS_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bgx_rxstat%d: \00", align 1
@BGX_TX_STATS_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bgx_txstat%d: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32*)* @nicvf_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_get_strings(%struct.net_device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nicvf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.nicvf* @netdev_priv(%struct.net_device* %10)
  store %struct.nicvf* %11, %struct.nicvf** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ETH_SS_STATS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %125

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @nicvf_n_hw_stats, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nicvf_hw_stats, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %30 = call i32 @memcpy(i32* %22, i32 %28, i32 %29)
  %31 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %6, align 8
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %17

38:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @nicvf_n_drv_stats, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nicvf_drv_stats, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %52 = call i32 @memcpy(i32* %44, i32 %50, i32 %51)
  %53 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %6, align 8
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %62 = call i32 @nicvf_get_qset_strings(%struct.nicvf* %61, i32** %6, i32 0)
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %90, %60
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %66 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  %70 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %71 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %70, i32 0, i32 1
  %72 = load %struct.nicvf**, %struct.nicvf*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.nicvf*, %struct.nicvf** %72, i64 %74
  %76 = load %struct.nicvf*, %struct.nicvf** %75, align 8
  %77 = icmp ne %struct.nicvf* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %90

79:                                               ; preds = %69
  %80 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %81 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %80, i32 0, i32 1
  %82 = load %struct.nicvf**, %struct.nicvf*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.nicvf*, %struct.nicvf** %82, i64 %84
  %86 = load %struct.nicvf*, %struct.nicvf** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @nicvf_get_qset_strings(%struct.nicvf* %86, i32** %6, i32 %88)
  br label %90

90:                                               ; preds = %79, %78
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %63

93:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @BGX_RX_STATS_COUNT, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @sprintf(i32* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %6, align 8
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %94

109:                                              ; preds = %94
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %122, %109
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @BGX_TX_STATS_COUNT, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @sprintf(i32* %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %6, align 8
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %110

125:                                              ; preds = %15, %110
  ret void
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @nicvf_get_qset_strings(%struct.nicvf*, i32**, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
