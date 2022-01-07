; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_read_tuner_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_read_tuner_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@APO_REG_I2C_RW_SILICON_TUNER = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@xd_I2C_i2c_m_data8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af9005_read_tuner_registers(%struct.dvb_usb_device* %0, i64 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @APO_REG_I2C_RW_SILICON_TUNER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %32 = call i32 @af9005_write_tuner_registers(%struct.dvb_usb_device* %30, i32 192, i32* %31, i32 2)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %106

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %5
  %39 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @af9005_usb_read_tuner_registers(%struct.dvb_usb_device* %39, i64 %40, i32* %41, i32 1)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %106

47:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 200
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %53 = call i32 @af9005_read_ofdm_register(%struct.dvb_usb_device* %52, i32 41992, i32* %14)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %106

58:                                               ; preds = %51
  %59 = load i32, i32* %14, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %68

63:                                               ; preds = %58
  %64 = call i32 @msleep(i32 50)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %48

68:                                               ; preds = %62, %48
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 200
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %106

74:                                               ; preds = %68
  %75 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %76 = load i32, i32* @xd_I2C_i2c_m_data8, align 4
  %77 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %75, i32 %76, i32 1)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %6, align 4
  br label %106

82:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %102, %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 41984, %89
  %91 = call i32 @af9005_read_ofdm_register(%struct.dvb_usb_device* %88, i32 %90, i32* %14)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %106

96:                                               ; preds = %87
  %97 = load i32, i32* %14, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %83

105:                                              ; preds = %83
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %94, %80, %71, %56, %45, %35
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @af9005_write_tuner_registers(%struct.dvb_usb_device*, i32, i32*, i32) #1

declare dso_local i32 @af9005_usb_read_tuner_registers(%struct.dvb_usb_device*, i64, i32*, i32) #1

declare dso_local i32 @af9005_read_ofdm_register(%struct.dvb_usb_device*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @af9005_write_ofdm_register(%struct.dvb_usb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
