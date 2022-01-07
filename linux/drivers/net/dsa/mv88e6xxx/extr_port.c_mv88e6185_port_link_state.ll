; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6185_port_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6185_port_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.phylink_link_state = type { i64, i32, i32, i32, i32, i32 }

@PHY_INTERFACE_MODE_1000BASEX = common dso_local global i64 0, align 8
@MV88E6185_PORT_STS_CMODE_SERDES = common dso_local global i64 0, align 8
@MV88E6XXX_PORT_MAC_CTL = common dso_local global i32 0, align 4
@MV88E6185_PORT_MAC_CTL_SYNC_OK = common dso_local global i32 0, align 4
@MV88E6185_PORT_MAC_CTL_AN_DONE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6185_port_link_state(%struct.mv88e6xxx_chip* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phylink_link_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %7, align 8
  %11 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %12 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PHY_INTERFACE_MODE_1000BASEX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %3
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %18 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @MV88E6185_PORT_STS_CMODE_SERDES, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %16
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MV88E6XXX_PORT_MAC_CTL, align 4
  %32 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %29, i32 %30, i32 %31, i32* %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %88

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MV88E6185_PORT_MAC_CTL_SYNC_OK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %46 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %48 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %47, i32 0, i32 2
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MV88E6185_PORT_MAC_CTL_AN_DONE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %57 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %59 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %37
  %63 = load i32, i32* @DUPLEX_FULL, align 4
  br label %66

64:                                               ; preds = %37
  %65 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %69 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %71 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @SPEED_1000, align 4
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @SPEED_UNKNOWN, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %81 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %4, align 4
  br label %88

82:                                               ; preds = %16
  br label %83

83:                                               ; preds = %82, %3
  %84 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %87 = call i32 @mv88e6352_port_link_state(%struct.mv88e6xxx_chip* %84, i32 %85, %struct.phylink_link_state* %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %78, %35
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6352_port_link_state(%struct.mv88e6xxx_chip*, i32, %struct.phylink_link_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
