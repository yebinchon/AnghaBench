; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_auxbuf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_auxbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.cxusb_medion_auxbuf = type { i32, i64, i32* }

@AUXB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"initializing auxbuf of len %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*, %struct.cxusb_medion_auxbuf*, i32*, i32)* @cxusb_auxbuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_auxbuf_init(%struct.dvb_usb_device* %0, %struct.cxusb_medion_auxbuf* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.cxusb_medion_auxbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store %struct.cxusb_medion_auxbuf* %1, %struct.cxusb_medion_auxbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %10 = load i32, i32* @AUXB, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %9, i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.cxusb_medion_auxbuf*, %struct.cxusb_medion_auxbuf** %6, align 8
  %15 = getelementptr inbounds %struct.cxusb_medion_auxbuf, %struct.cxusb_medion_auxbuf* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.cxusb_medion_auxbuf*, %struct.cxusb_medion_auxbuf** %6, align 8
  %18 = getelementptr inbounds %struct.cxusb_medion_auxbuf, %struct.cxusb_medion_auxbuf* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.cxusb_medion_auxbuf*, %struct.cxusb_medion_auxbuf** %6, align 8
  %20 = getelementptr inbounds %struct.cxusb_medion_auxbuf, %struct.cxusb_medion_auxbuf* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
