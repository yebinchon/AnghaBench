; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6352_port_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6352_port_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.phylink_link_state = type { i32, i32, i32, i32, i32, i32 }

@MV88E6XXX_PORT_MAC_CTL = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_1000BASEX = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_2500BASEX = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XAUI = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RXAUI = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_SPEED_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_MASK = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6352_port_link_state(%struct.mv88e6xxx_chip* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phylink_link_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %7, align 8
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %11 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %86 [
    i32 135, label %18
    i32 137, label %66
    i32 133, label %70
    i32 136, label %74
    i32 132, label %78
    i32 134, label %82
  ]

18:                                               ; preds = %3
  %19 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL, align 4
  %22 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %19, i32 %20, i32 %21, i32* %9)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %158

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_ID, align 4
  %39 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %40 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  br label %65

41:                                               ; preds = %32, %27
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_RXID, align 4
  %48 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %49 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  br label %64

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_TXID, align 4
  %57 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %58 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  br label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  %61 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %62 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %37
  br label %90

66:                                               ; preds = %3
  %67 = load i32, i32* @PHY_INTERFACE_MODE_1000BASEX, align 4
  %68 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %69 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  br label %90

70:                                               ; preds = %3
  %71 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %72 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %73 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  br label %90

74:                                               ; preds = %3
  %75 = load i32, i32* @PHY_INTERFACE_MODE_2500BASEX, align 4
  %76 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %77 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  br label %90

78:                                               ; preds = %3
  %79 = load i32, i32* @PHY_INTERFACE_MODE_XAUI, align 4
  %80 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %81 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  br label %90

82:                                               ; preds = %3
  %83 = load i32, i32* @PHY_INTERFACE_MODE_RXAUI, align 4
  %84 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %85 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %3
  %87 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  %88 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %89 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %82, %78, %74, %70, %66, %65
  %91 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @MV88E6XXX_PORT_STS, align 4
  %94 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %91, i32 %92, i32 %93, i32* %9)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %158

99:                                               ; preds = %90
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @MV88E6XXX_PORT_STS_SPEED_MASK, align 4
  %102 = and i32 %100, %101
  switch i32 %102, label %129 [
    i32 131, label %103
    i32 130, label %107
    i32 129, label %111
    i32 128, label %115
  ]

103:                                              ; preds = %99
  %104 = load i32, i32* @SPEED_10, align 4
  %105 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %106 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  br label %129

107:                                              ; preds = %99
  %108 = load i32, i32* @SPEED_100, align 4
  %109 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %110 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  br label %129

111:                                              ; preds = %99
  %112 = load i32, i32* @SPEED_1000, align 4
  %113 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %114 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  br label %129

115:                                              ; preds = %99
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_MASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 136
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @SPEED_2500, align 4
  %122 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %123 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  br label %128

124:                                              ; preds = %115
  %125 = load i32, i32* @SPEED_10000, align 4
  %126 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %127 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %99, %128, %111, %107, %103
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @MV88E6XXX_PORT_STS_DUPLEX, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @DUPLEX_FULL, align 4
  br label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @DUPLEX_HALF, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %141 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @MV88E6XXX_PORT_STS_LINK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %150 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %152 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  %153 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %154 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %157 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %138, %97, %25
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
