; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_phylink_mac_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_phylink_mac_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.b53_device*, i32, i32, i32, i32)* }

@MLO_AN_PHY = common dso_local global i32 0, align 4
@MLO_AN_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b53_phylink_mac_link_down(%struct.dsa_switch* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b53_device*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.b53_device*, %struct.b53_device** %11, align 8
  store %struct.b53_device* %12, %struct.b53_device** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MLO_AN_PHY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %47

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MLO_AN_FIXED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @b53_force_link(%struct.b53_device* %22, i32 %23, i32 0)
  br label %47

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @phy_interface_mode_is_8023z(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %31 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.b53_device*, i32, i32, i32, i32)*, i32 (%struct.b53_device*, i32, i32, i32, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.b53_device*, i32, i32, i32, i32)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %38 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.b53_device*, i32, i32, i32, i32)*, i32 (%struct.b53_device*, i32, i32, i32, i32)** %40, align 8
  %42 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 %41(%struct.b53_device* %42, i32 %43, i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %16, %21, %36, %29, %25
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
