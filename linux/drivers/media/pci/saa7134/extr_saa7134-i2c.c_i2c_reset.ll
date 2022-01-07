; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_i2c_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_i2c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"i2c reset\0A\00", align 1
@I2C_WAIT_RETRY = common dso_local global i32 0, align 4
@I2C_WAIT_DELAY = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @i2c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_reset(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  %6 = call i32 @i2c_dbg(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %8 = call i32 @i2c_get_status(%struct.saa7134_dev* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @i2c_is_error(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @i2c_set_status(%struct.saa7134_dev* %14, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %31, %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @I2C_WAIT_RETRY, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %23 = call i32 @i2c_get_status(%struct.saa7134_dev* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @i2c_is_error(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @I2C_WAIT_DELAY, align 4
  %30 = call i32 @udelay(i32 %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %17

34:                                               ; preds = %27, %17
  %35 = load i32, i32* @I2C_WAIT_RETRY, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @i2c_is_idle(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %48

44:                                               ; preds = %39
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %46 = load i32, i32* @NOP, align 4
  %47 = call i32 @i2c_set_attr(%struct.saa7134_dev* %45, i32 %46)
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %43, %38, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @i2c_dbg(i32, i8*) #1

declare dso_local i32 @i2c_get_status(%struct.saa7134_dev*) #1

declare dso_local i32 @i2c_is_error(i32) #1

declare dso_local i32 @i2c_set_status(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_is_idle(i32) #1

declare dso_local i32 @i2c_set_attr(%struct.saa7134_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
