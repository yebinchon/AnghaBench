; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_read_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_read_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm1105_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@dm1105_read_mac.command = internal global [1 x i32] [i32 40], align 4
@IIC_24C01_addr = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"MAC %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm1105_dev*, i32*)* @dm1105_read_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm1105_read_mac(%struct.dm1105_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.dm1105_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.dm1105_dev* %0, %struct.dm1105_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  %8 = load i32, i32* @IIC_24C01_addr, align 4
  %9 = ashr i32 %8, 1
  store i32 %9, i32* %7, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @dm1105_read_mac.command, i64 0, i64 0), i32** %10, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i64 1
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i32, i32* @IIC_24C01_addr, align 4
  %16 = ashr i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  %18 = load i32*, i32** %4, align 8
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 6, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %21 = load i32, i32* @I2C_M_RD, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %23 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %25 = call i32 @dm1105_i2c_xfer(i32* %23, %struct.i2c_msg* %24, i32 2)
  %26 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %27 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %30)
  ret void
}

declare dso_local i32 @dm1105_i2c_xfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
