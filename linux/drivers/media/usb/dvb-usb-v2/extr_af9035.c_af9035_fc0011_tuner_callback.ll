; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_fc0011_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_fc0011_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32)* @af9035_fc0011_tuner_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_fc0011_tuner_callback(%struct.dvb_usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  store %struct.usb_interface* %12, %struct.usb_interface** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %73 [
    i32 129, label %14
    i32 128, label %46
  ]

14:                                               ; preds = %3
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %16 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %15, i32 55531, i32 1, i32 1)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %77

20:                                               ; preds = %14
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %22 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %21, i32 55532, i32 1, i32 1)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %77

26:                                               ; preds = %20
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %28 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %27, i32 55533, i32 1, i32 1)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %77

32:                                               ; preds = %26
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %34 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %33, i32 55504, i32 1, i32 1)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %77

38:                                               ; preds = %32
  %39 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %40 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %39, i32 55505, i32 1, i32 1)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %77

44:                                               ; preds = %38
  %45 = call i32 @usleep_range(i32 10000, i32 50000)
  br label %76

46:                                               ; preds = %3
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %48 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %47, i32 55529, i32 1)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %77

52:                                               ; preds = %46
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %54 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %53, i32 55528, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %77

58:                                               ; preds = %52
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %60 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %59, i32 55527, i32 1)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %77

64:                                               ; preds = %58
  %65 = call i32 @usleep_range(i32 10000, i32 20000)
  %66 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %67 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %66, i32 55527, i32 0)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %77

71:                                               ; preds = %64
  %72 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %76

73:                                               ; preds = %3
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %77

76:                                               ; preds = %71, %44
  store i32 0, i32* %4, align 4
  br label %83

77:                                               ; preds = %73, %70, %63, %57, %51, %43, %37, %31, %25, %19
  %78 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %79 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @dev_dbg(i32* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %76
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @af9035_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @af9035_wr_reg(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
