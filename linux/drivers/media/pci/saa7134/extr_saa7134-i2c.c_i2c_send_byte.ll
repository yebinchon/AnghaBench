; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_i2c_send_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_i2c_send_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@SAA7134_I2C_ATTR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"i2c data => 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, i32, i8)* @i2c_send_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_send_byte(%struct.saa7134_dev* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %10 = load i32, i32* @SAA7134_I2C_ATTR_STATUS, align 4
  %11 = ashr i32 %10, 2
  %12 = call i32 @saa_readl(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 6
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %9, align 4
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, -268435456
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @SAA7134_I2C_ATTR_STATUS, align 4
  %28 = ashr i32 %27, 2
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @saa_writel(i32 %28, i32 %29)
  %31 = load i8, i8* %7, align 1
  %32 = call i32 @i2c_dbg(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8 zeroext %31)
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %34 = call i32 @i2c_is_busy_wait(%struct.saa7134_dev* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %3
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %41 = call i32 @i2c_get_status(%struct.saa7134_dev* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @i2c_is_error(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45, %36
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @i2c_dbg(i32, i8*, i8 zeroext) #1

declare dso_local i32 @i2c_is_busy_wait(%struct.saa7134_dev*) #1

declare dso_local i32 @i2c_get_status(%struct.saa7134_dev*) #1

declare dso_local i64 @i2c_is_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
