; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ucan_priv = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ucan_ctl_cmd_set_bittiming }
%struct.ucan_ctl_cmd_set_bittiming = type { i32, i32, i32, i32, i8*, i8*, i32 }

@UCAN_COMMAND_SET_BITTIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ucan_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucan_priv*, align 8
  %5 = alloca %struct.ucan_ctl_cmd_set_bittiming*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ucan_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ucan_priv* %7, %struct.ucan_priv** %4, align 8
  %8 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.ucan_ctl_cmd_set_bittiming* %11, %struct.ucan_ctl_cmd_set_bittiming** %5, align 8
  %12 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @cpu_to_le32(i32 %16)
  %18 = load %struct.ucan_ctl_cmd_set_bittiming*, %struct.ucan_ctl_cmd_set_bittiming** %5, align 8
  %19 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, %struct.ucan_ctl_cmd_set_bittiming* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.ucan_ctl_cmd_set_bittiming*, %struct.ucan_ctl_cmd_set_bittiming** %5, align 8
  %27 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, %struct.ucan_ctl_cmd_set_bittiming* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.ucan_ctl_cmd_set_bittiming*, %struct.ucan_ctl_cmd_set_bittiming** %5, align 8
  %35 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, %struct.ucan_ctl_cmd_set_bittiming* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ucan_ctl_cmd_set_bittiming*, %struct.ucan_ctl_cmd_set_bittiming** %5, align 8
  %42 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, %struct.ucan_ctl_cmd_set_bittiming* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ucan_ctl_cmd_set_bittiming*, %struct.ucan_ctl_cmd_set_bittiming** %5, align 8
  %49 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, %struct.ucan_ctl_cmd_set_bittiming* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ucan_ctl_cmd_set_bittiming*, %struct.ucan_ctl_cmd_set_bittiming** %5, align 8
  %56 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, %struct.ucan_ctl_cmd_set_bittiming* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ucan_ctl_cmd_set_bittiming*, %struct.ucan_ctl_cmd_set_bittiming** %5, align 8
  %63 = getelementptr inbounds %struct.ucan_ctl_cmd_set_bittiming, %struct.ucan_ctl_cmd_set_bittiming* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ucan_priv*, %struct.ucan_priv** %4, align 8
  %65 = load i32, i32* @UCAN_COMMAND_SET_BITTIMING, align 4
  %66 = call i32 @ucan_ctrl_command_out(%struct.ucan_priv* %64, i32 %65, i32 0, i32 40)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %1
  %70 = load i32, i32* %3, align 4
  br label %72

71:                                               ; preds = %1
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  ret i32 %73
}

declare dso_local %struct.ucan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ucan_ctrl_command_out(%struct.ucan_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
