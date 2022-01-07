; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_alps_tdmb7_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_alps_tdmb7_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dtv_frontend_properties = type { i32 }
%struct.ttusb = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @alps_tdmb7_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_tdmb7_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.ttusb*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ttusb*
  store %struct.ttusb* %16, %struct.ttusb** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 97, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 16, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 36166667
  %26 = sdiv i32 %25, 166667
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 127
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 255
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 10
  %36 = and i32 %35, 96
  %37 = or i32 %36, 133
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 592000000
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 64, i32 128
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %1
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %54, align 8
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %57 = bitcast %struct.dvb_frontend* %56 to %struct.dvb_frontend.0*
  %58 = call i32 %55(%struct.dvb_frontend.0* %57, i32 1)
  br label %59

59:                                               ; preds = %51, %1
  %60 = load %struct.ttusb*, %struct.ttusb** %5, align 8
  %61 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %60, i32 0, i32 0
  %62 = call i32 @i2c_transfer(i32* %61, %struct.i2c_msg* %7, i32 1)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
