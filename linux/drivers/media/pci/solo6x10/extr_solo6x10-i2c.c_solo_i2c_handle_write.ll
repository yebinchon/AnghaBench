; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_handle_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_handle_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32* }

@SOLO_IIC_TXD = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*)* @solo_i2c_handle_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_i2c_handle_write(%struct.solo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_dev*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  br label %4

4:                                                ; preds = %76, %1
  %5 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %6 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %9 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %7, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %16 = load i32, i32* @SOLO_IIC_TXD, align 4
  %17 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %18 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %23 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @solo_reg_write(%struct.solo_dev* %15, i32 %16, i32 %26)
  %28 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %29 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %33 = call i32 @solo_i2c_flush(%struct.solo_dev* %32, i32 1)
  store i32 0, i32* %2, align 4
  br label %79

34:                                               ; preds = %4
  %35 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %36 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %38 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 1
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %38, align 8
  %41 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %42 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %46 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %51 = call i32 @solo_i2c_stop(%struct.solo_dev* %50)
  store i32 0, i32* %2, align 4
  br label %79

52:                                               ; preds = %34
  %53 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %54 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @I2C_M_NOSTART, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %63 = call i32 @solo_i2c_start(%struct.solo_dev* %62)
  br label %78

64:                                               ; preds = %52
  %65 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %66 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @I2C_M_RD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %75 = call i32 @solo_i2c_stop(%struct.solo_dev* %74)
  br label %77

76:                                               ; preds = %64
  br label %4

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %61
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %49, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @solo_i2c_flush(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_i2c_stop(%struct.solo_dev*) #1

declare dso_local i32 @solo_i2c_start(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
