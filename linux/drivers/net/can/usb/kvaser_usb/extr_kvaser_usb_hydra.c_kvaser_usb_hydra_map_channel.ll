; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_map_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_map_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_MAP_CHANNEL_REQ = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_HE_ADDRESS_ROUTER = common dso_local global i32 0, align 4
@CMD_MAP_CHANNEL_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*, i32, i32, i8*)* @kvaser_usb_hydra_map_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_map_channel(%struct.kvaser_usb* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvaser_usb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.kvaser_cmd*, align 8
  %11 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.kvaser_cmd* @kcalloc(i32 1, i32 12, i32 %12)
  store %struct.kvaser_cmd* %13, %struct.kvaser_cmd** %10, align 8
  %14 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %15 = icmp ne %struct.kvaser_cmd* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %68

19:                                               ; preds = %4
  %20 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %21 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @strcpy(i32 %23, i8* %24)
  %26 = load i32, i32* @CMD_MAP_CHANNEL_REQ, align 4
  %27 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %28 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %31 = load i32, i32* @KVASER_USB_HYDRA_HE_ADDRESS_ROUTER, align 4
  %32 = call i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %35 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd* %37, i32 %38)
  %40 = load %struct.kvaser_usb*, %struct.kvaser_usb** %6, align 8
  %41 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %42 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %43 = call i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd* %42)
  %44 = call i32 @kvaser_usb_send_cmd(%struct.kvaser_usb* %40, %struct.kvaser_cmd* %41, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %19
  br label %64

48:                                               ; preds = %19
  %49 = load %struct.kvaser_usb*, %struct.kvaser_usb** %6, align 8
  %50 = load i32, i32* @CMD_MAP_CHANNEL_RESP, align 4
  %51 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %52 = call i32 @kvaser_usb_hydra_wait_cmd(%struct.kvaser_usb* %49, i32 %50, %struct.kvaser_cmd* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %64

56:                                               ; preds = %48
  %57 = load %struct.kvaser_usb*, %struct.kvaser_usb** %6, align 8
  %58 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %59 = call i32 @kvaser_usb_hydra_map_channel_resp(%struct.kvaser_usb* %57, %struct.kvaser_cmd* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %62, %55, %47
  %65 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %10, align 8
  %66 = call i32 @kfree(%struct.kvaser_cmd* %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %16
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.kvaser_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_send_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_wait_cmd(%struct.kvaser_usb*, i32, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_map_channel_resp(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kfree(%struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
