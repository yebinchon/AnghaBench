; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.sja1105_private* }
%struct.sja1105_private = type { i32 }
%struct.phylink_link_state = type { i32, i32 }

@MLO_AN_INBAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"In-band AN not supported!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32, %struct.phylink_link_state*)* @sja1105_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_mac_config(%struct.dsa_switch* %0, i32 %1, i32 %2, %struct.phylink_link_state* %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phylink_link_state*, align 8
  %9 = alloca %struct.sja1105_private*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.phylink_link_state* %3, %struct.phylink_link_state** %8, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 1
  %12 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  store %struct.sja1105_private* %12, %struct.sja1105_private** %9, align 8
  %13 = load %struct.sja1105_private*, %struct.sja1105_private** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %16 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @sja1105_phy_mode_mismatch(%struct.sja1105_private* %13, i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %37

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MLO_AN_INBAND, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %27 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %37

30:                                               ; preds = %21
  %31 = load %struct.sja1105_private*, %struct.sja1105_private** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %34 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sja1105_adjust_port_config(%struct.sja1105_private* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %25, %20
  ret void
}

declare dso_local i64 @sja1105_phy_mode_mismatch(%struct.sja1105_private*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sja1105_adjust_port_config(%struct.sja1105_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
