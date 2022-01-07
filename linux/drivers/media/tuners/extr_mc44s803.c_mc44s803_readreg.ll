; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mc44s803.c_mc44s803_readreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mc44s803.c_mc44s803_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc44s803_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@MC44S803_REG_DATAREG = common dso_local global i32 0, align 4
@MC44S803_ADDR = common dso_local global i32 0, align 4
@MC44S803_D = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"I2C read failed\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc44s803_priv*, i32, i32*)* @mc44s803_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc44s803_readreg(%struct.mc44s803_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mc44s803_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.mc44s803_priv* %0, %struct.mc44s803_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32 3, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  %17 = load i32, i32* @I2C_M_RD, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  %19 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mc44s803_priv, %struct.mc44s803_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %18, align 8
  %24 = load i32, i32* @MC44S803_REG_DATAREG, align 4
  %25 = load i32, i32* @MC44S803_ADDR, align 4
  %26 = call i32 @MC44S803_REG_SM(i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MC44S803_D, align 4
  %29 = call i32 @MC44S803_REG_SM(i32 %27, i32 %28)
  %30 = or i32 %26, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %3
  %39 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %5, align 8
  %40 = getelementptr inbounds %struct.mc44s803_priv, %struct.mc44s803_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %43 = call i32 @i2c_transfer(i32 %41, %struct.i2c_msg* %42, i32 1)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = call i32 @mc_printk(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EREMOTEIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %38
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = or i32 %53, %56
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %57, %59
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %50, %45, %36
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @MC44S803_REG_SM(i32, i32) #1

declare dso_local i32 @mc44s803_writereg(%struct.mc44s803_priv*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @mc_printk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
