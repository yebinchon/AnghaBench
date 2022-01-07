; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_digitv.c_digitv_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i64, i32* }
%struct.dvb_usb_device = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"more than 2 i2c messages at a time is not handled yet. TODO.\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@USB_READ_COFDM = common dso_local global i32 0, align 4
@USB_WRITE_COFDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @digitv_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.dvb_usb_device* %11, %struct.dvb_usb_device** %8, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %114

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %106, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %109

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %29
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 %38
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @I2C_M_RD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %34
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %47 = load i32, i32* @USB_READ_COFDM, align 4
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i64 %50
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 %59
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i64 %66
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @digitv_ctrl_msg(%struct.dvb_usb_device* %46, i32 %47, i32 %55, i32* null, i64 0, i32* %62, i64 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  br label %109

73:                                               ; preds = %45
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %105

76:                                               ; preds = %34, %29
  %77 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %78 = load i32, i32* @USB_WRITE_COFDM, align 4
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %81
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i64 %89
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i64 %96
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i64 @digitv_ctrl_msg(%struct.dvb_usb_device* %77, i32 %78, i32 %86, i32* %93, i64 %100, i32* null, i64 0)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %76
  br label %109

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %104, %73
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %25

109:                                              ; preds = %103, %72, %25
  %110 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %111 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %109, %16
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @digitv_ctrl_msg(%struct.dvb_usb_device*, i32, i32, i32*, i64, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
