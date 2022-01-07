; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.net_device*, %struct.TYPE_7__*, i32*, %struct.TYPE_10__, %struct.TYPE_6__, i32, i32, i32, %struct.ptp_pin_desc*, %struct.TYPE_9__, %struct.e1000_hw }
%struct.net_device = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, %struct.ptp_pin_desc*, i32, i32, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ptp_pin_desc = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i8*, i32 }
%struct.e1000_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%pm\00", align 1
@THIS_MODULE = common dso_local global i8* null, align 8
@igb_ptp_adjfreq_82576 = common dso_local global i32 0, align 4
@igb_ptp_adjtime_82576 = common dso_local global i8* null, align 8
@igb_ptp_gettimex_82576 = common dso_local global i32 0, align 4
@igb_ptp_settime_82576 = common dso_local global i8* null, align 8
@igb_ptp_feature_enable = common dso_local global i8* null, align 8
@igb_ptp_read_82576 = common dso_local global i32 0, align 4
@IGB_82576_TSYNC_SHIFT = common dso_local global i32 0, align 4
@IGB_PTP_OVERFLOW_CHECK = common dso_local global i32 0, align 4
@igb_ptp_adjfine_82580 = common dso_local global i8* null, align 8
@igb_ptp_gettimex_82580 = common dso_local global i32 0, align 4
@igb_ptp_read_82580 = common dso_local global i32 0, align 4
@IGB_NBITS_82580 = common dso_local global i32 0, align 4
@IGB_N_SDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"SDP%d\00", align 1
@PTP_PF_NONE = common dso_local global i32 0, align 4
@IGB_N_EXTTS = common dso_local global i32 0, align 4
@IGB_N_PEROUT = common dso_local global i32 0, align 4
@igb_ptp_adjtime_i210 = common dso_local global i8* null, align 8
@igb_ptp_gettimex_i210 = common dso_local global i32 0, align 4
@igb_ptp_settime_i210 = common dso_local global i8* null, align 8
@igb_ptp_feature_enable_i210 = common dso_local global i8* null, align 8
@igb_ptp_verify_pin = common dso_local global i32 0, align 4
@igb_ptp_tx_work = common dso_local global i32 0, align 4
@igb_ptp_overflow_check = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"added PHC on %s\0A\00", align 1
@IGB_PTP_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_init(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ptp_pin_desc*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %7, i32 0, i32 11
  store %struct.e1000_hw* %8, %struct.e1000_hw** %3, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %227 [
    i32 133, label %16
    i32 132, label %78
    i32 128, label %78
    i32 129, label %78
    i32 131, label %140
    i32 130, label %140
  ]

16:                                               ; preds = %1
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snprintf(i32 %20, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** @THIS_MODULE, align 8
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 12
  store i8* %25, i8** %28, align 8
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 999999881, i32* %31, align 8
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 11
  store i32 0, i32* %34, align 4
  %35 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @igb_ptp_adjfreq_82576, align 4
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 14
  store i32 %38, i32* %41, align 4
  %42 = load i8*, i8** @igb_ptp_adjtime_82576, align 8
  %43 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 7
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* @igb_ptp_gettimex_82576, align 4
  %47 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 6
  store i32 %46, i32* %49, align 8
  %50 = load i8*, i8** @igb_ptp_settime_82576, align 8
  %51 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @igb_ptp_feature_enable, align 8
  %55 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @igb_ptp_read_82576, align 4
  %59 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %59, i32 0, i32 10
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 8
  %62 = call i8* @CYCLECOUNTER_MASK(i32 64)
  %63 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %63, i32 0, i32 10
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 8
  %66 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i32, i32* @IGB_82576_TSYNC_SHIFT, align 4
  %70 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %70, i32 0, i32 10
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @IGB_PTP_OVERFLOW_CHECK, align 4
  %74 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %230

78:                                               ; preds = %1, %1, %1
  %79 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @snprintf(i32 %82, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i8*, i8** @THIS_MODULE, align 8
  %88 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 12
  store i8* %87, i8** %90, align 8
  %91 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32 62499999, i32* %93, align 8
  %94 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 11
  store i32 0, i32* %96, align 4
  %97 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load i8*, i8** @igb_ptp_adjfine_82580, align 8
  %101 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 8
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** @igb_ptp_adjtime_82576, align 8
  %105 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 7
  store i8* %104, i8** %107, align 8
  %108 = load i32, i32* @igb_ptp_gettimex_82580, align 4
  %109 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 6
  store i32 %108, i32* %111, align 8
  %112 = load i8*, i8** @igb_ptp_settime_82576, align 8
  %113 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 5
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @igb_ptp_feature_enable, align 8
  %117 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %118 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 4
  store i8* %116, i8** %119, align 8
  %120 = load i32, i32* @igb_ptp_read_82580, align 4
  %121 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %121, i32 0, i32 10
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  store i32 %120, i32* %123, align 8
  %124 = load i32, i32* @IGB_NBITS_82580, align 4
  %125 = call i8* @CYCLECOUNTER_MASK(i32 %124)
  %126 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %127 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  %129 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %129, i32 0, i32 10
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %133 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %132, i32 0, i32 10
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load i32, i32* @IGB_PTP_OVERFLOW_CHECK, align 4
  %136 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %137 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %230

140:                                              ; preds = %1, %1
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %163, %140
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @IGB_N_SDP, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %141
  %146 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %147 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %146, i32 0, i32 9
  %148 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %148, i64 %150
  store %struct.ptp_pin_desc* %151, %struct.ptp_pin_desc** %6, align 8
  %152 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %6, align 8
  %153 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @snprintf(i32 %154, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %6, align 8
  %159 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @PTP_PF_NONE, align 4
  %161 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %6, align 8
  %162 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %145
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %141

166:                                              ; preds = %141
  %167 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %168 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @snprintf(i32 %170, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %173)
  %175 = load i8*, i8** @THIS_MODULE, align 8
  %176 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %177 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 12
  store i8* %175, i8** %178, align 8
  %179 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %180 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i32 62499999, i32* %181, align 8
  %182 = load i32, i32* @IGB_N_EXTTS, align 4
  %183 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %184 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 11
  store i32 %182, i32* %185, align 4
  %186 = load i32, i32* @IGB_N_PEROUT, align 4
  %187 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %188 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 10
  store i32 %186, i32* %189, align 8
  %190 = load i32, i32* @IGB_N_SDP, align 4
  %191 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %192 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  store i32 %190, i32* %193, align 8
  %194 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %195 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  store i32 1, i32* %196, align 4
  %197 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %198 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %197, i32 0, i32 9
  %199 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %198, align 8
  %200 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %201 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 9
  store %struct.ptp_pin_desc* %199, %struct.ptp_pin_desc** %202, align 8
  %203 = load i8*, i8** @igb_ptp_adjfine_82580, align 8
  %204 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %205 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 8
  store i8* %203, i8** %206, align 8
  %207 = load i8*, i8** @igb_ptp_adjtime_i210, align 8
  %208 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %209 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 7
  store i8* %207, i8** %210, align 8
  %211 = load i32, i32* @igb_ptp_gettimex_i210, align 4
  %212 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %213 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 6
  store i32 %211, i32* %214, align 8
  %215 = load i8*, i8** @igb_ptp_settime_i210, align 8
  %216 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %217 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 5
  store i8* %215, i8** %218, align 8
  %219 = load i8*, i8** @igb_ptp_feature_enable_i210, align 8
  %220 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %221 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 4
  store i8* %219, i8** %222, align 8
  %223 = load i32, i32* @igb_ptp_verify_pin, align 4
  %224 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %225 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 3
  store i32 %223, i32* %226, align 4
  br label %230

227:                                              ; preds = %1
  %228 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %229 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %228, i32 0, i32 3
  store i32* null, i32** %229, align 8
  br label %304

230:                                              ; preds = %166, %78, %16
  %231 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %232 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %231, i32 0, i32 8
  %233 = call i32 @spin_lock_init(i32* %232)
  %234 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %235 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %234, i32 0, i32 7
  %236 = load i32, i32* @igb_ptp_tx_work, align 4
  %237 = call i32 @INIT_WORK(i32* %235, i32 %236)
  %238 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %239 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @IGB_PTP_OVERFLOW_CHECK, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %230
  %245 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %246 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %245, i32 0, i32 6
  %247 = load i32, i32* @igb_ptp_overflow_check, align 4
  %248 = call i32 @INIT_DELAYED_WORK(i32* %246, i32 %247)
  br label %249

249:                                              ; preds = %244, %230
  %250 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %251 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %252 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  store i32 %250, i32* %253, align 4
  %254 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %255 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %256 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 8
  %258 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %259 = call i32 @igb_ptp_reset(%struct.igb_adapter* %258)
  %260 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %261 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %260, i32 0, i32 4
  %262 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %263 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %262, i32 0, i32 2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = call i32* @ptp_clock_register(%struct.TYPE_10__* %261, i32* %265)
  %267 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %268 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %267, i32 0, i32 3
  store i32* %266, i32** %268, align 8
  %269 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %270 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = call i64 @IS_ERR(i32* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %249
  %275 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %276 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %275, i32 0, i32 3
  store i32* null, i32** %276, align 8
  %277 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %278 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %277, i32 0, i32 2
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = call i32 @dev_err(i32* %280, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %304

282:                                              ; preds = %249
  %283 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %284 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %303

287:                                              ; preds = %282
  %288 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %289 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %288, i32 0, i32 2
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %293 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %292, i32 0, i32 1
  %294 = load %struct.net_device*, %struct.net_device** %293, align 8
  %295 = getelementptr inbounds %struct.net_device, %struct.net_device* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @dev_info(i32* %291, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %296)
  %298 = load i32, i32* @IGB_PTP_ENABLED, align 4
  %299 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %300 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %287, %282
  br label %304

304:                                              ; preds = %227, %303, %274
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i8* @CYCLECOUNTER_MASK(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @igb_ptp_reset(%struct.igb_adapter*) #1

declare dso_local i32* @ptp_clock_register(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
