; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib0700_xc4000_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib0700_xc4000_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_4__*, %struct.dib0700_adapter_state* }
%struct.TYPE_4__ = type { i32 }
%struct.dib0700_adapter_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i32, i32, i32)* }

@XC4000_TUNER_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"xc4000: unknown tuner callback command: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @dib0700_xc4000_tuner_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_xc4000_tuner_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dvb_usb_adapter*, align 8
  %11 = alloca %struct.dib0700_adapter_state*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.dvb_usb_adapter*
  store %struct.dvb_usb_adapter* %13, %struct.dvb_usb_adapter** %10, align 8
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %10, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 1
  %16 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %15, align 8
  store %struct.dib0700_adapter_state* %16, %struct.dib0700_adapter_state** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @XC4000_TUNER_RESET, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %4
  %21 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %11, align 8
  %22 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %23, align 8
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %10, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %24(i32 %30, i32 8, i32 0, i32 0)
  %32 = call i32 @msleep(i32 10)
  %33 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %11, align 8
  %34 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %35, align 8
  %37 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %10, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %36(i32 %42, i32 8, i32 0, i32 1)
  br label %49

44:                                               ; preds = %4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
