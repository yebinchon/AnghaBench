; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_tuner_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_tuner_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.dvb_usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @friio_tuner_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friio_tuner_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 0
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I2C_M_RD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i64 %45
  %47 = call i32 @friio_i2c_tuner_read(%struct.dvb_usb_device* %42, %struct.i2c_msg* %46)
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %31
  %49 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 %52
  %54 = call i32 @friio_i2c_tuner_write(%struct.dvb_usb_device* %49, %struct.i2c_msg* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %48, %41
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %64

59:                                               ; preds = %55
  %60 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %27

64:                                               ; preds = %58, %27
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %23, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @friio_i2c_tuner_read(%struct.dvb_usb_device*, %struct.i2c_msg*) #1

declare dso_local i32 @friio_i2c_tuner_write(%struct.dvb_usb_device*, %struct.i2c_msg*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
