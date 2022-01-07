; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2831u_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2831u_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"onoff=%d\0A\00", align 1
@SYS_SYS0 = common dso_local global i32 0, align 4
@SYS_GPIO_OUT_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"RD SYS0=%02x GPIO_OUT_VAL=%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"WR SYS0=%02x GPIO_OUT_VAL=%02x\0A\00", align 1
@USB_EPA_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @rtl2831u_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2831u_power_ctrl(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %17 = load i32, i32* @SYS_SYS0, align 4
  %18 = call i32 @rtl28xxu_rd_reg(%struct.dvb_usb_device* %16, i32 %17, i32* %8)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %108

22:                                               ; preds = %2
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %24 = load i32, i32* @SYS_GPIO_OUT_VAL, align 4
  %25 = call i32 @rtl28xxu_rd_reg(%struct.dvb_usb_device* %23, i32 %24, i32* %7)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %108

29:                                               ; preds = %22
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, -17
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 15
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, 224
  store i32 %49, i32* %8, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %51, align 4
  br label %63

52:                                               ; preds = %29
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, -2
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 16
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, -5
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, -193
  store i32 %60, i32* %8, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 16, i32* %61, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 2, i32* %62, align 4
  br label %63

63:                                               ; preds = %52, %39
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %72 = load i32, i32* @SYS_SYS0, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @rtl28xxu_wr_reg(%struct.dvb_usb_device* %71, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %108

78:                                               ; preds = %63
  %79 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %80 = load i32, i32* @SYS_GPIO_OUT_VAL, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @rtl28xxu_wr_reg(%struct.dvb_usb_device* %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %108

86:                                               ; preds = %78
  %87 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %88 = load i32, i32* @USB_EPA_CTL, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %90 = call i32 @rtl28xxu_wr_regs(%struct.dvb_usb_device* %87, i32 %88, i32* %89, i32 2)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %108

94:                                               ; preds = %86
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %99 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %102 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @usb_rcvbulkpipe(i32 %103, i32 129)
  %105 = call i32 @usb_clear_halt(i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %97, %94
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %116

108:                                              ; preds = %93, %85, %77, %28, %21
  %109 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %110 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %108, %106
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @rtl28xxu_rd_reg(%struct.dvb_usb_device*, i32, i32*) #1

declare dso_local i32 @rtl28xxu_wr_reg(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @rtl28xxu_wr_regs(%struct.dvb_usb_device*, i32, i32*, i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
