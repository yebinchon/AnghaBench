; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_get_eeprom16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_get_eeprom16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_g2_get_eeprom16(%struct.mv88e6xxx_chip* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
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
  %18 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %19 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %3
  %24 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = lshr i32 %25, 1
  %27 = call i32 @mv88e6xxx_g2_eeprom_read16(%struct.mv88e6xxx_chip* %24, i32 %26, i32* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %103

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %32, %3
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp uge i32 %48, 2
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = lshr i32 %52, 1
  %54 = call i32 @mv88e6xxx_g2_eeprom_read16(%struct.mv88e6xxx_chip* %51, i32 %53, i32* %10)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %103

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 255
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 2
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sub i32 %71, 2
  store i32 %72, i32* %9, align 4
  %73 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %74 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, 2
  store i32 %76, i32* %74, align 4
  br label %47

77:                                               ; preds = %47
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = lshr i32 %82, 1
  %84 = call i32 @mv88e6xxx_g2_eeprom_read16(%struct.mv88e6xxx_chip* %81, i32 %83, i32* %10)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %103

89:                                               ; preds = %80
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 255
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, -1
  store i32 %97, i32* %9, align 4
  %98 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %99 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %89, %77
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %87, %57, %30
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @mv88e6xxx_g2_eeprom_read16(%struct.mv88e6xxx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
