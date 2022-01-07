; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_configure_tda827x_fe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_configure_tda827x_fe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32 }
%struct.tda1004x_config = type { i32, i64 }
%struct.tda827x_config = type { i32 }
%struct.vb2_dvb_frontend = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@tda10046_attach = common dso_local global i32 0, align 4
@tda8290_i2c_gate_ctrl = common dso_local global i32 0, align 4
@tda827x_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no tda827x tuner found at addr: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.tda1004x_config*, %struct.tda827x_config*)* @configure_tda827x_fe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_tda827x_fe(%struct.saa7134_dev* %0, %struct.tda1004x_config* %1, %struct.tda827x_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.tda1004x_config*, align 8
  %7 = alloca %struct.tda827x_config*, align 8
  %8 = alloca %struct.vb2_dvb_frontend*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store %struct.tda1004x_config* %1, %struct.tda1004x_config** %6, align 8
  store %struct.tda827x_config* %2, %struct.tda827x_config** %7, align 8
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 1
  %11 = call %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(i32* %10, i32 1)
  store %struct.vb2_dvb_frontend* %11, %struct.vb2_dvb_frontend** %8, align 8
  %12 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %8, align 8
  %13 = icmp ne %struct.vb2_dvb_frontend* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load i32, i32* @tda10046_attach, align 4
  %19 = load %struct.tda1004x_config*, %struct.tda1004x_config** %6, align 8
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %21 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %20, i32 0, i32 0
  %22 = call %struct.TYPE_6__* (i32, ...) @dvb_attach(i32 %18, %struct.tda1004x_config* %19, i32* %21)
  %23 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %8, align 8
  %24 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %25, align 8
  %26 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %8, align 8
  %27 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %64

31:                                               ; preds = %17
  %32 = load %struct.tda1004x_config*, %struct.tda1004x_config** %6, align 8
  %33 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* @tda8290_i2c_gate_ctrl, align 4
  %38 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %8, align 8
  %39 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %31
  %45 = load i32, i32* @tda827x_attach, align 4
  %46 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %8, align 8
  %47 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.tda1004x_config*, %struct.tda1004x_config** %6, align 8
  %51 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %54 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %53, i32 0, i32 0
  %55 = load %struct.tda827x_config*, %struct.tda827x_config** %7, align 8
  %56 = call %struct.TYPE_6__* (i32, ...) @dvb_attach(i32 %45, %struct.TYPE_6__* %49, i32 %52, i32* %54, %struct.tda827x_config* %55)
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %67

59:                                               ; preds = %44
  %60 = load %struct.tda1004x_config*, %struct.tda1004x_config** %6, align 8
  %61 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %17
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %58, %14
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @dvb_attach(i32, ...) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
