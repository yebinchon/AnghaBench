; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_dvb_calc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_dvb_calc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv*, %struct.dtv_frontend_properties }
%struct.tuner_simple_priv = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dtv_frontend_properties = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32)* @simple_dvb_calc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_dvb_calc_regs(%struct.dvb_frontend* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tuner_simple_priv*, align 8
  %12 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  store %struct.dtv_frontend_properties* %14, %struct.dtv_frontend_properties** %8, align 8
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %22, align 8
  store %struct.tuner_simple_priv* %23, %struct.tuner_simple_priv** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %59

29:                                               ; preds = %3
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @simple_dvb_configure(%struct.dvb_frontend* %30, i32* %32, i64 %33, i32 %36, i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %59

44:                                               ; preds = %29
  %45 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %11, align 8
  %46 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %11, align 8
  %53 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %11, align 8
  %58 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  store i32 5, i32* %4, align 4
  br label %59

59:                                               ; preds = %44, %41, %26
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @simple_dvb_configure(%struct.dvb_frontend*, i32*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
