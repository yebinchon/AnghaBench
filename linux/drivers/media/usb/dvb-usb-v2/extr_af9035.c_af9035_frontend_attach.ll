; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.state = type { %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__**, i32 }
%struct.dvb_usb_device = type { i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"adap->id=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"af9033\00", align 1
@af9035_frontend_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @af9035_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %9 = call %struct.state* @adap_to_priv(%struct.dvb_usb_adapter* %8)
  store %struct.state* %9, %struct.state** %4, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %10)
  store %struct.dvb_usb_device* %11, %struct.dvb_usb_device** %5, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 1
  %14 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  store %struct.usb_interface* %14, %struct.usb_interface** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.state*, %struct.state** %4, align 8
  %22 = getelementptr inbounds %struct.state, %struct.state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %109

35:                                               ; preds = %1
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 0
  %40 = load %struct.state*, %struct.state** %4, align 8
  %41 = getelementptr inbounds %struct.state, %struct.state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store %struct.TYPE_5__** %39, %struct.TYPE_5__*** %48, align 8
  %49 = load %struct.state*, %struct.state** %4, align 8
  %50 = getelementptr inbounds %struct.state, %struct.state* %49, i32 0, i32 2
  %51 = load %struct.state*, %struct.state** %4, align 8
  %52 = getelementptr inbounds %struct.state, %struct.state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32* %50, i32** %59, align 8
  %60 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %61 = load %struct.state*, %struct.state** %4, align 8
  %62 = getelementptr inbounds %struct.state, %struct.state* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.state*, %struct.state** %4, align 8
  %71 = getelementptr inbounds %struct.state, %struct.state* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %76
  %78 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %78, i32 0, i32 0
  %80 = call i32 @af9035_add_i2c_dev(%struct.dvb_usb_device* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %69, %struct.TYPE_6__* %77, i32* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %35
  br label %109

84:                                               ; preds = %35
  %85 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = icmp eq %struct.TYPE_5__* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %109

94:                                               ; preds = %84
  %95 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %97, i64 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  %102 = load i32, i32* @af9035_frontend_callback, align 4
  %103 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %105, i64 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 %102, i32* %108, align 8
  store i32 0, i32* %2, align 4
  br label %115

109:                                              ; preds = %91, %83, %32
  %110 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %111 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %110, i32 0, i32 0
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @dev_dbg(i32* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %94
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @af9035_add_i2c_dev(%struct.dvb_usb_device*, i8*, i32, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
