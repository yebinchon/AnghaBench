; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_identify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.req_t = type { i32, i32*, i32, i32, i32, i32, i32 }

@GET_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"reply %02x\0A\00", align 1
@WARM = common dso_local global i32 0, align 4
@COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i8**)* @af9015_identify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_identify_state(%struct.dvb_usb_device* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.req_t, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  store %struct.usb_interface* %12, %struct.usb_interface** %6, align 8
  %13 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 0
  %14 = load i32, i32* @GET_CONFIG, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 4
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 5
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.req_t, %struct.req_t* %9, i32 0, i32 6
  %21 = ptrtoint i32* %8 to i32
  store i32 %21, i32* %20, align 8
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %23 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %22, %struct.req_t* %9)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @WARM, align 4
  store i32 %36, i32* %7, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @COLD, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %26
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @af9015_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
