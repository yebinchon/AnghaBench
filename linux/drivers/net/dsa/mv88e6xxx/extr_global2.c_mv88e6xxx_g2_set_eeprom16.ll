; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_set_eeprom16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_set_eeprom16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }

@MV88E6XXX_G2_EEPROM_CMD = common dso_local global i32 0, align 4
@MV88E6XXX_G2_EEPROM_CMD_WRITE_EN = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_g2_set_eeprom16(%struct.mv88e6xxx_chip* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %19 = load i32, i32* @MV88E6XXX_G2_EEPROM_CMD, align 4
  %20 = call i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip* %18, i32 %19, i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %144

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @MV88E6XXX_G2_EEPROM_CMD_WRITE_EN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EROFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %144

33:                                               ; preds = %25
  %34 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %35 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  %40 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = lshr i32 %41, 1
  %43 = call i32 @mv88e6xxx_g2_eeprom_read16(%struct.mv88e6xxx_chip* %40, i32 %42, i32* %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %144

48:                                               ; preds = %39
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %7, align 8
  %51 = load i32, i32* %49, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 255
  %55 = or i32 %52, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = lshr i32 %57, 1
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @mv88e6xxx_g2_eeprom_write16(%struct.mv88e6xxx_chip* %56, i32 %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %144

65:                                               ; preds = %48
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, -1
  store i32 %69, i32* %9, align 4
  %70 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %71 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %65, %33
  br label %75

75:                                               ; preds = %97, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp uge i32 %76, 2
  br i1 %77, label %78, label %106

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %79, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %7, align 8
  %84 = load i32, i32* %82, align 4
  %85 = shl i32 %84, 8
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = lshr i32 %89, 1
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @mv88e6xxx_g2_eeprom_write16(%struct.mv88e6xxx_chip* %88, i32 %90, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %78
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %144

97:                                               ; preds = %78
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 2
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub i32 %100, 2
  store i32 %101, i32* %9, align 4
  %102 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %103 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, 2
  store i32 %105, i32* %103, align 4
  br label %75

106:                                              ; preds = %75
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %106
  %110 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = lshr i32 %111, 1
  %113 = call i32 @mv88e6xxx_g2_eeprom_read16(%struct.mv88e6xxx_chip* %110, i32 %112, i32* %10)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %4, align 4
  br label %144

118:                                              ; preds = %109
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, 65280
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %7, align 8
  %123 = load i32, i32* %121, align 4
  %124 = or i32 %120, %123
  store i32 %124, i32* %10, align 4
  %125 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = lshr i32 %126, 1
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @mv88e6xxx_g2_eeprom_write16(%struct.mv88e6xxx_chip* %125, i32 %127, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %118
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %4, align 4
  br label %144

134:                                              ; preds = %118
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add i32 %137, -1
  store i32 %138, i32* %9, align 4
  %139 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %140 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %134, %106
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %132, %116, %95, %63, %46, %30, %23
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_g2_eeprom_read16(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_g2_eeprom_write16(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
