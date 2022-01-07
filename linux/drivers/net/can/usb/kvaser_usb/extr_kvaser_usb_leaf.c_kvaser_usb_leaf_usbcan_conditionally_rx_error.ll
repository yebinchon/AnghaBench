; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_usbcan_conditionally_rx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_usbcan_conditionally_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32, %struct.kvaser_usb_net_priv**, %struct.TYPE_4__* }
%struct.kvaser_usb_net_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.kvaser_usb_err_summary = type { i32, i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid channel number (%d)\0A\00", align 1
@USBCAN_ERROR_STATE_TX_ERROR = common dso_local global i32 0, align 4
@USBCAN_ERROR_STATE_RX_ERROR = common dso_local global i32 0, align 4
@M16C_STATE_BUS_ERROR = common dso_local global i32 0, align 4
@USBCAN_ERROR_STATE_BUSERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_usb_err_summary*)* @kvaser_usb_leaf_usbcan_conditionally_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_usbcan_conditionally_rx_error(%struct.kvaser_usb* %0, %struct.kvaser_usb_err_summary* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_usb_err_summary*, align 8
  %5 = alloca %struct.kvaser_usb_net_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_usb_err_summary* %1, %struct.kvaser_usb_err_summary** %4, align 8
  %8 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %9 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %13 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %18 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %91

23:                                               ; preds = %2
  %24 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %25 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %24, i32 0, i32 1
  %26 = load %struct.kvaser_usb_net_priv**, %struct.kvaser_usb_net_priv*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %26, i64 %28
  %30 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %29, align 8
  store %struct.kvaser_usb_net_priv* %30, %struct.kvaser_usb_net_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %31 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %32 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %35 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = load i32, i32* @USBCAN_ERROR_STATE_TX_ERROR, align 4
  %41 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %42 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %39, %23
  %47 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %48 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %51 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @USBCAN_ERROR_STATE_RX_ERROR, align 4
  %57 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %58 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  store i32 1, i32* %7, align 4
  br label %62

62:                                               ; preds = %55, %46
  %63 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %64 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @M16C_STATE_BUS_ERROR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %71 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @M16C_STATE_BUS_ERROR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @USBCAN_ERROR_STATE_BUSERROR, align 4
  %79 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %80 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 4
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %77, %69, %62
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %89 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %90 = call i32 @kvaser_usb_leaf_rx_error(%struct.kvaser_usb* %88, %struct.kvaser_usb_err_summary* %89)
  br label %91

91:                                               ; preds = %16, %87, %84
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kvaser_usb_leaf_rx_error(%struct.kvaser_usb*, %struct.kvaser_usb_err_summary*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
