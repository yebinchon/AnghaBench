; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxgedev = type { i32, i32, %struct.vxge_vpath* }
%struct.vxge_vpath = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @vxge_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxgedev*, align 8
  %8 = alloca %struct.vxge_vpath*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.vxgedev* @netdev_priv(%struct.net_device* %10)
  store %struct.vxgedev* %11, %struct.vxgedev** %7, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %36, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.vxgedev*, %struct.vxgedev** %7, align 8
  %15 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load %struct.vxgedev*, %struct.vxgedev** %7, align 8
  %20 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %19, i32 0, i32 2
  %21 = load %struct.vxge_vpath*, %struct.vxge_vpath** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %21, i64 %23
  store %struct.vxge_vpath* %24, %struct.vxge_vpath** %8, align 8
  %25 = load %struct.vxge_vpath*, %struct.vxge_vpath** %8, align 8
  %26 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %36

30:                                               ; preds = %18
  %31 = load %struct.vxge_vpath*, %struct.vxge_vpath** %8, align 8
  %32 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @vxge_hw_vpath_vid_add(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %29
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %12

39:                                               ; preds = %12
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.vxgedev*, %struct.vxgedev** %7, align 8
  %42 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @set_bit(i32 %40, i32 %43)
  ret i32 0
}

declare dso_local %struct.vxgedev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vxge_hw_vpath_vid_add(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
