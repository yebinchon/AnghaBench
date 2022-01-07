; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, %struct.i2c_adapter*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.i2c_adapter = type { i32, %struct.solo_dev*, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@SOLO_IIC_CFG = common dso_local global i32 0, align 4
@SOLO_IIC_ENABLE = common dso_local global i32 0, align 4
@IIC_STATE_IDLE = common dso_local global i32 0, align 4
@SOLO_I2C_ADAPTERS = common dso_local global i32 0, align 4
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s I2C %d\00", align 1
@SOLO6X10_NAME = common dso_local global i8* null, align 8
@solo_i2c_algo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_i2c_init(%struct.solo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  %7 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %8 = load i32, i32* @SOLO_IIC_CFG, align 4
  %9 = call i32 @SOLO_IIC_PRESCALE(i32 8)
  %10 = load i32, i32* @SOLO_IIC_ENABLE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @solo_reg_write(%struct.solo_dev* %7, i32 %8, i32 %11)
  %13 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %14 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load i32, i32* @IIC_STATE_IDLE, align 4
  %16 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %17 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %19 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %18, i32 0, i32 4
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %22 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %21, i32 0, i32 3
  %23 = call i32 @mutex_init(i32* %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %64, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SOLO_I2C_ADAPTERS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %30 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %29, i32 0, i32 1
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i64 %33
  store %struct.i2c_adapter* %34, %struct.i2c_adapter** %6, align 8
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @I2C_NAME_SIZE, align 4
  %39 = load i8*, i8** @SOLO6X10_NAME, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @snprintf(i32 %37, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 3
  store i32* @solo_i2c_algo, i32** %43, align 8
  %44 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %45, i32 0, i32 1
  store %struct.solo_dev* %44, %struct.solo_dev** %46, align 8
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %50 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %57 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %28
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %61, i32 0, i32 1
  store %struct.solo_dev* null, %struct.solo_dev** %62, align 8
  br label %67

63:                                               ; preds = %28
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %24

67:                                               ; preds = %60, %24
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @SOLO_I2C_ADAPTERS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %77 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %76, i32 0, i32 1
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %78, i64 %80
  %82 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %81, i32 0, i32 1
  %83 = load %struct.solo_dev*, %struct.solo_dev** %82, align 8
  %84 = icmp ne %struct.solo_dev* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  br label %104

86:                                               ; preds = %75
  %87 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %88 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %87, i32 0, i32 1
  %89 = load %struct.i2c_adapter*, %struct.i2c_adapter** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %89, i64 %91
  %93 = call i32 @i2c_del_adapter(%struct.i2c_adapter* %92)
  %94 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %95 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %94, i32 0, i32 1
  %96 = load %struct.i2c_adapter*, %struct.i2c_adapter** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %96, i64 %98
  %100 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %99, i32 0, i32 1
  store %struct.solo_dev* null, %struct.solo_dev** %100, align 8
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %71

104:                                              ; preds = %85, %71
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %67
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %104
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_IIC_PRESCALE(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_del_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
