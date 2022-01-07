; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_regulator_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_regulator_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@the_menelaus = common dso_local global %struct.TYPE_2__* null, align 8
@MENELAUS_SLEEP_CTRL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"regulator sleep configuration: %02x\0A\00", align 1
@MENELAUS_GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_CTRL_SLPCTLEN = common dso_local global i32 0, align 4
@GPIO3_DIR_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menelaus_set_regulator_sleep(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @MENELAUS_SLEEP_CTRL2, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @menelaus_write_reg(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @MENELAUS_GPIO_CTRL, align 4
  %26 = call i32 @menelaus_read_reg(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %49

30:                                               ; preds = %20
  %31 = load i32, i32* @GPIO_CTRL_SLPCTLEN, align 4
  %32 = load i32, i32* @GPIO3_DIR_INPUT, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* @MENELAUS_GPIO_CTRL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @menelaus_write_reg(i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %29, %19
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @menelaus_write_reg(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @menelaus_read_reg(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
