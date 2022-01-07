; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_send_simple_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_send_simple_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL = common dso_local global i32 0, align 4
@KVASER_USB_MAX_NET_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"channel (%d) out of range.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*, i32, i32)* @kvaser_usb_hydra_send_simple_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_send_simple_cmd(%struct.kvaser_usb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvaser_usb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvaser_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.kvaser_cmd* @kcalloc(i32 1, i32 4, i32 %10)
  store %struct.kvaser_cmd* %11, %struct.kvaser_cmd** %8, align 8
  %12 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %13 = icmp ne %struct.kvaser_cmd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %71

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %20 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %26 = load i32, i32* @KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL, align 4
  %27 = call i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd* %25, i32 %26)
  br label %53

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @KVASER_USB_MAX_NET_DEVICES, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %34 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %67

41:                                               ; preds = %28
  %42 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %43 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %44 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd* %42, i32 %51)
  br label %53

53:                                               ; preds = %41, %24
  %54 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %55 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %56 = call i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb* %55)
  %57 = call i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd* %54, i32 %56)
  %58 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %59 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %60 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %61 = call i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd* %60)
  %62 = call i32 @kvaser_usb_send_cmd(%struct.kvaser_usb* %58, %struct.kvaser_cmd* %59, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %67

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %65, %32
  %68 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %69 = call i32 @kfree(%struct.kvaser_cmd* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %14
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.kvaser_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb*) #1

declare dso_local i32 @kvaser_usb_send_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd*) #1

declare dso_local i32 @kfree(%struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
