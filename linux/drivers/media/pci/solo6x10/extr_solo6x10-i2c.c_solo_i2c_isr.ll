; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8** }

@SOLO_IIC_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOLO_IIC_STATE_TRNS = common dso_local global i32 0, align 4
@SOLO_IIC_STATE_SIG_ERR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@SOLO_IIC_RXD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_i2c_isr(%struct.solo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  %6 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %7 = load i32, i32* @SOLO_IIC_CTRL, align 4
  %8 = call i8* @solo_reg_read(%struct.solo_dev* %6, i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @SOLO_IIC_STATE_TRNS, align 4
  %13 = load i32, i32* @SOLO_IIC_STATE_SIG_ERR, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @CHK_FLAGS(i8* %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %19 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %1
  %23 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %24 = call i32 @solo_i2c_stop(%struct.solo_dev* %23)
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %17
  %28 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %29 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %70 [
    i32 129, label %31
    i32 128, label %48
    i32 130, label %51
  ]

31:                                               ; preds = %27
  %32 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %33 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @I2C_M_RD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %42 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %41, i32 0, i32 1
  store i32 130, i32* %42, align 8
  %43 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %44 = call i32 @solo_i2c_handle_read(%struct.solo_dev* %43)
  store i32 %44, i32* %5, align 4
  br label %73

45:                                               ; preds = %31
  %46 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %47 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %46, i32 0, i32 1
  store i32 128, i32* %47, align 8
  br label %48

48:                                               ; preds = %27, %45
  %49 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %50 = call i32 @solo_i2c_handle_write(%struct.solo_dev* %49)
  store i32 %50, i32* %5, align 4
  br label %73

51:                                               ; preds = %27
  %52 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %53 = load i32, i32* @SOLO_IIC_RXD, align 4
  %54 = call i8* @solo_reg_read(%struct.solo_dev* %52, i32 %53)
  %55 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %56 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %61 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  store i8* %54, i8** %63, align 8
  %64 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %65 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %69 = call i32 @solo_i2c_handle_read(%struct.solo_dev* %68)
  store i32 %69, i32* %5, align 4
  br label %73

70:                                               ; preds = %27
  %71 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %72 = call i32 @solo_i2c_stop(%struct.solo_dev* %71)
  br label %73

73:                                               ; preds = %70, %51, %48, %40
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @solo_reg_read(%struct.solo_dev*, i32) #1

declare dso_local i64 @CHK_FLAGS(i8*, i32) #1

declare dso_local i32 @solo_i2c_stop(%struct.solo_dev*) #1

declare dso_local i32 @solo_i2c_handle_read(%struct.solo_dev*) #1

declare dso_local i32 @solo_i2c_handle_write(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
