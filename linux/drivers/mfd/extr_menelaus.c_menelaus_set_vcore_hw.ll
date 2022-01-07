; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_vcore_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_vcore_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@the_menelaus = common dso_local global %struct.TYPE_2__* null, align 8
@vcore_values = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Setting VCORE FLOOR to %d mV and ROOF to %d mV\0A\00", align 1
@MENELAUS_VCORE_CTRL3 = common dso_local global i32 0, align 4
@MENELAUS_VCORE_CTRL4 = common dso_local global i32 0, align 4
@MENELAUS_VCORE_CTRL1 = common dso_local global i32 0, align 4
@VCORE_CTRL1_HW_NSW = common dso_local global i32 0, align 4
@VCORE_CTRL1_BYP_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menelaus_set_vcore_hw(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %10, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @vcore_values, align 4
  %16 = load i32, i32* @vcore_values, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = call i32 @menelaus_get_vtg_value(i32 %14, i32 %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @vcore_values, align 4
  %27 = load i32, i32* @vcore_values, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @menelaus_get_vtg_value(i32 %25, i32 %26, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %82

35:                                               ; preds = %24
  %36 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i32, i32* @MENELAUS_VCORE_CTRL3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @menelaus_write_reg(i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %77

50:                                               ; preds = %35
  %51 = load i32, i32* @MENELAUS_VCORE_CTRL4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @menelaus_write_reg(i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %77

57:                                               ; preds = %50
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @MENELAUS_VCORE_CTRL1, align 4
  %64 = call i32 @menelaus_read_reg(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @VCORE_CTRL1_HW_NSW, align 4
  %66 = load i32, i32* @VCORE_CTRL1_BYP_COMP, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @MENELAUS_VCORE_CTRL1, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @menelaus_write_reg(i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %62, %57
  %76 = call i32 @msleep(i32 1)
  br label %77

77:                                               ; preds = %75, %56, %49
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %32, %21
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @menelaus_get_vtg_value(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @menelaus_write_reg(i32, i32) #1

declare dso_local i32 @menelaus_read_reg(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
