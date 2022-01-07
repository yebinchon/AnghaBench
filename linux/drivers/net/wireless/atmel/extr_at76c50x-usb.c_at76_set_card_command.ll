; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_set_card_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_set_card_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.at76_command = type { i32, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DBG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"issuing command %s (0x%02x)\00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i8*, i32)* @at76_set_card_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_set_card_command(%struct.usb_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.at76_command*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 24, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.at76_command* @kmalloc(i32 %15, i32 %16)
  store %struct.at76_command* %17, %struct.at76_command** %11, align 8
  %18 = load %struct.at76_command*, %struct.at76_command** %11, align 8
  %19 = icmp ne %struct.at76_command* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %67

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.at76_command*, %struct.at76_command** %11, align 8
  %26 = getelementptr inbounds %struct.at76_command, %struct.at76_command* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.at76_command*, %struct.at76_command** %11, align 8
  %28 = getelementptr inbounds %struct.at76_command, %struct.at76_command* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.at76_command*, %struct.at76_command** %11, align 8
  %32 = getelementptr inbounds %struct.at76_command, %struct.at76_command* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.at76_command*, %struct.at76_command** %11, align 8
  %34 = getelementptr inbounds %struct.at76_command, %struct.at76_command* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @memcpy(i32 %35, i8* %36, i32 %37)
  %39 = load i32, i32* @DBG_CMD, align 4
  %40 = load %struct.at76_command*, %struct.at76_command** %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 24, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @at76_get_cmd_string(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @at76_dbg_dump(i32 %39, %struct.at76_command* %40, i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = call i32 @usb_sndctrlpipe(%struct.usb_device* %50, i32 0)
  %52 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %53 = load i32, i32* @USB_DIR_OUT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.at76_command*, %struct.at76_command** %11, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 24, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %63 = call i32 @usb_control_msg(%struct.usb_device* %49, i32 %51, i32 14, i32 %56, i32 0, i32 0, %struct.at76_command* %57, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.at76_command*, %struct.at76_command** %11, align 8
  %65 = call i32 @kfree(%struct.at76_command* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %23, %20
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.at76_command* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @at76_dbg_dump(i32, %struct.at76_command*, i32, i8*, i32, i32) #1

declare dso_local i32 @at76_get_cmd_string(i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.at76_command*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(%struct.at76_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
