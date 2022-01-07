; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtt200u_fe_state*, i32 }
%struct.dtt200u_fe_state = type { %struct.dvb_frontend, i32, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"attaching frontend dtt200u\0A\00", align 1
@dtt200u_fe_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @dtt200u_fe_attach(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.dtt200u_fe_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store %struct.dtt200u_fe_state* null, %struct.dtt200u_fe_state** %4, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dtt200u_fe_state* @kzalloc(i32 32, i32 %5)
  store %struct.dtt200u_fe_state* %6, %struct.dtt200u_fe_state** %4, align 8
  %7 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %8 = icmp eq %struct.dtt200u_fe_state* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = call i32 @deb_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %13 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %14 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %13, i32 0, i32 2
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %14, align 8
  %15 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %16 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %15, i32 0, i32 1
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %19 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 1
  %21 = call i32 @memcpy(i32* %20, i32* @dtt200u_fe_ops, i32 4)
  %22 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %23 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %24 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  store %struct.dtt200u_fe_state* %22, %struct.dtt200u_fe_state** %25, align 8
  %26 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %27 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %26, i32 0, i32 0
  store %struct.dvb_frontend* %27, %struct.dvb_frontend** %2, align 8
  br label %29

28:                                               ; preds = %9
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %2, align 8
  br label %29

29:                                               ; preds = %28, %10
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  ret %struct.dvb_frontend* %30
}

declare dso_local %struct.dtt200u_fe_state* @kzalloc(i32, i32) #1

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
