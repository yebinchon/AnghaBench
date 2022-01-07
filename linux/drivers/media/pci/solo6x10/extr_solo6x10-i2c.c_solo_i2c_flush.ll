; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@IIC_STATE_START = common dso_local global i64 0, align 8
@SOLO_IIC_START = common dso_local global i32 0, align 4
@SOLO_IIC_WRITE = common dso_local global i32 0, align 4
@SOLO_IIC_READ = common dso_local global i32 0, align 4
@I2C_M_NO_RD_ACK = common dso_local global i32 0, align 4
@SOLO_IIC_ACK_EN = common dso_local global i32 0, align 4
@SOLO_IIC_STOP = common dso_local global i32 0, align 4
@SOLO_IIC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*, i32)* @solo_i2c_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_i2c_flush(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %7 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @SOLO_IIC_CH_SET(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %11 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IIC_STATE_START, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @SOLO_IIC_START, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @SOLO_IIC_WRITE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %43

26:                                               ; preds = %19
  %27 = load i32, i32* @SOLO_IIC_READ, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @I2C_M_NO_RD_ACK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @SOLO_IIC_ACK_EN, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %26
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %45 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %48 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %46, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @SOLO_IIC_STOP, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %43
  %58 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %59 = load i32, i32* @SOLO_IIC_CTRL, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @solo_reg_write(%struct.solo_dev* %58, i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @SOLO_IIC_CH_SET(i32) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
