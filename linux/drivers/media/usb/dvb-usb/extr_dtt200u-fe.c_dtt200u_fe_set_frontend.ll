; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtt200u_fe_state*, %struct.dtv_frontend_properties }
%struct.dtt200u_fe_state = type { i32*, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@SET_BANDWIDTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SET_RF_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dtt200u_fe_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtt200u_fe_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.dtt200u_fe_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %10, align 8
  store %struct.dtt200u_fe_state* %11, %struct.dtt200u_fe_state** %4, align 8
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 250000
  store i32 %15, i32* %6, align 4
  %16 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %17 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* @SET_BANDWIDTH, align 4
  %20 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %21 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %42 [
    i32 8000000, label %27
    i32 7000000, label %32
    i32 6000000, label %37
  ]

27:                                               ; preds = %1
  %28 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %29 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 8, i32* %31, align 4
  br label %45

32:                                               ; preds = %1
  %33 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %34 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 7, i32* %36, align 4
  br label %45

37:                                               ; preds = %1
  %38 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %39 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 6, i32* %41, align 4
  br label %45

42:                                               ; preds = %1
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %86

45:                                               ; preds = %37, %32, %27
  %46 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %47 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %50 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @dvb_usb_generic_write(i32 %48, i32* %51, i32 2)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %86

56:                                               ; preds = %45
  %57 = load i32, i32* @SET_RF_FREQ, align 4
  %58 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %59 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 255
  %64 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %65 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %72 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %70, i32* %74, align 4
  %75 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %76 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %79 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @dvb_usb_generic_write(i32 %77, i32* %80, i32 3)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %56
  br label %86

85:                                               ; preds = %56
  br label %86

86:                                               ; preds = %85, %84, %55, %42
  %87 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %4, align 8
  %88 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_usb_generic_write(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
