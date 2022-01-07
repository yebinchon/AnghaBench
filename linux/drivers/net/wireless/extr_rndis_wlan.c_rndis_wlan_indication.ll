; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i32, i32, i32, i32 }
%struct.rndis_indicate = type { i32 }

@RNDIS_OID_802_11_ADD_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"ignored RNDIS_OID_802_11_ADD_KEY triggered 'media connect'\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"media connect\0A\00", align 1
@WORK_LINK_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"media disconnect\0A\00", align 1
@WORK_LINK_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"indication: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i8*, i32)* @rndis_wlan_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_wlan_indication(%struct.usbnet* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rndis_wlan_private*, align 8
  %8 = alloca %struct.rndis_indicate*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %10 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %9)
  store %struct.rndis_wlan_private* %10, %struct.rndis_wlan_private** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.rndis_indicate*
  store %struct.rndis_indicate* %12, %struct.rndis_indicate** %8, align 8
  %13 = load %struct.rndis_indicate*, %struct.rndis_indicate** %8, align 8
  %14 = getelementptr inbounds %struct.rndis_indicate, %struct.rndis_indicate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  switch i32 %16, label %65 [
    i32 130, label %17
    i32 129, label %45
    i32 128, label %60
  ]

17:                                               ; preds = %3
  %18 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %19 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RNDIS_OID_802_11_ADD_KEY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %25 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netdev_dbg(i32 %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %74

28:                                               ; preds = %17
  %29 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %30 = call i32 @usbnet_pause_rx(%struct.usbnet* %29)
  %31 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %32 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @netdev_info(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @WORK_LINK_UP, align 4
  %36 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %37 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %36, i32 0, i32 2
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %40 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %43 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %42, i32 0, i32 0
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  br label %74

45:                                               ; preds = %3
  %46 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @netdev_info(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @WORK_LINK_DOWN, align 4
  %51 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %52 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %51, i32 0, i32 2
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %55 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %7, align 8
  %58 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %57, i32 0, i32 0
  %59 = call i32 @queue_work(i32 %56, i32* %58)
  br label %74

60:                                               ; preds = %3
  %61 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %62 = load %struct.rndis_indicate*, %struct.rndis_indicate** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @rndis_wlan_media_specific_indication(%struct.usbnet* %61, %struct.rndis_indicate* %62, i32 %63)
  br label %74

65:                                               ; preds = %3
  %66 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rndis_indicate*, %struct.rndis_indicate** %8, align 8
  %70 = getelementptr inbounds %struct.rndis_indicate, %struct.rndis_indicate* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = call i32 (i32, i8*, ...) @netdev_info(i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %23, %65, %60, %45, %28
  ret void
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @usbnet_pause_rx(%struct.usbnet*) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rndis_wlan_media_specific_indication(%struct.usbnet*, %struct.rndis_indicate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
