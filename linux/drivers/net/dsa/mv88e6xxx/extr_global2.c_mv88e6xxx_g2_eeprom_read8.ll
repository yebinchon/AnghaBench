; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_eeprom_read8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_eeprom_read8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_G2_EEPROM_CMD_OP_READ = common dso_local global i32 0, align 4
@MV88E6390_G2_EEPROM_ADDR = common dso_local global i32 0, align 4
@MV88E6XXX_G2_EEPROM_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32*)* @mv88e6xxx_g2_eeprom_read8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g2_eeprom_read8(%struct.mv88e6xxx_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @MV88E6XXX_G2_EEPROM_CMD_OP_READ, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %12 = call i32 @mv88e6xxx_g2_eeprom_wait(%struct.mv88e6xxx_chip* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %19 = load i32, i32* @MV88E6390_G2_EEPROM_ADDR, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mv88e6xxx_g2_write(%struct.mv88e6xxx_chip* %18, i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %17
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @mv88e6xxx_g2_eeprom_cmd(%struct.mv88e6xxx_chip* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %36 = load i32, i32* @MV88E6XXX_G2_EEPROM_CMD, align 4
  %37 = call i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip* %35, i32 %36, i32* %8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 255
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %40, %32, %24, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mv88e6xxx_g2_eeprom_wait(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g2_write(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g2_eeprom_cmd(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
