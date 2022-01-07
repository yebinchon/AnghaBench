; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-i2c.c_go7007_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-i2c.c_go7007_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.go7007 = type { i32 }

@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I2C_CLIENT_SCCB = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @go7007_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.go7007*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %18 = call %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter* %17)
  store %struct.go7007* %18, %struct.go7007** %16, align 8
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %46

25:                                               ; preds = %7
  %26 = load %struct.go7007*, %struct.go7007** %16, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i8, i8* %12, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @I2C_SMBUS_READ, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %13, align 4
  %35 = load i16, i16* %11, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* @I2C_CLIENT_SCCB, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 16, i32 0
  %43 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %44 = bitcast %union.i2c_smbus_data* %43 to i32*
  %45 = call i32 @go7007_i2c_xfer(%struct.go7007* %26, i32 %27, i32 %33, i32 %34, i32 %42, i32* %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %25, %22
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @go7007_i2c_xfer(%struct.go7007*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
