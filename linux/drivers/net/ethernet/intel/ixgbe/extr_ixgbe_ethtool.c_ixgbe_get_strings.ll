; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@IXGBE_TEST_LEN = common dso_local global i32 0, align 4
@ixgbe_gstrings_test = common dso_local global i32* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@IXGBE_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@ixgbe_gstrings_stats = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"tx_queue_%u_packets\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tx_queue_%u_bytes\00", align 1
@IXGBE_NUM_RX_QUEUES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"rx_queue_%u_packets\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"rx_queue_%u_bytes\00", align 1
@IXGBE_MAX_PACKET_BUFFERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"tx_pb_%u_pxon\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"tx_pb_%u_pxoff\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"rx_pb_%u_pxon\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"rx_pb_%u_pxoff\00", align 1
@ixgbe_priv_flags_strings = common dso_local global i32 0, align 4
@IXGBE_PRIV_FLAGS_STR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i8*)* @ixgbe_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_get_strings(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %157 [
    i32 128, label %11
    i32 129, label %33
    i32 130, label %150
  ]

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @IXGBE_TEST_LEN, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i32*, i32** @ixgbe_gstrings_test, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %24 = call i32 @memcpy(i8* %17, i32 %22, i32 %23)
  %25 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %12

32:                                               ; preds = %12
  br label %157

33:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @IXGBE_GLOBAL_STATS_LEN, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ixgbe_gstrings_stats, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %47 = call i32 @memcpy(i8* %39, i32 %45, i32 %46)
  %48 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %34

55:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %77, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @sprintf(i8* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %56

80:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %100, %80
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @IXGBE_NUM_RX_QUEUES, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @sprintf(i8* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %7, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @sprintf(i8* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %81

103:                                              ; preds = %81
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %123, %103
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @IXGBE_MAX_PACKET_BUFFERS, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @sprintf(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %7, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @sprintf(i8* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %7, align 8
  br label %123

123:                                              ; preds = %108
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %104

126:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %146, %126
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @IXGBE_MAX_PACKET_BUFFERS, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @sprintf(i8* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %136 = load i8*, i8** %7, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %7, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @sprintf(i8* %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %7, align 8
  br label %146

146:                                              ; preds = %131
  %147 = load i32, i32* %8, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %127

149:                                              ; preds = %127
  br label %157

150:                                              ; preds = %3
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* @ixgbe_priv_flags_strings, align 4
  %153 = load i32, i32* @IXGBE_PRIV_FLAGS_STR_LEN, align 4
  %154 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %155 = mul nsw i32 %153, %154
  %156 = call i32 @memcpy(i8* %151, i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %150, %3, %149, %32
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
