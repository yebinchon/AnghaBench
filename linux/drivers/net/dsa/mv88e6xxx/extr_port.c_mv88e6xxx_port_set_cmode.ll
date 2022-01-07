; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_cmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_cmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_1000BASEX = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_SGMII = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_2500BASEX = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_XAUI = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_RXAUI = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6xxx_port_set_cmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_port_set_cmode(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 133, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %28 [
    i32 133, label %18
    i32 130, label %20
    i32 132, label %22
    i32 128, label %24
    i32 129, label %24
    i32 131, label %26
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  store i32 %19, i32* %9, align 4
  br label %29

20:                                               ; preds = %16
  %21 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_SGMII, align 4
  store i32 %21, i32* %9, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_2500BASEX, align 4
  store i32 %23, i32* %9, align 4
  br label %29

24:                                               ; preds = %16, %16
  %25 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_XAUI, align 4
  store i32 %25, i32* %9, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_RXAUI, align 4
  store i32 %27, i32* %9, align 4
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %26, %24, %22, %20, %18
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %32 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %30, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %161

41:                                               ; preds = %29
  %42 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @mv88e6xxx_serdes_get_lane(%struct.mv88e6xxx_chip* %42, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %49 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @mv88e6xxx_serdes_irq_disable(%struct.mv88e6xxx_chip* %58, i32 %59, i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %161

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %47
  %68 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @mv88e6xxx_serdes_power_down(%struct.mv88e6xxx_chip* %68, i32 %69, i64 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %161

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %41
  %78 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %79 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %160

87:                                               ; preds = %77
  %88 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @MV88E6XXX_PORT_STS, align 4
  %91 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %88, i32 %89, i32 %90, i32* %10)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %161

96:                                               ; preds = %87
  %97 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @MV88E6XXX_PORT_STS, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %104, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %96
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %161

113:                                              ; preds = %96
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %116 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i32 %114, i32* %121, align 8
  %122 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i64 @mv88e6xxx_serdes_get_lane(%struct.mv88e6xxx_chip* %122, i32 %123)
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %113
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %161

130:                                              ; preds = %113
  %131 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @mv88e6xxx_serdes_power_up(%struct.mv88e6xxx_chip* %131, i32 %132, i64 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %4, align 4
  br label %161

139:                                              ; preds = %130
  %140 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %141 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %139
  %150 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i64, i64* %8, align 8
  %153 = call i32 @mv88e6xxx_serdes_irq_enable(%struct.mv88e6xxx_chip* %150, i32 %151, i64 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* %4, align 4
  br label %161

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %139
  br label %160

160:                                              ; preds = %159, %77
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %156, %137, %127, %111, %94, %74, %64, %40
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i64 @mv88e6xxx_serdes_get_lane(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_serdes_irq_disable(%struct.mv88e6xxx_chip*, i32, i64) #1

declare dso_local i32 @mv88e6xxx_serdes_power_down(%struct.mv88e6xxx_chip*, i32, i64) #1

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_serdes_power_up(%struct.mv88e6xxx_chip*, i32, i64) #1

declare dso_local i32 @mv88e6xxx_serdes_irq_enable(%struct.mv88e6xxx_chip*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
