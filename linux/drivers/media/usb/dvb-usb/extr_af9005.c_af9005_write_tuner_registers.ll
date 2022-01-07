; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_write_tuner_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_write_tuner_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@xd_I2C_i2c_m_status_wdat_done = common dso_local global i32 0, align 4
@regmask = common dso_local global i32* null, align 8
@i2c_m_status_wdat_done_len = common dso_local global i32 0, align 4
@i2c_m_status_wdat_done_pos = common dso_local global i32 0, align 4
@i2c_m_status_wdat_fail_len = common dso_local global i32 0, align 4
@i2c_m_status_wdat_fail_pos = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@xd_I2C_i2c_m_status_wdat_fail = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af9005_write_tuner_registers(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @af9005_usb_write_tuner_registers(%struct.dvb_usb_device* %15, i32 %16, i32* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %101

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 65535
  br i1 %26, label %27, label %100

27:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %69, %27
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 200
  br i1 %30, label %31, label %72

31:                                               ; preds = %28
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %33 = load i32, i32* @xd_I2C_i2c_m_status_wdat_done, align 4
  %34 = call i32 @af9005_read_ofdm_register(%struct.dvb_usb_device* %32, i32 %33, i32* %14)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %101

39:                                               ; preds = %31
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** @regmask, align 8
  %42 = load i32, i32* @i2c_m_status_wdat_done_len, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @i2c_m_status_wdat_done_pos, align 4
  %48 = shl i32 %46, %47
  %49 = and i32 %40, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %72

53:                                               ; preds = %39
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** @regmask, align 8
  %56 = load i32, i32* @i2c_m_status_wdat_fail_len, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @i2c_m_status_wdat_fail_pos, align 4
  %62 = shl i32 %60, %61
  %63 = and i32 %54, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %72

67:                                               ; preds = %53
  %68 = call i32 @msleep(i32 50)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %28

72:                                               ; preds = %66, %52, %28
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 200
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @ETIMEDOUT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %101

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %83 = load i32, i32* @xd_I2C_i2c_m_status_wdat_fail, align 4
  %84 = load i32, i32* @i2c_m_status_wdat_fail_pos, align 4
  %85 = load i32, i32* @i2c_m_status_wdat_fail_len, align 4
  %86 = call i32 @af9005_write_register_bits(%struct.dvb_usb_device* %82, i32 %83, i32 %84, i32 %85, i32 1)
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %101

89:                                               ; preds = %78
  %90 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %91 = load i32, i32* @xd_I2C_i2c_m_status_wdat_fail, align 4
  %92 = load i32, i32* @i2c_m_status_wdat_done_pos, align 4
  %93 = load i32, i32* @i2c_m_status_wdat_done_len, align 4
  %94 = call i32 @af9005_write_register_bits(%struct.dvb_usb_device* %90, i32 %91, i32 %92, i32 %93, i32 1)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %101

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %24
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %97, %81, %75, %37, %22
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @af9005_usb_write_tuner_registers(%struct.dvb_usb_device*, i32, i32*, i32) #1

declare dso_local i32 @af9005_read_ofdm_register(%struct.dvb_usb_device*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @af9005_write_register_bits(%struct.dvb_usb_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
