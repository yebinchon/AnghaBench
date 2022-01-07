; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_ctrl_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_ctrl_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { i64, i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.dvb_usb_adapter*, i32)*, i32, i32 (%struct.dvb_usb_adapter*, i64)*, i32 (%struct.dvb_usb_adapter*, i32, i32, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"stop feeding\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error while stopping stream.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"setting pid (%s): %5d %04x at index %d '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@DVB_USB_ADAP_HAS_PID_FILTER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"controlling pid parser\0A\00", align 1
@DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"could not handle pid_parser\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"start feeding\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"error while enabling fifo.\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"submitting all URBs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*, i32)* @dvb_usb_ctrl_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_usb_ctrl_feed(%struct.dvb_demux_feed* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_demux_feed*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %12, align 8
  store %struct.dvb_usb_adapter* %13, %struct.dvb_usb_adapter** %6, align 8
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %15 = icmp eq %struct.dvb_usb_adapter* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %298

19:                                               ; preds = %2
  %20 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24, %19
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %298

35:                                               ; preds = %24
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 -1
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %35
  %47 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = call i32 @usb_urb_kill(i32* %55)
  %57 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32 (%struct.dvb_usb_adapter*, i32)*, i32 (%struct.dvb_usb_adapter*, i32)** %65, align 8
  %67 = icmp ne i32 (%struct.dvb_usb_adapter*, i32)* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %46
  %69 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dvb_usb_adapter*, i32)*, i32 (%struct.dvb_usb_adapter*, i32)** %77, align 8
  %79 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %80 = call i32 %78(%struct.dvb_usb_adapter* %79, i32 0)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %298

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %46
  br label %88

88:                                               ; preds = %87, %35
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %93 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %92, i32 0, i32 3
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %104 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %105 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %108 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %111 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %117 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %103, i32 %106, i32 %109, i32 %112, i8* %116)
  %118 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %119 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %174

131:                                              ; preds = %88
  %132 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %133 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %132, i32 0, i32 3
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %136 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %174

142:                                              ; preds = %131
  %143 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %144 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %148 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load i32 (%struct.dvb_usb_adapter*, i32, i32, i32)*, i32 (%struct.dvb_usb_adapter*, i32, i32, i32)** %151, align 8
  %153 = icmp ne i32 (%struct.dvb_usb_adapter*, i32, i32, i32)* %152, null
  br i1 %153, label %154, label %174

154:                                              ; preds = %142
  %155 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %156 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %160 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i32 (%struct.dvb_usb_adapter*, i32, i32, i32)*, i32 (%struct.dvb_usb_adapter*, i32, i32, i32)** %163, align 8
  %165 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %166 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %167 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %4, align 8
  %170 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32 %164(%struct.dvb_usb_adapter* %165, i32 %168, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %154, %142, %131, %88
  %175 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %176 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %297

180:                                              ; preds = %174
  %181 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %182 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %297

185:                                              ; preds = %180
  %186 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %187 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %188 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %192 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @DVB_USB_ADAP_HAS_PID_FILTER, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %254

200:                                              ; preds = %185
  %201 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %202 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %206 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %254

214:                                              ; preds = %200
  %215 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %216 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %220 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  %224 = load i32 (%struct.dvb_usb_adapter*, i64)*, i32 (%struct.dvb_usb_adapter*, i64)** %223, align 8
  %225 = icmp ne i32 (%struct.dvb_usb_adapter*, i64)* %224, null
  br i1 %225, label %226, label %254

226:                                              ; preds = %214
  %227 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %228 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %232 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  %236 = load i32 (%struct.dvb_usb_adapter*, i64)*, i32 (%struct.dvb_usb_adapter*, i64)** %235, align 8
  %237 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %238 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %239 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %238, i32 0, i32 3
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %242 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = call i32 %236(%struct.dvb_usb_adapter* %237, i64 %246)
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %8, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %226
  %251 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %3, align 4
  br label %298

253:                                              ; preds = %226
  br label %254

254:                                              ; preds = %253, %214, %200, %185
  %255 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %256 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %257 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %261 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32 (%struct.dvb_usb_adapter*, i32)*, i32 (%struct.dvb_usb_adapter*, i32)** %264, align 8
  %266 = icmp ne i32 (%struct.dvb_usb_adapter*, i32)* %265, null
  br i1 %266, label %267, label %286

267:                                              ; preds = %254
  %268 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %269 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %273 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i32 (%struct.dvb_usb_adapter*, i32)*, i32 (%struct.dvb_usb_adapter*, i32)** %276, align 8
  %278 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %279 = call i32 %277(%struct.dvb_usb_adapter* %278, i32 1)
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %8, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %267
  %283 = call i32 @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %284 = load i32, i32* %8, align 4
  store i32 %284, i32* %3, align 4
  br label %298

285:                                              ; preds = %267
  br label %286

286:                                              ; preds = %285, %254
  %287 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %288 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %289 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %288, i32 0, i32 3
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %289, align 8
  %291 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %292 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = call i32 @usb_urb_submit(i32* %295)
  br label %297

297:                                              ; preds = %286, %180, %174
  store i32 0, i32* %3, align 4
  br label %298

298:                                              ; preds = %297, %282, %250, %83, %32, %16
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @deb_ts(i8*, ...) #1

declare dso_local i32 @usb_urb_kill(i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_urb_submit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
