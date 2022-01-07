; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_wait_for_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_wait_for_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda18250_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@R08_IRQ1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"waited IRQ (0x%02x) %d ms, triggered: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32)* @tda18250_wait_for_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18250_wait_for_irq(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.tda18250_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.tda18250_dev* %20, %struct.tda18250_dev** %11, align 8
  store i32 0, i32* %14, align 4
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @msecs_to_jiffies(i32 %22)
  %24 = add i64 %21, %23
  store i64 %24, i64* %13, align 8
  br label %25

25:                                               ; preds = %47, %4
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @time_after(i64 %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.tda18250_dev*, %struct.tda18250_dev** %11, align 8
  %33 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @R08_IRQ1, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %15)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %72

40:                                               ; preds = %31
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %14, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @msleep(i32 %48)
  br label %25

50:                                               ; preds = %46, %25
  %51 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* @jiffies, align 8
  %55 = call i32 @jiffies_to_msecs(i64 %54)
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @jiffies_to_msecs(i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 %55, %59
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %65 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %60, i8* %64)
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %50
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %74

71:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %74

72:                                               ; preds = %39
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %71, %68
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i8*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
