; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1x93.c_ves1x93_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1x93.c_ves1x93_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ves1x93_state* }
%struct.ves1x93_state = type { i64, i64 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i64 }

@INVERSION_AUTO = common dso_local global i64 0, align 8
@INVERSION_OFF = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @ves1x93_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1x93_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.ves1x93_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.ves1x93_state*, %struct.ves1x93_state** %8, align 8
  store %struct.ves1x93_state* %9, %struct.ves1x93_state** %5, align 8
  %10 = load %struct.ves1x93_state*, %struct.ves1x93_state** %5, align 8
  %11 = call i32 @ves1x93_readreg(%struct.ves1x93_state* %10, i32 10)
  %12 = shl i32 %11, 1
  %13 = trunc i32 %12 to i8
  %14 = sext i8 %13 to i32
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 1000
  %21 = sdiv i32 %20, 8
  %22 = mul nsw i32 %16, %21
  %23 = sdiv i32 %22, 16
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ves1x93_state*, %struct.ves1x93_state** %5, align 8
  %25 = getelementptr inbounds %struct.ves1x93_state, %struct.ves1x93_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %26, %28
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ves1x93_state*, %struct.ves1x93_state** %5, align 8
  %33 = getelementptr inbounds %struct.ves1x93_state, %struct.ves1x93_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INVERSION_AUTO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %2
  %38 = load %struct.ves1x93_state*, %struct.ves1x93_state** %5, align 8
  %39 = call i32 @ves1x93_readreg(%struct.ves1x93_state* %38, i32 15)
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @INVERSION_OFF, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @INVERSION_ON, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %2
  %51 = load %struct.ves1x93_state*, %struct.ves1x93_state** %5, align 8
  %52 = call i32 @ves1x93_get_fec(%struct.ves1x93_state* %51)
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  ret i32 0
}

declare dso_local i32 @ves1x93_readreg(%struct.ves1x93_state*, i32) #1

declare dso_local i32 @ves1x93_get_fec(%struct.ves1x93_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
