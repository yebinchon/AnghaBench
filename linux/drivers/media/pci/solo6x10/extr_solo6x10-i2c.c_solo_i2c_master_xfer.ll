; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.solo_dev* }
%struct.solo_dev = type { i32, i32, i64, i32, i32, i64, %struct.i2c_msg*, %struct.i2c_adapter* }
%struct.i2c_msg = type { i32 }

@wait = common dso_local global i32 0, align 4
@SOLO_I2C_ADAPTERS = common dso_local global i32 0, align 4
@SOLO_IIC_CTRL = common dso_local global i32 0, align 4
@SOLO_IRQ_IIC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@IIC_STATE_STOP = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@IIC_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @solo_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.solo_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %12, i32 0, i32 0
  %14 = load %struct.solo_dev*, %struct.solo_dev** %13, align 8
  store %struct.solo_dev* %14, %struct.solo_dev** %8, align 8
  %15 = load i32, i32* @wait, align 4
  %16 = call i32 @DEFINE_WAIT(i32 %15)
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %32, %3
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @SOLO_I2C_ADAPTERS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %23 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %22, i32 0, i32 7
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i64 %26
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %29 = icmp eq %struct.i2c_adapter* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %35

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %17

35:                                               ; preds = %30, %17
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SOLO_I2C_ADAPTERS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %4, align 4
  br label %108

41:                                               ; preds = %35
  %42 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %43 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %42, i32 0, i32 3
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %47 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %50 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %49, i32 0, i32 6
  store %struct.i2c_msg* %48, %struct.i2c_msg** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %53 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %55 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %57 = load i32, i32* @SOLO_IIC_CTRL, align 4
  %58 = call i32 @solo_reg_write(%struct.solo_dev* %56, i32 %57, i32 0)
  %59 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %60 = load i32, i32* @SOLO_IRQ_IIC, align 4
  %61 = call i32 @solo_irq_on(%struct.solo_dev* %59, i32 %60)
  %62 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %63 = call i32 @solo_i2c_start(%struct.solo_dev* %62)
  %64 = load i32, i32* @HZ, align 4
  %65 = sdiv i32 %64, 2
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %89, %41
  %68 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %69 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %68, i32 0, i32 4
  %70 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %71 = call i32 @prepare_to_wait(i32* %69, i32* @wait, i32 %70)
  %72 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %73 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IIC_STATE_STOP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %90

78:                                               ; preds = %67
  %79 = load i64, i64* %9, align 8
  %80 = call i64 @schedule_timeout(i64 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %90

84:                                               ; preds = %78
  %85 = load i32, i32* @current, align 4
  %86 = call i64 @signal_pending(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %90

89:                                               ; preds = %84
  br label %67

90:                                               ; preds = %88, %83, %77
  %91 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %92 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %91, i32 0, i32 4
  %93 = call i32 @finish_wait(i32* %92, i32* @wait)
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %96 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %94, %97
  store i32 %98, i32* %10, align 4
  %99 = load i64, i64* @IIC_STATE_IDLE, align 8
  %100 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %101 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %103 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  %104 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %105 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %104, i32 0, i32 3
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %90, %39
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @solo_irq_on(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_i2c_start(%struct.solo_dev*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
