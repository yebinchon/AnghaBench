; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i32, i64, i64 }
%struct.rndis_reset = type { i8*, i8* }

@RNDIS_MSG_RESET = common dso_local global i32 0, align 4
@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @rndis_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_reset(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.rndis_wlan_private*, align 8
  %5 = alloca %struct.rndis_reset*, align 8
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %7)
  store %struct.rndis_wlan_private* %8, %struct.rndis_wlan_private** %4, align 8
  %9 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %4, align 8
  %10 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %4, align 8
  %13 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.rndis_reset*
  store %struct.rndis_reset* %16, %struct.rndis_reset** %5, align 8
  %17 = load %struct.rndis_reset*, %struct.rndis_reset** %5, align 8
  %18 = call i32 @memset(%struct.rndis_reset* %17, i32 0, i32 16)
  %19 = load i32, i32* @RNDIS_MSG_RESET, align 4
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = load %struct.rndis_reset*, %struct.rndis_reset** %5, align 8
  %22 = getelementptr inbounds %struct.rndis_reset, %struct.rndis_reset* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = call i8* @cpu_to_le32(i32 16)
  %24 = load %struct.rndis_reset*, %struct.rndis_reset** %5, align 8
  %25 = getelementptr inbounds %struct.rndis_reset, %struct.rndis_reset* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %4, align 8
  %27 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = load %struct.rndis_reset*, %struct.rndis_reset** %5, align 8
  %30 = bitcast %struct.rndis_reset* %29 to i8*
  %31 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %32 = call i32 @rndis_command(%struct.usbnet* %28, i8* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %4, align 8
  %34 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.rndis_reset*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rndis_command(%struct.usbnet*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
