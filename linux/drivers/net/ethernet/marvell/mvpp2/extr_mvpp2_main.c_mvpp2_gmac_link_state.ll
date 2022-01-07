; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_gmac_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_gmac_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i64 }
%struct.phylink_link_state = type { i32, i32, i32, i32, i8* }

@MVPP2_GMAC_STATUS0 = common dso_local global i64 0, align 8
@MVPP2_GMAC_STATUS0_AN_COMPLETE = common dso_local global i32 0, align 4
@MVPP2_GMAC_STATUS0_LINK_UP = common dso_local global i32 0, align 4
@MVPP2_GMAC_STATUS0_FULL_DUPLEX = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@SPEED_2500 = common dso_local global i8* null, align 8
@MVPP2_GMAC_STATUS0_GMII_SPEED = common dso_local global i32 0, align 4
@MVPP2_GMAC_STATUS0_MII_SPEED = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@SPEED_10 = common dso_local global i8* null, align 8
@MVPP2_GMAC_STATUS0_RX_PAUSE = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@MVPP2_GMAC_STATUS0_TX_PAUSE = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.phylink_link_state*)* @mvpp2_gmac_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_gmac_link_state(%struct.mvpp2_port* %0, %struct.phylink_link_state* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.phylink_link_state*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store %struct.phylink_link_state* %1, %struct.phylink_link_state** %4, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %7 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MVPP2_GMAC_STATUS0, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MVPP2_GMAC_STATUS0_AN_COMPLETE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %20 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MVPP2_GMAC_STATUS0_LINK_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %29 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MVPP2_GMAC_STATUS0_FULL_DUPLEX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %38 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %40 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %50 [
    i32 129, label %42
    i32 128, label %46
  ]

42:                                               ; preds = %2
  %43 = load i8*, i8** @SPEED_1000, align 8
  %44 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %45 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %74

46:                                               ; preds = %2
  %47 = load i8*, i8** @SPEED_2500, align 8
  %48 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %49 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  br label %74

50:                                               ; preds = %2
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MVPP2_GMAC_STATUS0_GMII_SPEED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8*, i8** @SPEED_1000, align 8
  %57 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %58 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  br label %73

59:                                               ; preds = %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MVPP2_GMAC_STATUS0_MII_SPEED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i8*, i8** @SPEED_100, align 8
  %66 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %67 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  br label %72

68:                                               ; preds = %59
  %69 = load i8*, i8** @SPEED_10, align 8
  %70 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %71 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %46, %42
  %75 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %76 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @MVPP2_GMAC_STATUS0_RX_PAUSE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @MLO_PAUSE_RX, align 4
  %83 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %84 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %74
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @MVPP2_GMAC_STATUS0_TX_PAUSE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @MLO_PAUSE_TX, align 4
  %94 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %95 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %87
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
