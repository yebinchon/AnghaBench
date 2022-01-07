; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp1033.c_lgtdqcs001f_tuner_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp1033.c_lgtdqcs001f_tuner_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__*, %struct.dtv_frontend_properties }
%struct.TYPE_2__ = type { %struct.mantis_pci* }
%struct.mantis_pci = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.dtv_frontend_properties = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Write: I2C Transfer failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @lgtdqcs001f_tuner_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgtdqcs001f_tuner_set(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.mantis_pci*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mantis_pci*, %struct.mantis_pci** %15, align 8
  store %struct.mantis_pci* %16, %struct.mantis_pci** %5, align 8
  %17 = load %struct.mantis_pci*, %struct.mantis_pci** %5, align 8
  %18 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %17, i32 0, i32 0
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 97, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 16, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 250
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 127
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 131, i32* %35, align 8
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 192, i32* %36, align 4
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 1531000
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, 4
  store i32 %44, i32* %42, align 4
  br label %49

45:                                               ; preds = %1
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, -5
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %51 = call i64 @i2c_transfer(%struct.i2c_adapter* %50, %struct.i2c_msg* %9, i32 1)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @MANTIS_ERROR, align 4
  %55 = call i32 @dprintk(i32 %54, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %49
  %59 = call i32 @msleep_interruptible(i32 100)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
