; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-fe.c_cinergyt2_fe_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-fe.c_cinergyt2_fe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cinergyt2_fe_state*, i32 }
%struct.cinergyt2_fe_state = type { %struct.dvb_frontend, i32, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cinergyt2_fe_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cinergyt2_fe_attach(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.cinergyt2_fe_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cinergyt2_fe_state* @kzalloc(i32 32, i32 %5)
  store %struct.cinergyt2_fe_state* %6, %struct.cinergyt2_fe_state** %4, align 8
  %7 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %4, align 8
  %8 = icmp eq %struct.cinergyt2_fe_state* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %12 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %4, align 8
  %13 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %12, i32 0, i32 2
  store %struct.dvb_usb_device* %11, %struct.dvb_usb_device** %13, align 8
  %14 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %4, align 8
  %15 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  %17 = call i32 @memcpy(i32* %16, i32* @cinergyt2_fe_ops, i32 4)
  %18 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %4, align 8
  %19 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %4, align 8
  %20 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  store %struct.cinergyt2_fe_state* %18, %struct.cinergyt2_fe_state** %21, align 8
  %22 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %4, align 8
  %23 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %22, i32 0, i32 1
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %4, align 8
  %26 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %25, i32 0, i32 0
  store %struct.dvb_frontend* %26, %struct.dvb_frontend** %2, align 8
  br label %27

27:                                               ; preds = %10, %9
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  ret %struct.dvb_frontend* %28
}

declare dso_local %struct.cinergyt2_fe_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
