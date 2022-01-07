; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_send_simple_cmd_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_send_simple_cmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i64, %struct.kvaser_usb* }
%struct.kvaser_usb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.kvaser_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb_net_priv*, i32)* @kvaser_usb_hydra_send_simple_cmd_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_send_simple_cmd_async(%struct.kvaser_usb_net_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_usb_net_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvaser_cmd*, align 8
  %7 = alloca %struct.kvaser_usb*, align 8
  %8 = alloca i32, align 4
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %10 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %9, i32 0, i32 1
  %11 = load %struct.kvaser_usb*, %struct.kvaser_usb** %10, align 8
  store %struct.kvaser_usb* %11, %struct.kvaser_usb** %7, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.kvaser_cmd* @kcalloc(i32 1, i32 4, i32 %12)
  store %struct.kvaser_cmd* %13, %struct.kvaser_cmd** %6, align 8
  %14 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %6, align 8
  %15 = icmp ne %struct.kvaser_cmd* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %6, align 8
  %25 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %26 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %31 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd* %24, i32 %34)
  %36 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %6, align 8
  %37 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %38 = call i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb* %37)
  %39 = call i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd* %36, i32 %38)
  %40 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %41 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %6, align 8
  %42 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %6, align 8
  %43 = call i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd* %42)
  %44 = call i32 @kvaser_usb_send_cmd_async(%struct.kvaser_usb_net_priv* %40, %struct.kvaser_cmd* %41, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %19
  %48 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %6, align 8
  %49 = call i32 @kfree(%struct.kvaser_cmd* %48)
  br label %50

50:                                               ; preds = %47, %19
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.kvaser_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb*) #1

declare dso_local i32 @kvaser_usb_send_cmd_async(%struct.kvaser_usb_net_priv*, %struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd*) #1

declare dso_local i32 @kfree(%struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
