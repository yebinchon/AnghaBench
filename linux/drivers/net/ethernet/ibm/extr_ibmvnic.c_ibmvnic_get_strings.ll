; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i32, i32 }

@ibmvnic_stats = common dso_local global %struct.TYPE_5__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tx%d_packets\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tx%d_bytes\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"tx%d_dropped_packets\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rx%d_packets\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"rx%d_bytes\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"rx%d_interrupts\00", align 1
@ibmvnic_priv_flags = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @ibmvnic_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvnic_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ibmvnic_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ibmvnic_adapter* %10, %struct.ibmvnic_adapter** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %130 [
    i32 128, label %12
    i32 129, label %106
  ]

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmvnic_stats, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmvnic_stats, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %27 = call i32 @memcpy(i32* %19, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %6, align 8
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %67, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @snprintf(i32* %43, i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @snprintf(i32* %51, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @snprintf(i32* %59, i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %6, align 8
  br label %67

67:                                               ; preds = %42
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %36

70:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %102, %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %74 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %71
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @snprintf(i32* %78, i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %6, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @snprintf(i32* %86, i32 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %6, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @snprintf(i32* %94, i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %6, align 8
  br label %102

102:                                              ; preds = %77
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %71

105:                                              ; preds = %71
  br label %131

106:                                              ; preds = %3
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %126, %106
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmvnic_priv_flags, align 8
  %110 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %109)
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ibmvnic_priv_flags, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @strcpy(i32* %118, i32 %124)
  br label %126

126:                                              ; preds = %112
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %107

129:                                              ; preds = %107
  br label %131

130:                                              ; preds = %3
  br label %131

131:                                              ; preds = %130, %129, %105
  ret void
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @strcpy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
