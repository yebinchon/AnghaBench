; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_serdes.c_b53_serdes_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }
%struct.phylink_link_state = type { i32, i32, i32, i32, i32 }

@B53_INVALID_LANE = common dso_local global i64 0, align 8
@B53_SERDES_DIGITAL_STATUS = common dso_local global i32 0, align 4
@SERDES_DIGITAL_BLK = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@SERDES_MII_BLK = common dso_local global i32 0, align 4
@SPEED_STATUS_SHIFT = common dso_local global i32 0, align 4
@SPEED_STATUS_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@DUPLEX_STATUS = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@LINK_STATUS = common dso_local global i32 0, align 4
@PAUSE_RESOLUTION_RX_SIDE = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_RESOLUTION_TX_SIDE = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_serdes_link_state(%struct.b53_device* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b53_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phylink_link_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %7, align 8
  %11 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @b53_serdes_map_lane(%struct.b53_device* %11, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @B53_INVALID_LANE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %105

18:                                               ; preds = %3
  %19 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @B53_SERDES_DIGITAL_STATUS, align 4
  %22 = load i32, i32* @SERDES_DIGITAL_BLK, align 4
  %23 = call i32 @b53_serdes_read(%struct.b53_device* %19, i64 %20, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @MII_BMSR, align 4
  %27 = call i32 @B53_SERDES_MII_REG(i32 %26)
  %28 = load i32, i32* @SERDES_MII_BLK, align 4
  %29 = call i32 @b53_serdes_read(%struct.b53_device* %24, i64 %25, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SPEED_STATUS_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @SPEED_STATUS_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %47 [
    i32 131, label %35
    i32 130, label %39
    i32 129, label %43
    i32 128, label %48
  ]

35:                                               ; preds = %18
  %36 = load i32, i32* @SPEED_10, align 4
  %37 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %38 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  br label %52

39:                                               ; preds = %18
  %40 = load i32, i32* @SPEED_100, align 4
  %41 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %42 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %52

43:                                               ; preds = %18
  %44 = load i32, i32* @SPEED_1000, align 4
  %45 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %46 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  br label %52

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %18, %47
  %49 = load i32, i32* @SPEED_2500, align 4
  %50 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %51 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %43, %39, %35
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @DUPLEX_STATUS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @DUPLEX_FULL, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @DUPLEX_HALF, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %64 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %73 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @LINK_STATUS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %82 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @PAUSE_RESOLUTION_RX_SIDE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %61
  %88 = load i32, i32* @MLO_PAUSE_RX, align 4
  %89 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %90 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %61
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @PAUSE_RESOLUTION_TX_SIDE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* @MLO_PAUSE_TX, align 4
  %100 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %101 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %93
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %17
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @b53_serdes_map_lane(%struct.b53_device*, i32) #1

declare dso_local i32 @b53_serdes_read(%struct.b53_device*, i64, i32, i32) #1

declare dso_local i32 @B53_SERDES_MII_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
