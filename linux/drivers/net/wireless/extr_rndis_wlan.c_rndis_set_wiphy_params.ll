; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_set_wiphy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_rndis_wlan.c_rndis_set_wiphy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32 }
%struct.rndis_wlan_private = type { %struct.usbnet* }
%struct.usbnet = type { i32 }

@WIPHY_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WIPHY_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32)* @rndis_set_wiphy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_set_wiphy_params(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rndis_wlan_private*, align 8
  %7 = alloca %struct.usbnet*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy* %9)
  store %struct.rndis_wlan_private* %10, %struct.rndis_wlan_private** %6, align 8
  %11 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %6, align 8
  %12 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %11, i32 0, i32 0
  %13 = load %struct.usbnet*, %struct.usbnet** %12, align 8
  store %struct.usbnet* %13, %struct.usbnet** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @WIPHY_PARAM_FRAG_THRESHOLD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %20 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %21 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @set_frag_threshold(%struct.usbnet* %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @WIPHY_PARAM_RTS_THRESHOLD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %36 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %37 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_rts_threshold(%struct.usbnet* %35, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %29
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @set_frag_threshold(%struct.usbnet*, i32) #1

declare dso_local i32 @set_rts_threshold(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
