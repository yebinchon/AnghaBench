; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_frontend_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_frontend_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64 }
%struct.af9015_state = type { %struct.i2c_client** }
%struct.i2c_client = type { i32 }
%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"adap id %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @af9015_frontend_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_frontend_detach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.af9015_state*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %8 = call %struct.af9015_state* @adap_to_priv(%struct.dvb_usb_adapter* %7)
  store %struct.af9015_state* %8, %struct.af9015_state** %3, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %10 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %9)
  store %struct.dvb_usb_device* %10, %struct.dvb_usb_device** %4, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 0
  %13 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  store %struct.usb_interface* %13, %struct.usb_interface** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.af9015_state*, %struct.af9015_state** %3, align 8
  %21 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %20, i32 0, i32 0
  %22 = load %struct.i2c_client**, %struct.i2c_client*** %21, align 8
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %22, i64 %25
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  store %struct.i2c_client* %27, %struct.i2c_client** %6, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = call i32 @dvb_module_release(%struct.i2c_client* %28)
  ret i32 0
}

declare dso_local %struct.af9015_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @dvb_module_release(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
