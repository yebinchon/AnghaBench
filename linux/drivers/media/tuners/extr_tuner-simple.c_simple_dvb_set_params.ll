; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_dvb_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_dvb_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.tuner_simple_priv*, %struct.dtv_frontend_properties }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_4__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.tuner_simple_priv = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.dtv_frontend_properties = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @simple_dvb_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_dvb_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tuner_simple_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [5 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 2
  store %struct.dtv_frontend_properties* %15, %struct.dtv_frontend_properties** %4, align 8
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 1
  %27 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %26, align 8
  store %struct.tuner_simple_priv* %27, %struct.tuner_simple_priv** %8, align 8
  %28 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %29 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %114

36:                                               ; preds = %1
  %37 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %38 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %41 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @simple_dvb_configure(%struct.dvb_frontend* %43, i32* %45, i64 %46, i64 %47, i64 %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %114

55:                                               ; preds = %36
  %56 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %57 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  store i32 %59, i32* %60, align 16
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %63 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %66 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %70, align 8
  %72 = icmp ne i32 (%struct.dvb_frontend.1*)* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %55
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %77, align 8
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %80 = bitcast %struct.dvb_frontend* %79 to %struct.dvb_frontend.1*
  %81 = call i32 %78(%struct.dvb_frontend.1* %80)
  br label %82

82:                                               ; preds = %73, %55
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %91, align 8
  %93 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %94 = bitcast %struct.dvb_frontend* %93 to %struct.dvb_frontend.0*
  %95 = call i32 %92(%struct.dvb_frontend.0* %94, i32 1)
  br label %96

96:                                               ; preds = %88, %82
  %97 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %98 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %97, i32 0, i32 2
  %99 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_6__* %98, i32* %100, i32 4)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 4
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %106

105:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %114

106:                                              ; preds = %104
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %109 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %112 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %106, %105, %52, %33
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @simple_dvb_configure(%struct.dvb_frontend*, i32*, i64, i64, i64) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
