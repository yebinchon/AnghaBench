; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_xlg_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_xlg_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64 }
%struct.phylink_link_state = type { i32 }

@MVPP22_XLG_CTRL0_REG = common dso_local global i64 0, align 8
@MVPP22_XLG_CTRL4_REG = common dso_local global i64 0, align 8
@MVPP22_XLG_CTRL0_MAC_RESET_DIS = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL0_TX_FLOW_CTRL_EN = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL0_RX_FLOW_CTRL_EN = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL4_MACMODSELECT_GMAC = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL4_EN_IDLE_CHECK = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL4_FWD_FC = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL4_FWD_PFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i32, %struct.phylink_link_state*)* @mvpp2_xlg_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_xlg_config(%struct.mvpp2_port* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phylink_link_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %6, align 8
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %12 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %8, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %18 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MVPP22_XLG_CTRL4_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %10, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @MVPP22_XLG_CTRL0_MAC_RESET_DIS, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %27 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MLO_PAUSE_TX, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @MVPP22_XLG_CTRL0_TX_FLOW_CTRL_EN, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %41

36:                                               ; preds = %3
  %37 = load i32, i32* @MVPP22_XLG_CTRL0_TX_FLOW_CTRL_EN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.phylink_link_state*, %struct.phylink_link_state** %6, align 8
  %43 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MLO_PAUSE_RX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @MVPP22_XLG_CTRL0_RX_FLOW_CTRL_EN, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %57

52:                                               ; preds = %41
  %53 = load i32, i32* @MVPP22_XLG_CTRL0_RX_FLOW_CTRL_EN, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* @MVPP22_XLG_CTRL4_MACMODSELECT_GMAC, align 4
  %59 = load i32, i32* @MVPP22_XLG_CTRL4_EN_IDLE_CHECK, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @MVPP22_XLG_CTRL4_FWD_FC, align 4
  %65 = load i32, i32* @MVPP22_XLG_CTRL4_FWD_PFC, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %75 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  br label %80

80:                                               ; preds = %72, %57
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %87 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MVPP22_XLG_CTRL4_REG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  br label %92

92:                                               ; preds = %84, %80
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @MVPP22_XLG_CTRL0_MAC_RESET_DIS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %109, %97
  %99 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %100 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @readl(i64 %103)
  %105 = load i32, i32* @MVPP22_XLG_CTRL0_MAC_RESET_DIS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %98

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %92
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
