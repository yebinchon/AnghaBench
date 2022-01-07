; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.mxl5007t_state*, %struct.dtv_frontend_properties }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.mxl5007t_state = type { i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32 }

@MxL_MODE_ATSC = common dso_local global i32 0, align 4
@MxL_BW_6MHz = common dso_local global i32 0, align 4
@MxL_MODE_CABLE = common dso_local global i32 0, align 4
@MxL_MODE_DVBT = common dso_local global i32 0, align 4
@MxL_BW_7MHz = common dso_local global i32 0, align 4
@MxL_BW_8MHz = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"modulation type not supported!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mxl5007t_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl5007t_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxl5007t_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 2
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %4, align 8
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %17, align 8
  store %struct.mxl5007t_state* %18, %struct.mxl5007t_state** %6, align 8
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %44 [
    i32 131, label %23
    i32 130, label %26
    i32 129, label %29
    i32 128, label %29
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* @MxL_MODE_ATSC, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @MxL_BW_6MHz, align 4
  store i32 %25, i32* %7, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load i32, i32* @MxL_MODE_CABLE, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @MxL_BW_6MHz, align 4
  store i32 %28, i32* %7, align 4
  br label %48

29:                                               ; preds = %1, %1
  %30 = load i32, i32* @MxL_MODE_DVBT, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %40 [
    i32 6000000, label %34
    i32 7000000, label %36
    i32 8000000, label %38
  ]

34:                                               ; preds = %29
  %35 = load i32, i32* @MxL_BW_6MHz, align 4
  store i32 %35, i32* %7, align 4
  br label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @MxL_BW_7MHz, align 4
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %29
  %39 = load i32, i32* @MxL_BW_8MHz, align 4
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %110

43:                                               ; preds = %38, %36, %34
  br label %48

44:                                               ; preds = %1
  %45 = call i32 @mxl_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %110

48:                                               ; preds = %43, %26, %23
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %57, align 8
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %60 = bitcast %struct.dvb_frontend* %59 to %struct.dvb_frontend.0*
  %61 = call i32 %58(%struct.dvb_frontend.0* %60, i32 1)
  br label %62

62:                                               ; preds = %54, %48
  %63 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %64 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %63, i32 0, i32 1
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @mxl5007t_tuner_init(%struct.mxl5007t_state* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @mxl_fail(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %91

73:                                               ; preds = %62
  %74 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @mxl5007t_tuner_rf_tune(%struct.mxl5007t_state* %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @mxl_fail(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %91

82:                                               ; preds = %73
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %85 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %90 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %82, %81, %72
  %92 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %93 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %96 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %97, align 8
  %99 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %103, align 8
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %106 = bitcast %struct.dvb_frontend* %105 to %struct.dvb_frontend.0*
  %107 = call i32 %104(%struct.dvb_frontend.0* %106, i32 0)
  br label %108

108:                                              ; preds = %100, %91
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %44, %40
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @mxl_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mxl5007t_tuner_init(%struct.mxl5007t_state*, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl5007t_tuner_rf_tune(%struct.mxl5007t_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
