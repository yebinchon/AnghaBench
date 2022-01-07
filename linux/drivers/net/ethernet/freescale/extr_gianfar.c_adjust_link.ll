; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64 }
%struct.gfar_private = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %5)
  store %struct.gfar_private* %6, %struct.gfar_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  store %struct.phy_device* %9, %struct.phy_device** %4, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %14 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %42, label %17

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %27 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %35 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br label %38

38:                                               ; preds = %30, %22
  %39 = phi i1 [ true, %22 ], [ %37, %30 ]
  br label %40

40:                                               ; preds = %38, %17
  %41 = phi i1 [ false, %17 ], [ %39, %38 ]
  br label %42

42:                                               ; preds = %40, %1
  %43 = phi i1 [ true, %1 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %49 = call i32 @gfar_update_link_state(%struct.gfar_private* %48)
  br label %50

50:                                               ; preds = %47, %42
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfar_update_link_state(%struct.gfar_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
