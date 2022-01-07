; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_it930x_tuner_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_it930x_tuner_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32 }
%struct.state = type { i64* }
%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"adap->id=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @it930x_tuner_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it930x_tuner_detach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.state*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %7 = call %struct.state* @adap_to_priv(%struct.dvb_usb_adapter* %6)
  store %struct.state* %7, %struct.state** %3, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %9 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %8)
  store %struct.dvb_usb_device* %9, %struct.dvb_usb_device** %4, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  store %struct.usb_interface* %12, %struct.usb_interface** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.state*, %struct.state** %3, align 8
  %25 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %32 = call i32 @af9035_del_i2c_dev(%struct.dvb_usb_device* %31)
  br label %33

33:                                               ; preds = %30, %23
  br label %51

34:                                               ; preds = %1
  %35 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.state*, %struct.state** %3, align 8
  %41 = getelementptr inbounds %struct.state, %struct.state* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %48 = call i32 @af9035_del_i2c_dev(%struct.dvb_usb_device* %47)
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %33
  ret i32 0
}

declare dso_local %struct.state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @af9035_del_i2c_dev(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
