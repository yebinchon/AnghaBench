; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxlan_dev = type { %struct.TYPE_2__, i32, %struct.vxlan_rdst }
%struct.TYPE_2__ = type { i32 }
%struct.vxlan_rdst = type { i32 }

@VXLAN_F_IPV6 = common dso_local global i32 0, align 4
@VXLAN6_HEADROOM = common dso_local global i32 0, align 4
@VXLAN_HEADROOM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @vxlan_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxlan_dev*, align 8
  %7 = alloca %struct.vxlan_rdst*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %11)
  store %struct.vxlan_dev* %12, %struct.vxlan_dev** %6, align 8
  %13 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %14 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %13, i32 0, i32 2
  store %struct.vxlan_rdst* %14, %struct.vxlan_rdst** %7, align 8
  %15 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %16 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %19 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net_device* @__dev_get_by_index(i32 %17, i32 %20)
  store %struct.net_device* %21, %struct.net_device** %8, align 8
  %22 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %23 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VXLAN_F_IPV6, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %2
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @VXLAN6_HEADROOM, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @VXLAN_HEADROOM, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = sub nsw i32 %37, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
