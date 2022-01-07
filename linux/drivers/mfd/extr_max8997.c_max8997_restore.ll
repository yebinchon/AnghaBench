; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997.c_max8997_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997.c_max8997_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.max8997_dev = type { i32* }

@max8997_dumpaddr_pmic = common dso_local global i32* null, align 8
@max8997_dumpaddr_muic = common dso_local global i32* null, align 8
@MAX8997_REG_PMIC_END = common dso_local global i32 0, align 4
@max8997_dumpaddr_haptic = common dso_local global i32* null, align 8
@MAX8997_MUIC_REG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @max8997_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_restore(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.max8997_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.max8997_dev* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.max8997_dev* %9, %struct.max8997_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** @max8997_dumpaddr_pmic, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = load i32*, i32** @max8997_dumpaddr_pmic, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %23 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @max8997_write_reg(%struct.i2c_client* %16, i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** @max8997_dumpaddr_muic, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = load i32*, i32** @max8997_dumpaddr_muic, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %47 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MAX8997_REG_PMIC_END, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @max8997_write_reg(%struct.i2c_client* %40, i32 %45, i32 %54)
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %34

59:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %84, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32*, i32** @max8997_dumpaddr_haptic, align 8
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %67 = load i32*, i32** @max8997_dumpaddr_haptic, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %73 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @MAX8997_REG_PMIC_END, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* @MAX8997_MUIC_REG_END, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %74, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @max8997_write_reg(%struct.i2c_client* %66, i32 %71, i32 %82)
  br label %84

84:                                               ; preds = %65
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %60

87:                                               ; preds = %60
  ret i32 0
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.max8997_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @max8997_write_reg(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
