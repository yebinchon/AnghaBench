; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.dvb_usb_adapter* }
%struct.TYPE_3__ = type { i32 }
%struct.az6007_device_state = type { i32 }
%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"attaching demod drxk\0A\00", align 1
@drxk_attach = common dso_local global i32 0, align 4
@terratec_h7_drxk = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@drxk_gate_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @az6007_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6007_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.az6007_device_state*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = call %struct.az6007_device_state* @adap_to_priv(%struct.dvb_usb_adapter* %6)
  store %struct.az6007_device_state* %7, %struct.az6007_device_state** %4, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %9 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %8)
  store %struct.dvb_usb_device* %9, %struct.dvb_usb_device** %5, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @drxk_attach, align 4
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = call %struct.TYPE_4__* @dvb_attach(i32 %11, i32* @terratec_h7_drxk, i32* %13)
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 0
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %56

28:                                               ; preds = %1
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %30 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store %struct.dvb_usb_adapter* %29, %struct.dvb_usb_adapter** %35, align 8
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.az6007_device_state*, %struct.az6007_device_state** %4, align 8
  %45 = getelementptr inbounds %struct.az6007_device_state, %struct.az6007_device_state* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @drxk_gate_ctrl, align 4
  %47 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 8
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %55 = call i32 @az6007_ci_init(%struct.dvb_usb_adapter* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %28, %25
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.az6007_device_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.TYPE_4__* @dvb_attach(i32, i32*, i32*) #1

declare dso_local i32 @az6007_ci_init(%struct.dvb_usb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
