; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_dm04_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_dm04_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.lme2510_state = type { i32 (%struct.dvb_frontend.0*, i64*)*, i32 }
%struct.dvb_frontend.0 = type opaque

@FE_SCALE_RELATIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64*)* @dm04_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm04_read_signal_strength(%struct.dvb_frontend* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca %struct.lme2510_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %6, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = call %struct.lme2510_state* @fe_to_priv(%struct.dvb_frontend* %10)
  store %struct.lme2510_state* %11, %struct.lme2510_state** %7, align 8
  %12 = load %struct.lme2510_state*, %struct.lme2510_state** %7, align 8
  %13 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %12, i32 0, i32 0
  %14 = load i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.0*, i64*)** %13, align 8
  %15 = icmp ne i32 (%struct.dvb_frontend.0*, i64*)* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.lme2510_state*, %struct.lme2510_state** %7, align 8
  %18 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load %struct.lme2510_state*, %struct.lme2510_state** %7, align 8
  %23 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %22, i32 0, i32 0
  %24 = load i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.0*, i64*)** %23, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %26 = bitcast %struct.dvb_frontend* %25 to %struct.dvb_frontend.0*
  %27 = load i64*, i64** %5, align 8
  %28 = call i32 %24(%struct.dvb_frontend.0* %26, i64* %27)
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %16, %2
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FE_SCALE_RELATIVE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %5, align 8
  store i64 %46, i64* %47, align 8
  br label %50

48:                                               ; preds = %29
  %49 = load i64*, i64** %5, align 8
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %48, %39
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.lme2510_state* @fe_to_priv(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
