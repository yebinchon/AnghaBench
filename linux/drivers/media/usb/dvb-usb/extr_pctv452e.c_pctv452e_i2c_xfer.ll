; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_pctv452e_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_pctv452e_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.dvb_usb_device = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @pctv452e_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pctv452e_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %16)
  store %struct.dvb_usb_device* %17, %struct.dvb_usb_device** %8, align 8
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = call i64 @mutex_lock_interruptible(i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %99

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %91, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %94

30:                                               ; preds = %26
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i64 %33
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @I2C_M_RD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %30
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i64 %43
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %11, align 4
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 %49
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %14, align 8
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i64 %55
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %12, align 4
  br label %78

59:                                               ; preds = %30
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i64 %62
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i64 %68
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %13, align 8
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  store i32* null, i32** %14, align 8
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %59, %40
  %79 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @pctv452e_i2c_msg(%struct.dvb_usb_device* %79, i32 %80, i32* %81, i32 %82, i32* %83, i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %94

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %26

94:                                               ; preds = %89, %26
  %95 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %22
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @pctv452e_i2c_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
