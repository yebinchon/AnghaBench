; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__*, i32, i32, %struct.rtl28xxu_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.rtl28xxu_dev = type { i32 }
%struct.rtl28xxu_req = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"too large message %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_WR_FLAG = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.rtl28xxu_req*)* @rtl28xxu_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl28xxu_ctrl_msg(%struct.dvb_usb_device* %0, %struct.rtl28xxu_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.rtl28xxu_req*, align 8
  %6 = alloca %struct.rtl28xxu_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store %struct.rtl28xxu_req* %1, %struct.rtl28xxu_req** %5, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 3
  %12 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %11, align 8
  store %struct.rtl28xxu_dev* %12, %struct.rtl28xxu_dev** %6, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %17 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %19, 4
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %27 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %125

32:                                               ; preds = %2
  %33 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %34 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CMD_WR_FLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %41 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %44 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %47 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32 %42, i32 %45, i32 %48)
  %50 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %51 = load i32, i32* @USB_DIR_OUT, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usb_sndctrlpipe(i32 %55, i32 0)
  store i32 %56, i32* %8, align 4
  br label %65

57:                                               ; preds = %32
  %58 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %59 = load i32, i32* @USB_DIR_IN, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_rcvctrlpipe(i32 %63, i32 0)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %57, %39
  %66 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %67 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %72 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %75 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %78 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %81 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @usb_control_msg(i32 %68, i32 %69, i32 0, i32 %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 1000)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %89 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %92 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %95 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %98 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dvb_usb_dbg_usb_control_msg(i32 %86, i32 0, i32 %87, i32 %90, i32 %93, i32 %96, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %65
  br label %125

104:                                              ; preds = %65
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %107 = load i32, i32* @USB_DIR_IN, align 4
  %108 = or i32 %106, %107
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %112 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %115 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rtl28xxu_req*, %struct.rtl28xxu_req** %5, align 8
  %118 = getelementptr inbounds %struct.rtl28xxu_req, %struct.rtl28xxu_req* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memcpy(i32 %113, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %110, %104
  %122 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %123 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  store i32 0, i32* %3, align 4
  br label %136

125:                                              ; preds = %103, %21
  %126 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %127 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %126, i32 0, i32 1
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %130 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @dev_dbg(i32* %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %125, %121
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dvb_usb_dbg_usb_control_msg(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
