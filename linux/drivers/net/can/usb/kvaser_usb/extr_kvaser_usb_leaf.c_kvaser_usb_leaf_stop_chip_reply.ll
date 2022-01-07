; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_stop_chip_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_stop_chip_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i64, %struct.kvaser_usb_net_priv**, %struct.TYPE_6__* }
%struct.kvaser_usb_net_priv = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid channel number (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_leaf_stop_chip_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_stop_chip_reply(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.kvaser_usb_net_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %7 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %14 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %19 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %26 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %25, i32 0, i32 1
  %27 = load %struct.kvaser_usb_net_priv**, %struct.kvaser_usb_net_priv*** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %27, i64 %28
  %30 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %29, align 8
  store %struct.kvaser_usb_net_priv* %30, %struct.kvaser_usb_net_priv** %5, align 8
  %31 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %32 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %31, i32 0, i32 0
  %33 = call i32 @complete(i32* %32)
  br label %34

34:                                               ; preds = %24, %17
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
