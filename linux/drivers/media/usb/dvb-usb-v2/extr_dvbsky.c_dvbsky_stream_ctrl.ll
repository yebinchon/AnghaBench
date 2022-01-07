; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_stream_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_stream_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.dvbsky_state = type { i32 }

@__const.dvbsky_stream_ctrl.obuf_pre = private unnamed_addr constant [3 x i32] [i32 55, i32 0, i32 0], align 4
@__const.dvbsky_stream_ctrl.obuf_post = private unnamed_addr constant [3 x i32] [i32 54, i32 3, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @dvbsky_stream_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_stream_ctrl(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvbsky_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = call %struct.dvbsky_state* @d_to_priv(%struct.dvb_usb_device* %9)
  store %struct.dvbsky_state* %10, %struct.dvbsky_state** %5, align 8
  %11 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([3 x i32]* @__const.dvbsky_stream_ctrl.obuf_pre to i8*), i64 12, i1 false)
  %12 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast ([3 x i32]* @__const.dvbsky_stream_ctrl.obuf_post to i8*), i64 12, i1 false)
  %13 = load %struct.dvbsky_state*, %struct.dvbsky_state** %5, align 8
  %14 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %18 = call i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device* %16, i32* %17, i32 3, i32* null, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = call i32 @msleep(i32 20)
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %28 = call i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device* %26, i32* %27, i32 3, i32* null, i32 0)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %21, %2
  %30 = load %struct.dvbsky_state*, %struct.dvbsky_state** %5, align 8
  %31 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.dvbsky_state* @d_to_priv(%struct.dvb_usb_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
