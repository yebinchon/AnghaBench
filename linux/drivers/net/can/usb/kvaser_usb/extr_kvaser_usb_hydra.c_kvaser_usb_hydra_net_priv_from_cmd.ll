; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_net_priv_from_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_net_priv_from_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i32 }
%struct.kvaser_usb = type { i64, %struct.kvaser_usb_net_priv**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvaser_cmd = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid channel number (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvaser_usb_net_priv* (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_hydra_net_priv_from_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvaser_usb_net_priv* @kvaser_usb_hydra_net_priv_from_cmd(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.kvaser_usb_net_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  store %struct.kvaser_usb_net_priv* null, %struct.kvaser_usb_net_priv** %5, align 8
  %7 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %8 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %9 = call i64 @kvaser_usb_hydra_channel_from_cmd(%struct.kvaser_usb* %7, %struct.kvaser_cmd* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %12 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %17 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %24 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %23, i32 0, i32 1
  %25 = load %struct.kvaser_usb_net_priv**, %struct.kvaser_usb_net_priv*** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %25, i64 %26
  %28 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %27, align 8
  store %struct.kvaser_usb_net_priv* %28, %struct.kvaser_usb_net_priv** %5, align 8
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  ret %struct.kvaser_usb_net_priv* %30
}

declare dso_local i64 @kvaser_usb_hydra_channel_from_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
