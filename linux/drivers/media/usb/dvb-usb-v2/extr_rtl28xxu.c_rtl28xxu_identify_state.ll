; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_identify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rtl28xxu_dev = type { i32 }
%struct.rtl28xxu_req = type { i32, i32*, i32, i32 }

@CMD_I2C_DA_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@CHIP_ID_RTL2831U = common dso_local global i32 0, align 4
@CHIP_ID_RTL2832U = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"chip type detection failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"chip_id=%u\0A\00", align 1
@WARM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i8**)* @rtl28xxu_identify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl28xxu_identify_state(%struct.dvb_usb_device* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rtl28xxu_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl28xxu_req, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %10 = call %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device* %9)
  store %struct.rtl28xxu_dev* %10, %struct.rtl28xxu_dev** %6, align 8
  %11 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %8, i32 0, i32 0
  store i32 32, i32* %11, align 8
  %12 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %8, i32 0, i32 1
  %13 = load i32, i32* @CMD_I2C_DA_RD, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %8, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %8, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %24 = call i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %23, %struct.rtl28xxu_req* %8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @EPIPE, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @CHIP_ID_RTL2831U, align 4
  %31 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %32 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %48

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @CHIP_ID_RTL2832U, align 4
  %38 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %39 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %47

40:                                               ; preds = %33
  %41 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %65

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %54 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 3, i32* %59, align 8
  %60 = call i32 @msecs_to_jiffies(i32 10)
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @WARM, align 4
  store i32 %64, i32* %3, align 4
  br label %73

65:                                               ; preds = %40
  %66 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %67 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %48
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device*, %struct.rtl28xxu_req*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
