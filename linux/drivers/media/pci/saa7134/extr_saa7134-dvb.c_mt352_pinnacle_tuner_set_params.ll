; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_mt352_pinnacle_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_mt352_pinnacle_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.dtv_frontend_properties = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }
%struct.v4l2_frequency = type { i32, i32, i64 }

@__const.mt352_pinnacle_tuner_set_params.off = private unnamed_addr constant [2 x i32] [i32 0, i32 241], align 4
@__const.mt352_pinnacle_tuner_set_params.on = private unnamed_addr constant [2 x i32] [i32 0, i32 113], align 4
@V4L2_TUNER_DIGITAL_TV = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@antenna_pwr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt352_pinnacle_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt352_pinnacle_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca %struct.saa7134_dev*, align 8
  %8 = alloca %struct.v4l2_frequency, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %3, align 8
  %11 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([2 x i32]* @__const.mt352_pinnacle_tuner_set_params.off to i8*), i64 8, i1 false)
  %12 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast ([2 x i32]* @__const.mt352_pinnacle_tuner_set_params.on to i8*), i64 8, i1 false)
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  store i32 67, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32* %15, i32** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i32 8, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %21, align 8
  store %struct.saa7134_dev* %22, %struct.saa7134_dev** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %8, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @V4L2_TUNER_DIGITAL_TV, align 4
  %25 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %8, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 1000
  %30 = mul nsw i32 %29, 16
  %31 = sdiv i32 %30, 1000
  %32 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %1
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %41, align 8
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %44 = bitcast %struct.dvb_frontend* %43 to %struct.dvb_frontend.0*
  %45 = call i32 %42(%struct.dvb_frontend.0* %44, i32 1)
  br label %46

46:                                               ; preds = %38, %1
  %47 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %48 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %47, i32 0, i32 0
  %49 = call i32 @i2c_transfer(i32* %48, %struct.i2c_msg* %6, i32 1)
  %50 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %51 = load i32, i32* @tuner, align 4
  %52 = load i32, i32* @s_frequency, align 4
  %53 = call i32 @saa_call_all(%struct.saa7134_dev* %50, i32 %51, i32 %52, %struct.v4l2_frequency* %8)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  store i32* %54, i32** %55, align 8
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %46
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %63 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %64, align 8
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %67 = bitcast %struct.dvb_frontend* %66 to %struct.dvb_frontend.0*
  %68 = call i32 %65(%struct.dvb_frontend.0* %67, i32 1)
  br label %69

69:                                               ; preds = %61, %46
  %70 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %71 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %70, i32 0, i32 0
  %72 = call i32 @i2c_transfer(i32* %71, %struct.i2c_msg* %6, i32 1)
  %73 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %74 = load i32, i32* @antenna_pwr, align 4
  %75 = call i32 @pinnacle_antenna_pwr(%struct.saa7134_dev* %73, i32 %74)
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %77 = call i32 @mt352_pinnacle_init(%struct.dvb_frontend* %76)
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, %struct.v4l2_frequency*) #2

declare dso_local i32 @pinnacle_antenna_pwr(%struct.saa7134_dev*, i32) #2

declare dso_local i32 @mt352_pinnacle_init(%struct.dvb_frontend*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
