; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2832u_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2832u_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"onoff=%d\0A\00", align 1
@SYS_GPIO_OUT_VAL = common dso_local global i32 0, align 4
@SYS_DEMOD_CTL1 = common dso_local global i32 0, align 4
@SYS_DEMOD_CTL = common dso_local global i32 0, align 4
@USB_EPA_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\10\02\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @rtl2832u_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832u_power_ctrl(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %2
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %17 = load i32, i32* @SYS_GPIO_OUT_VAL, align 4
  %18 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %16, i32 %17, i32 8, i32 24)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %87

22:                                               ; preds = %15
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %24 = load i32, i32* @SYS_DEMOD_CTL1, align 4
  %25 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %23, i32 %24, i32 0, i32 16)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %87

29:                                               ; preds = %22
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %31 = load i32, i32* @SYS_DEMOD_CTL, align 4
  %32 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %30, i32 %31, i32 128, i32 128)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %87

36:                                               ; preds = %29
  %37 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %38 = load i32, i32* @SYS_DEMOD_CTL, align 4
  %39 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %37, i32 %38, i32 32, i32 32)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %87

43:                                               ; preds = %36
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %45 = load i32, i32* @USB_EPA_CTL, align 4
  %46 = call i32 @rtl28xxu_wr_regs(%struct.dvb_usb_device* %44, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %87

50:                                               ; preds = %43
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @usb_rcvbulkpipe(i32 %56, i32 129)
  %58 = call i32 @usb_clear_halt(i32 %53, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %87

62:                                               ; preds = %50
  br label %85

63:                                               ; preds = %2
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %65 = load i32, i32* @SYS_GPIO_OUT_VAL, align 4
  %66 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %64, i32 %65, i32 16, i32 16)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %87

70:                                               ; preds = %63
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %72 = load i32, i32* @SYS_DEMOD_CTL, align 4
  %73 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %71, i32 %72, i32 0, i32 128)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %87

77:                                               ; preds = %70
  %78 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %79 = load i32, i32* @USB_EPA_CTL, align 4
  %80 = call i32 @rtl28xxu_wr_regs(%struct.dvb_usb_device* %78, i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %87

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %62
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %95

87:                                               ; preds = %83, %76, %69, %61, %49, %42, %35, %28, %21
  %88 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @dev_dbg(i32* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %87, %85
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i32 @rtl28xxu_wr_regs(%struct.dvb_usb_device*, i32, i8*, i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
