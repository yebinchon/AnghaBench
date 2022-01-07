; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_phylink_mac_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_phylink_mac_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.b53_device*, i32, i32, i32, i32)* }
%struct.phy_device = type { i32 }

@MLO_AN_PHY = common dso_local global i32 0, align 4
@MLO_AN_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b53_phylink_mac_link_up(%struct.dsa_switch* %0, i32 %1, i32 %2, i32 %3, %struct.phy_device* %4) #0 {
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.phy_device*, align 8
  %11 = alloca %struct.b53_device*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.phy_device* %4, %struct.phy_device** %10, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.b53_device*, %struct.b53_device** %13, align 8
  store %struct.b53_device* %14, %struct.b53_device** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MLO_AN_PHY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %49

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MLO_AN_FIXED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.b53_device*, %struct.b53_device** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @b53_force_link(%struct.b53_device* %24, i32 %25, i32 1)
  br label %49

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @phy_interface_mode_is_8023z(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load %struct.b53_device*, %struct.b53_device** %11, align 8
  %33 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.b53_device*, i32, i32, i32, i32)*, i32 (%struct.b53_device*, i32, i32, i32, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.b53_device*, i32, i32, i32, i32)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.b53_device*, %struct.b53_device** %11, align 8
  %40 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.b53_device*, i32, i32, i32, i32)*, i32 (%struct.b53_device*, i32, i32, i32, i32)** %42, align 8
  %44 = load %struct.b53_device*, %struct.b53_device** %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 %43(%struct.b53_device* %44, i32 %45, i32 %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %18, %23, %38, %31, %27
  ret void
}

declare dso_local i32 @b53_force_link(%struct.b53_device*, i32, i32) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
