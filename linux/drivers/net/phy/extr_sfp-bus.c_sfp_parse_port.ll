; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_parse_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_parse_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp_bus = type { i32 }
%struct.sfp_eeprom_id = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PORT_DA = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SFP: unknown connector id 0x%02x\0A\00", align 1
@FIBRE = common dso_local global i32 0, align 4
@TP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfp_parse_port(%struct.sfp_bus* %0, %struct.sfp_eeprom_id* %1, i64* %2) #0 {
  %4 = alloca %struct.sfp_bus*, align 8
  %5 = alloca %struct.sfp_eeprom_id*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.sfp_bus* %0, %struct.sfp_bus** %4, align 8
  store %struct.sfp_eeprom_id* %1, %struct.sfp_eeprom_id** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.sfp_eeprom_id*, %struct.sfp_eeprom_id** %5, align 8
  %9 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %26 [
    i32 130, label %12
    i32 141, label %12
    i32 139, label %12
    i32 136, label %12
    i32 135, label %12
    i32 132, label %12
    i32 131, label %13
    i32 142, label %14
    i32 128, label %16
    i32 129, label %24
    i32 138, label %24
    i32 137, label %24
    i32 140, label %24
    i32 133, label %24
    i32 134, label %24
  ]

12:                                               ; preds = %3, %3, %3, %3, %3, %3
  store i32 144, i32* %7, align 4
  br label %36

13:                                               ; preds = %3
  store i32 143, i32* %7, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load i32, i32* @PORT_DA, align 4
  store i32 %15, i32* %7, align 4
  br label %36

16:                                               ; preds = %3
  %17 = load %struct.sfp_eeprom_id*, %struct.sfp_eeprom_id** %5, align 8
  %18 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 143, i32* %7, align 4
  br label %36

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %3, %3, %3, %3, %3, %3, %23
  %25 = load i32, i32* @PORT_OTHER, align 4
  store i32 %25, i32* %7, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.sfp_bus*, %struct.sfp_bus** %4, align 8
  %28 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sfp_eeprom_id*, %struct.sfp_eeprom_id** %5, align 8
  %31 = getelementptr inbounds %struct.sfp_eeprom_id, %struct.sfp_eeprom_id* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @PORT_OTHER, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %26, %24, %22, %14, %13, %12
  %37 = load i64*, i64** %6, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %49 [
    i32 144, label %41
    i32 143, label %45
  ]

41:                                               ; preds = %39
  %42 = load i64*, i64** %6, align 8
  %43 = load i32, i32* @FIBRE, align 4
  %44 = call i32 @phylink_set(i64* %42, i32 %43)
  br label %49

45:                                               ; preds = %39
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* @TP, align 4
  %48 = call i32 @phylink_set(i64* %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %45, %41
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @phylink_set(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
