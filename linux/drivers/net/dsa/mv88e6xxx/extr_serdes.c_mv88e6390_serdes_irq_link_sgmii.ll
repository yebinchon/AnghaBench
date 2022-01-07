; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6390_serdes_irq_link_sgmii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6390_serdes_irq_link_sgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, %struct.dsa_switch*, %struct.TYPE_2__* }
%struct.dsa_switch = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MV88E6390_SGMII_PHY_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can't read SGMII PHY status: %d\0A\00", align 1
@MV88E6390_SGMII_PHY_STATUS_LINK = common dso_local global i32 0, align 4
@LINK_FORCED_UP = common dso_local global i32 0, align 4
@LINK_FORCED_DOWN = common dso_local global i32 0, align 4
@MV88E6390_SGMII_PHY_STATUS_SPD_DPL_VALID = common dso_local global i32 0, align 4
@MV88E6390_SGMII_PHY_STATUS_DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@MV88E6390_SGMII_PHY_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid PHY speed\0A\00", align 1
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_1000BASEX = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_2500BASEX = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@PAUSE_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"can't propagate PHY settings to MAC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6390_serdes_irq_link_sgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6390_serdes_irq_link_sgmii(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsa_switch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %16 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %24 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %23, i32 0, i32 1
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %24, align 8
  store %struct.dsa_switch* %25, %struct.dsa_switch** %8, align 8
  %26 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @SPEED_UNKNOWN, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %31 = load i32, i32* @MV88E6390_SGMII_PHY_STATUS, align 4
  %32 = call i32 @mv88e6390_serdes_read(%struct.mv88e6xxx_chip* %28, i32 %29, i32 %30, i32 %31, i32* %14)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %37 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %123

41:                                               ; preds = %3
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @MV88E6390_SGMII_PHY_STATUS_LINK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @LINK_FORCED_UP, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @LINK_FORCED_DOWN, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @MV88E6390_SGMII_PHY_STATUS_SPD_DPL_VALID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @MV88E6390_SGMII_PHY_STATUS_DUPLEX_FULL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @DUPLEX_FULL, align 4
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @DUPLEX_HALF, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @MV88E6390_SGMII_PHY_STATUS_SPEED_MASK, align 4
  %69 = and i32 %67, %68
  switch i32 %69, label %82 [
    i32 131, label %70
    i32 132, label %78
    i32 133, label %80
  ]

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @SPEED_2500, align 4
  store i32 %74, i32* %10, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @SPEED_1000, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %75, %73
  br label %87

78:                                               ; preds = %65
  %79 = load i32, i32* @SPEED_100, align 4
  store i32 %79, i32* %10, align 4
  br label %87

80:                                               ; preds = %65
  %81 = load i32, i32* @SPEED_10, align 4
  store i32 %81, i32* %10, align 4
  br label %87

82:                                               ; preds = %65
  %83 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %84 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %123

87:                                               ; preds = %80, %78, %77
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i32, i32* %7, align 4
  switch i32 %89, label %96 [
    i32 128, label %90
    i32 130, label %92
    i32 129, label %94
  ]

90:                                               ; preds = %88
  %91 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  store i32 %91, i32* %11, align 4
  br label %98

92:                                               ; preds = %88
  %93 = load i32, i32* @PHY_INTERFACE_MODE_1000BASEX, align 4
  store i32 %93, i32* %11, align 4
  br label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @PHY_INTERFACE_MODE_2500BASEX, align 4
  store i32 %95, i32* %11, align 4
  br label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %96, %94, %92, %90
  %99 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @PAUSE_OFF, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @mv88e6xxx_port_setup_mac(%struct.mv88e6xxx_chip* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %111 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %123

115:                                              ; preds = %98
  %116 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @LINK_FORCED_UP, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @dsa_port_phylink_mac_change(%struct.dsa_switch* %116, i32 %117, i32 %121)
  br label %123

123:                                              ; preds = %35, %82, %115, %109
  ret void
}

declare dso_local i32 @mv88e6390_serdes_read(%struct.mv88e6xxx_chip*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mv88e6xxx_port_setup_mac(%struct.mv88e6xxx_chip*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dsa_port_phylink_mac_change(%struct.dsa_switch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
