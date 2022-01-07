; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_tuner_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_tuner_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64 }
%struct.state = type { %struct.platform_device**, i32*, %struct.TYPE_4__* }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"adap->id=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @af9035_tuner_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_tuner_detach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.state*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.platform_device*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %8 = call %struct.state* @adap_to_priv(%struct.dvb_usb_adapter* %7)
  store %struct.state* %8, %struct.state** %3, align 8
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
  %19 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.state*, %struct.state** %3, align 8
  %21 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %85 [
    i32 128, label %29
    i32 135, label %29
    i32 134, label %63
    i32 133, label %63
    i32 132, label %63
    i32 131, label %63
    i32 130, label %63
    i32 129, label %63
  ]

29:                                               ; preds = %1, %1
  %30 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.state*, %struct.state** %3, align 8
  %36 = getelementptr inbounds %struct.state, %struct.state* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %43 = call i32 @af9035_del_i2c_dev(%struct.dvb_usb_device* %42)
  br label %44

44:                                               ; preds = %41, %34
  br label %62

45:                                               ; preds = %29
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.state*, %struct.state** %3, align 8
  %52 = getelementptr inbounds %struct.state, %struct.state* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %59 = call i32 @af9035_del_i2c_dev(%struct.dvb_usb_device* %58)
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61, %44
  br label %85

63:                                               ; preds = %1, %1, %1, %1, %1, %1
  %64 = load %struct.state*, %struct.state** %3, align 8
  %65 = getelementptr inbounds %struct.state, %struct.state* %64, i32 0, i32 0
  %66 = load %struct.platform_device**, %struct.platform_device*** %65, align 8
  %67 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %66, i64 %69
  %71 = load %struct.platform_device*, %struct.platform_device** %70, align 8
  store %struct.platform_device* %71, %struct.platform_device** %6, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %73 = icmp ne %struct.platform_device* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %63
  %75 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @module_put(i32 %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %83 = call i32 @platform_device_unregister(%struct.platform_device* %82)
  br label %84

84:                                               ; preds = %74, %63
  br label %85

85:                                               ; preds = %1, %84, %62
  ret i32 0
}

declare dso_local %struct.state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @af9035_del_i2c_dev(%struct.dvb_usb_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
