; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_interpolate_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_interpolate_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, %struct.il_eeprom_calib_measure** }
%struct.il_eeprom_calib_measure = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i64, %struct.il_eeprom_calib_measure** }
%struct.il_eeprom_calib_ch_info = type { %struct.il_eeprom_calib_measure**, i8* }

@EEPROM_TX_POWER_BANDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Tx Power can not find channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"channel %d subband %d factory cal ch %d & %d\0A\00", align 1
@EEPROM_TX_POWER_TX_CHAINS = common dso_local global i64 0, align 8
@EEPROM_TX_POWER_MEASUREMENTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"chain %d meas %d AP1=%d AP2=%d AP=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"chain %d meas %d NI1=%d NI2=%d NI=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"chain %d meas %d PA1=%d PA2=%d PA=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"chain %d meas %d  T1=%d  T2=%d  T=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i64, %struct.il_eeprom_calib_ch_info*)* @il4965_interpolate_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_interpolate_chan(%struct.il_priv* %0, i64 %1, %struct.il_eeprom_calib_ch_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.il_eeprom_calib_ch_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.il_eeprom_calib_measure*, align 8
  %12 = alloca %struct.il_eeprom_calib_measure*, align 8
  %13 = alloca %struct.il_eeprom_calib_measure*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.il_eeprom_calib_ch_info* %2, %struct.il_eeprom_calib_ch_info** %7, align 8
  store i64 -1, i64* %8, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @il4965_get_sub_band(%struct.il_priv* %16, i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @EEPROM_TX_POWER_BANDS, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @IL_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 -1, i32* %4, align 4
  br label %219

25:                                               ; preds = %3
  %26 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %14, align 8
  %36 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %6, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.il_eeprom_calib_ch_info*, %struct.il_eeprom_calib_ch_info** %7, align 8
  %49 = getelementptr inbounds %struct.il_eeprom_calib_ch_info, %struct.il_eeprom_calib_ch_info* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = call i32 (i8*, i64, i64, i64, i64, ...) @D_TXPOWER(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51, i64 %52, i64 %53)
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %215, %25
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @EEPROM_TX_POWER_TX_CHAINS, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %218

59:                                               ; preds = %55
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %211, %59
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @EEPROM_TX_POWER_MEASUREMENTS, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %214

64:                                               ; preds = %60
  %65 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %66 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.il_eeprom_calib_measure**, %struct.il_eeprom_calib_measure*** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %74, i64 %75
  %77 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %77, i64 %78
  store %struct.il_eeprom_calib_measure* %79, %struct.il_eeprom_calib_measure** %11, align 8
  %80 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %81 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.il_eeprom_calib_measure**, %struct.il_eeprom_calib_measure*** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %89, i64 %90
  %92 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %92, i64 %93
  store %struct.il_eeprom_calib_measure* %94, %struct.il_eeprom_calib_measure** %12, align 8
  %95 = load %struct.il_eeprom_calib_ch_info*, %struct.il_eeprom_calib_ch_info** %7, align 8
  %96 = getelementptr inbounds %struct.il_eeprom_calib_ch_info, %struct.il_eeprom_calib_ch_info* %95, i32 0, i32 0
  %97 = load %struct.il_eeprom_calib_measure**, %struct.il_eeprom_calib_measure*** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %97, i64 %98
  %100 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %100, i64 %101
  store %struct.il_eeprom_calib_measure* %102, %struct.il_eeprom_calib_measure** %13, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %11, align 8
  %106 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %12, align 8
  %110 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @il4965_interpolate_value(i64 %103, i64 %104, i8* %107, i64 %108, i8* %111)
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %13, align 8
  %115 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %11, align 8
  %119 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %12, align 8
  %123 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @il4965_interpolate_value(i64 %116, i64 %117, i8* %120, i64 %121, i8* %124)
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %13, align 8
  %128 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %14, align 8
  %131 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %11, align 8
  %132 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i64, i64* %15, align 8
  %135 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %12, align 8
  %136 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @il4965_interpolate_value(i64 %129, i64 %130, i8* %133, i64 %134, i8* %137)
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %13, align 8
  %141 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* %14, align 8
  %144 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %11, align 8
  %145 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %12, align 8
  %149 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @il4965_interpolate_value(i64 %142, i64 %143, i8* %146, i64 %147, i8* %150)
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %13, align 8
  %154 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %11, align 8
  %158 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = ptrtoint i8* %159 to i64
  %161 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %12, align 8
  %162 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %13, align 8
  %166 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %165, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i8*, i64, i64, i64, i64, ...) @D_TXPOWER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %155, i64 %156, i64 %160, i64 %164, i8* %167)
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %11, align 8
  %172 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = ptrtoint i8* %173 to i64
  %175 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %12, align 8
  %176 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = ptrtoint i8* %177 to i64
  %179 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %13, align 8
  %180 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i8*, i64, i64, i64, i64, ...) @D_TXPOWER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %169, i64 %170, i64 %174, i64 %178, i8* %181)
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %11, align 8
  %186 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %12, align 8
  %190 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = ptrtoint i8* %191 to i64
  %193 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %13, align 8
  %194 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 (i8*, i64, i64, i64, i64, ...) @D_TXPOWER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %183, i64 %184, i64 %188, i64 %192, i8* %195)
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* %10, align 8
  %199 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %11, align 8
  %200 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = ptrtoint i8* %201 to i64
  %203 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %12, align 8
  %204 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.il_eeprom_calib_measure*, %struct.il_eeprom_calib_measure** %13, align 8
  %208 = getelementptr inbounds %struct.il_eeprom_calib_measure, %struct.il_eeprom_calib_measure* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (i8*, i64, i64, i64, i64, ...) @D_TXPOWER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %197, i64 %198, i64 %202, i64 %206, i8* %209)
  br label %211

211:                                              ; preds = %64
  %212 = load i64, i64* %10, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %10, align 8
  br label %60

214:                                              ; preds = %60
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %9, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %9, align 8
  br label %55

218:                                              ; preds = %55
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %218, %22
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i64 @il4965_get_sub_band(%struct.il_priv*, i64) #1

declare dso_local i32 @IL_ERR(i8*, i64) #1

declare dso_local i32 @D_TXPOWER(i8*, i64, i64, i64, i64, ...) #1

declare dso_local i64 @il4965_interpolate_value(i64, i64, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
