; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_create_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_create_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_9__, i32*, %struct.TYPE_8__*, %struct.TYPE_10__, i32*, %struct.TYPE_7__, %struct.net_device* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@THIS_MODULE = common dso_local global i8* null, align 8
@ixgbe_ptp_adjfreq_82599 = common dso_local global i8* null, align 8
@ixgbe_ptp_adjtime = common dso_local global i8* null, align 8
@ixgbe_ptp_gettimex = common dso_local global i8* null, align 8
@ixgbe_ptp_settime = common dso_local global i8* null, align 8
@ixgbe_ptp_feature_enable = common dso_local global i8* null, align 8
@ixgbe_ptp_setup_sdp_X540 = common dso_local global i32* null, align 8
@ixgbe_ptp_adjfreq_X550 = common dso_local global i8* null, align 8
@ixgbe_ptp_setup_sdp_X550 = common dso_local global i32* null, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"registered PHC device on %s\0A\00", align 1
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_adapter*)* @ixgbe_ptp_create_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_ptp_create_clock(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 6
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @IS_ERR_OR_NULL(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %222

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %171 [
    i32 131, label %21
    i32 132, label %72
    i32 130, label %120
    i32 129, label %120
    i32 128, label %120
  ]

21:                                               ; preds = %15
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** @THIS_MODULE, align 8
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 10
  store i8* %30, i8** %33, align 8
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 250000000, i32* %36, align 8
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 9
  store i32 0, i32* %39, align 8
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 8
  store i32 0, i32* %42, align 4
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 7
  store i32 0, i32* %45, align 8
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load i8*, i8** @ixgbe_ptp_adjfreq_82599, align 8
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 6
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** @ixgbe_ptp_adjtime, align 8
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 5
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** @ixgbe_ptp_gettimex, align 8
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  store i8* %57, i8** %60, align 8
  %61 = load i8*, i8** @ixgbe_ptp_settime, align 8
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  store i8* %61, i8** %64, align 8
  %65 = load i8*, i8** @ixgbe_ptp_feature_enable, align 8
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  %69 = load i32*, i32** @ixgbe_ptp_setup_sdp_X540, align 8
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %70, i32 0, i32 4
  store i32* %69, i32** %71, align 8
  br label %178

72:                                               ; preds = %15
  %73 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @snprintf(i32 %76, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %79)
  %81 = load i8*, i8** @THIS_MODULE, align 8
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 10
  store i8* %81, i8** %84, align 8
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i32 250000000, i32* %87, align 8
  %88 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 9
  store i32 0, i32* %90, align 8
  %91 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 8
  store i32 0, i32* %93, align 4
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 7
  store i32 0, i32* %96, align 8
  %97 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load i8*, i8** @ixgbe_ptp_adjfreq_82599, align 8
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 6
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** @ixgbe_ptp_adjtime, align 8
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 5
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** @ixgbe_ptp_gettimex, align 8
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  store i8* %108, i8** %111, align 8
  %112 = load i8*, i8** @ixgbe_ptp_settime, align 8
  %113 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @ixgbe_ptp_feature_enable, align 8
  %117 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i8* %116, i8** %119, align 8
  br label %178

120:                                              ; preds = %15, %15, %15
  %121 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 11
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @snprintf(i32 %124, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %127)
  %129 = load i8*, i8** @THIS_MODULE, align 8
  %130 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 10
  store i8* %129, i8** %132, align 8
  %133 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  store i32 30000000, i32* %135, align 8
  %136 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 9
  store i32 0, i32* %138, align 8
  %139 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 8
  store i32 0, i32* %141, align 4
  %142 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 7
  store i32 0, i32* %144, align 8
  %145 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %146 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  %148 = load i8*, i8** @ixgbe_ptp_adjfreq_X550, align 8
  %149 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %150 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 6
  store i8* %148, i8** %151, align 8
  %152 = load i8*, i8** @ixgbe_ptp_adjtime, align 8
  %153 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 5
  store i8* %152, i8** %155, align 8
  %156 = load i8*, i8** @ixgbe_ptp_gettimex, align 8
  %157 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 4
  store i8* %156, i8** %159, align 8
  %160 = load i8*, i8** @ixgbe_ptp_settime, align 8
  %161 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 3
  store i8* %160, i8** %163, align 8
  %164 = load i8*, i8** @ixgbe_ptp_feature_enable, align 8
  %165 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %166 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  store i8* %164, i8** %167, align 8
  %168 = load i32*, i32** @ixgbe_ptp_setup_sdp_X550, align 8
  %169 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %170 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %169, i32 0, i32 4
  store i32* %168, i32** %170, align 8
  br label %178

171:                                              ; preds = %15
  %172 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %172, i32 0, i32 1
  store i32* null, i32** %173, align 8
  %174 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %175 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %174, i32 0, i32 4
  store i32* null, i32** %175, align 8
  %176 = load i64, i64* @EOPNOTSUPP, align 8
  %177 = sub nsw i64 0, %176
  store i64 %177, i64* %2, align 8
  br label %222

178:                                              ; preds = %120, %72, %21
  %179 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %180 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %179, i32 0, i32 3
  %181 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %181, i32 0, i32 2
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = call i32* @ptp_clock_register(%struct.TYPE_10__* %180, i32* %184)
  %186 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %187 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %186, i32 0, i32 1
  store i32* %185, i32** %187, align 8
  %188 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i64 @IS_ERR(i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %178
  %194 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %195 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = call i64 @PTR_ERR(i32* %196)
  store i64 %197, i64* %5, align 8
  %198 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %199 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %198, i32 0, i32 1
  store i32* null, i32** %199, align 8
  %200 = call i32 @e_dev_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %201 = load i64, i64* %5, align 8
  store i64 %201, i64* %2, align 8
  br label %222

202:                                              ; preds = %178
  %203 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %204 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.net_device*, %struct.net_device** %4, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @e_dev_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %207, %202
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %215 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %216 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 4
  %218 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %219 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %220 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 8
  store i64 0, i64* %2, align 8
  br label %222

222:                                              ; preds = %213, %193, %171, %14
  %223 = load i64, i64* %2, align 8
  ret i64 %223
}

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32* @ptp_clock_register(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i64 @PTR_ERR(i32*) #1

declare dso_local i32 @e_dev_err(i8*) #1

declare dso_local i32 @e_dev_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
