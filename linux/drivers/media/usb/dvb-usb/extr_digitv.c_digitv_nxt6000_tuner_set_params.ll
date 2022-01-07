; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_nxt6000_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_nxt6000_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.1*, i32*, i32)* }
%struct.dvb_frontend.1 = type opaque
%struct.TYPE_4__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { i32 }

@USB_WRITE_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @digitv_nxt6000_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_nxt6000_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca [5 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %8, align 8
  store %struct.dvb_usb_adapter* %9, %struct.dvb_usb_adapter** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.dvb_frontend.1*, i32*, i32)*, i32 (%struct.dvb_frontend.1*, i32*, i32)** %13, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %16 = bitcast %struct.dvb_frontend* %15 to %struct.dvb_frontend.1*
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %18 = call i32 %14(%struct.dvb_frontend.1* %16, i32* %17, i32 20)
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %27, align 8
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %30 = bitcast %struct.dvb_frontend* %29 to %struct.dvb_frontend.0*
  %31 = call i32 %28(%struct.dvb_frontend.0* %30, i32 1)
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USB_WRITE_TUNER, align 4
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %38 = call i32 @digitv_ctrl_msg(i32 %35, i32 %36, i32 0, i32* %37, i32 4, i32* null, i32 0)
  ret i32 %38
}

declare dso_local i32 @digitv_ctrl_msg(i32, i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
