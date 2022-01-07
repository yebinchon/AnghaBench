; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_i2c_recv_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_i2c_recv_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@CONTINUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SAA7134_I2C_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"i2c data <= 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @i2c_recv_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_recv_byte(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  %6 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %7 = load i32, i32* @CONTINUE, align 4
  %8 = call i32 @i2c_set_attr(%struct.saa7134_dev* %6, i32 %7)
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %10 = call i32 @i2c_is_busy_wait(%struct.saa7134_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %17 = call i32 @i2c_get_status(%struct.saa7134_dev* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @i2c_is_error(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %31

24:                                               ; preds = %15
  %25 = load i32, i32* @SAA7134_I2C_DATA, align 4
  %26 = call zeroext i8 @saa_readb(i32 %25)
  store i8 %26, i8* %5, align 1
  %27 = load i8, i8* %5, align 1
  %28 = call i32 @i2c_dbg(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8 zeroext %27)
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %21, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @i2c_set_attr(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @i2c_is_busy_wait(%struct.saa7134_dev*) #1

declare dso_local i32 @i2c_get_status(%struct.saa7134_dev*) #1

declare dso_local i64 @i2c_is_error(i32) #1

declare dso_local zeroext i8 @saa_readb(i32) #1

declare dso_local i32 @i2c_dbg(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
