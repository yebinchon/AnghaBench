; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_phylink_mac_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_phylink_mac_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32 }
%struct.phylink_link_state = type { i32, i32, i32, i32, i32 }

@MT7530_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PMSR_LINK = common dso_local global i32 0, align 4
@PMSR_DPX = common dso_local global i32 0, align 4
@PMSR_SPEED_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@PMSR_RX_FC = common dso_local global i32 0, align 4
@PMSR_TX_FC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.phylink_link_state*)* @mt7530_phylink_mac_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_phylink_mac_link_state(%struct.dsa_switch* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phylink_link_state*, align 8
  %8 = alloca %struct.mt7530_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %7, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.mt7530_priv*, %struct.mt7530_priv** %11, align 8
  store %struct.mt7530_priv* %12, %struct.mt7530_priv** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MT7530_NUM_PORTS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %96

22:                                               ; preds = %15
  %23 = load %struct.mt7530_priv*, %struct.mt7530_priv** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @MT7530_PMSR_P(i32 %24)
  %26 = call i32 @mt7530_read(%struct.mt7530_priv* %23, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PMSR_LINK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %31 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %33 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %36 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PMSR_DPX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %45 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @PMSR_SPEED_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %61 [
    i32 130, label %49
    i32 129, label %53
    i32 128, label %57
  ]

49:                                               ; preds = %22
  %50 = load i32, i32* @SPEED_10, align 4
  %51 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %52 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  br label %65

53:                                               ; preds = %22
  %54 = load i32, i32* @SPEED_100, align 4
  %55 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %56 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  br label %65

57:                                               ; preds = %22
  %58 = load i32, i32* @SPEED_1000, align 4
  %59 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %60 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %22
  %62 = load i32, i32* @SPEED_UNKNOWN, align 4
  %63 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %64 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57, %53, %49
  %66 = load i32, i32* @MLO_PAUSE_RX, align 4
  %67 = load i32, i32* @MLO_PAUSE_TX, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %71 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @PMSR_RX_FC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load i32, i32* @MLO_PAUSE_RX, align 4
  %80 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %81 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %65
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @PMSR_TX_FC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @MLO_PAUSE_TX, align 4
  %91 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %92 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %84
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %19
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @mt7530_read(%struct.mt7530_priv*, i32) #1

declare dso_local i32 @MT7530_PMSR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
