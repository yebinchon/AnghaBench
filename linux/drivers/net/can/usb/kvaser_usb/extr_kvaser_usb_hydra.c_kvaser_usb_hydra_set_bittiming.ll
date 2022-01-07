; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.kvaser_usb_net_priv = type { i64, %struct.kvaser_usb*, %struct.TYPE_6__ }
%struct.kvaser_usb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_6__ = type { %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SET_BUSPARAMS_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @kvaser_usb_hydra_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.kvaser_usb_net_priv*, align 8
  %6 = alloca %struct.can_bittiming*, align 8
  %7 = alloca %struct.kvaser_usb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.kvaser_usb_net_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.kvaser_usb_net_priv* %13, %struct.kvaser_usb_net_priv** %5, align 8
  %14 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %15 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.can_bittiming* %16, %struct.can_bittiming** %6, align 8
  %17 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %18 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %17, i32 0, i32 1
  %19 = load %struct.kvaser_usb*, %struct.kvaser_usb** %18, align 8
  store %struct.kvaser_usb* %19, %struct.kvaser_usb** %7, align 8
  %20 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %21 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %24 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %28 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %31 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.kvaser_cmd* @kcalloc(i32 1, i32 48, i32 %33)
  store %struct.kvaser_cmd* %34, %struct.kvaser_cmd** %4, align 8
  %35 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %36 = icmp ne %struct.kvaser_cmd* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %97

40:                                               ; preds = %1
  %41 = load i32, i32* @CMD_SET_BUSPARAMS_REQ, align 4
  %42 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %46 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  %70 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %74 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %75 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %80 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd* %73, i32 %83)
  %85 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %86 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %87 = call i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb* %86)
  %88 = call i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd* %85, i32 %87)
  %89 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %90 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %91 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %92 = call i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd* %91)
  %93 = call i32 @kvaser_usb_send_cmd(%struct.kvaser_usb* %89, %struct.kvaser_cmd* %90, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %95 = call i32 @kfree(%struct.kvaser_cmd* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %40, %37
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.kvaser_usb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.kvaser_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd*, i32) #1

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
