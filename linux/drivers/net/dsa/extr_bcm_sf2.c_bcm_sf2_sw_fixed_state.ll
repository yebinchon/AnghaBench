; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_fixed_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_fixed_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.phylink_link_state = type { i32, i32 }
%struct.bcm_sf2_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.phylink_link_state*)* @bcm_sf2_sw_fixed_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_sw_fixed_state(%struct.dsa_switch* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phylink_link_state*, align 8
  %7 = alloca %struct.bcm_sf2_priv*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %6, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %9 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %8)
  store %struct.bcm_sf2_priv* %9, %struct.bcm_sf2_priv** %7, align 8
  %10 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %11 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %14 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %19 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %27 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %29 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %17
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %34 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_carrier_off(i32 %40)
  br label %42

42:                                               ; preds = %32, %17
  %43 = load i32, i32* @DUPLEX_FULL, align 4
  %44 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %45 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %48 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %42
  ret void
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
