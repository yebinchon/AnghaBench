; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_xlg_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_xlg_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64 }
%struct.phylink_link_state = type { i32, i32, i32, i32, i32 }

@SPEED_10000 = common dso_local global i32 0, align 4
@MVPP22_XLG_STATUS = common dso_local global i64 0, align 8
@MVPP22_XLG_STATUS_LINK_UP = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL0_REG = common dso_local global i64 0, align 8
@MVPP22_XLG_CTRL0_TX_FLOW_CTRL_EN = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL0_RX_FLOW_CTRL_EN = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.phylink_link_state*)* @mvpp22_xlg_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_xlg_link_state(%struct.mvpp2_port* %0, %struct.phylink_link_state* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.phylink_link_state*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store %struct.phylink_link_state* %1, %struct.phylink_link_state** %4, align 8
  %6 = load i32, i32* @SPEED_10000, align 4
  %7 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %8 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %10 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %12 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %14 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MVPP22_XLG_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MVPP22_XLG_STATUS_LINK_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %27 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %29 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MVPP22_XLG_CTRL0_TX_FLOW_CTRL_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load i32, i32* @MLO_PAUSE_TX, align 4
  %42 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %43 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %2
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MVPP22_XLG_CTRL0_RX_FLOW_CTRL_EN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @MLO_PAUSE_RX, align 4
  %53 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %54 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
