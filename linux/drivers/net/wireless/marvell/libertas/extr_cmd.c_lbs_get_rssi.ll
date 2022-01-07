; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_get_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_get_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_rssi = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CMD_802_11_RSSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_get_rssi(%struct.lbs_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cmd_ds_802_11_rssi, align 8
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = call i32 @memset(%struct.cmd_ds_802_11_rssi* %7, i32 0, i32 24)
  %18 = call i8* @cpu_to_le16(i32 24)
  %19 = getelementptr inbounds %struct.cmd_ds_802_11_rssi, %struct.cmd_ds_802_11_rssi* %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = call i8* @cpu_to_le16(i32 8)
  %22 = getelementptr inbounds %struct.cmd_ds_802_11_rssi, %struct.cmd_ds_802_11_rssi* %7, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %24 = load i32, i32* @CMD_802_11_RSSI, align 4
  %25 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %23, i32 %24, %struct.cmd_ds_802_11_rssi* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.cmd_ds_802_11_rssi, %struct.cmd_ds_802_11_rssi* %7, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @le16_to_cpu(i8* %30)
  %32 = call i32 @CAL_NF(i32 %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.cmd_ds_802_11_rssi, %struct.cmd_ds_802_11_rssi* %7, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @le16_to_cpu(i8* %35)
  %37 = getelementptr inbounds %struct.cmd_ds_802_11_rssi, %struct.cmd_ds_802_11_rssi* %7, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @le16_to_cpu(i8* %38)
  %40 = call i32 @CAL_RSSI(i32 %36, i32 %39)
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %28, %3
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_802_11_rssi*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_rssi*) #1

declare dso_local i32 @CAL_NF(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @CAL_RSSI(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
