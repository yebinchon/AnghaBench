; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_8dev_priv = type { i32, %struct.usb_8dev_cmd_msg*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.usb_8dev_cmd_msg = type { i64, i64, i64 }

@USB_8DEV_CMD_START = common dso_local global i64 0, align 8
@USB_8DEV_CMD_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"sending command message failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no command message answer\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_8dev_priv*, %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg*)* @usb_8dev_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_8dev_send_cmd(%struct.usb_8dev_priv* %0, %struct.usb_8dev_cmd_msg* %1, %struct.usb_8dev_cmd_msg* %2) #0 {
  %4 = alloca %struct.usb_8dev_priv*, align 8
  %5 = alloca %struct.usb_8dev_cmd_msg*, align 8
  %6 = alloca %struct.usb_8dev_cmd_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  store %struct.usb_8dev_priv* %0, %struct.usb_8dev_priv** %4, align 8
  store %struct.usb_8dev_cmd_msg* %1, %struct.usb_8dev_cmd_msg** %5, align 8
  store %struct.usb_8dev_cmd_msg* %2, %struct.usb_8dev_cmd_msg** %6, align 8
  %10 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %11 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %9, align 8
  %13 = load i64, i64* @USB_8DEV_CMD_START, align 8
  %14 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %5, align 8
  %15 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* @USB_8DEV_CMD_END, align 8
  %17 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %5, align 8
  %18 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %20 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %23 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %22, i32 0, i32 1
  %24 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %23, align 8
  %25 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %5, align 8
  %26 = call i32 @memcpy(%struct.usb_8dev_cmd_msg* %24, %struct.usb_8dev_cmd_msg* %25, i32 24)
  %27 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %28 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %29 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %28, i32 0, i32 1
  %30 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %29, align 8
  %31 = call i32 @usb_8dev_send_cmd_msg(%struct.usb_8dev_priv* %27, %struct.usb_8dev_cmd_msg* %30, i32 24)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = call i32 @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %77

37:                                               ; preds = %3
  %38 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %39 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %40 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %39, i32 0, i32 1
  %41 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %40, align 8
  %42 = call i32 @usb_8dev_wait_cmd_msg(%struct.usb_8dev_priv* %38, %struct.usb_8dev_cmd_msg* %41, i32 24, i32* %8)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %9, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %77

48:                                               ; preds = %37
  %49 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %6, align 8
  %50 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %51 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %50, i32 0, i32 1
  %52 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %51, align 8
  %53 = call i32 @memcpy(%struct.usb_8dev_cmd_msg* %49, %struct.usb_8dev_cmd_msg* %52, i32 24)
  %54 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %6, align 8
  %55 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @USB_8DEV_CMD_START, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %73, label %59

59:                                               ; preds = %48
  %60 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %6, align 8
  %61 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @USB_8DEV_CMD_END, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 16
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg** %6, align 8
  %70 = getelementptr inbounds %struct.usb_8dev_cmd_msg, %struct.usb_8dev_cmd_msg* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %65, %59, %48
  %74 = load i32, i32* @EPROTO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %45, %34
  %78 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %4, align 8
  %79 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.usb_8dev_cmd_msg*, %struct.usb_8dev_cmd_msg*, i32) #1

declare dso_local i32 @usb_8dev_send_cmd_msg(%struct.usb_8dev_priv*, %struct.usb_8dev_cmd_msg*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @usb_8dev_wait_cmd_msg(%struct.usb_8dev_priv*, %struct.usb_8dev_cmd_msg*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
