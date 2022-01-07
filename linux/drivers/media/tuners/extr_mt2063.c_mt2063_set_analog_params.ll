; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_mt2063_set_analog_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_mt2063_set_analog_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mt2063_state* }
%struct.mt2063_state = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MT2063_OFFAIR_ANALOG = common dso_local global i32 0, align 4
@MT2063_CABLE_ANALOG = common dso_local global i32 0, align 4
@V4L2_STD_MN = common dso_local global i32 0, align 4
@V4L2_STD_PAL_G = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Tuning to frequency: %d, bandwidth %d, foffset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @mt2063_set_analog_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2063_set_analog_params(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.analog_parameters*, align 8
  %6 = alloca %struct.mt2063_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.mt2063_state*, %struct.mt2063_state** %14, align 8
  store %struct.mt2063_state* %15, %struct.mt2063_state** %6, align 8
  %16 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mt2063_state*, %struct.mt2063_state** %6, align 8
  %18 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = call i32 @mt2063_init(%struct.dvb_frontend* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %3, align 4
  br label %115

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %31 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %59 [
    i32 128, label %33
    i32 129, label %38
  ]

33:                                               ; preds = %29
  store i32 38900000, i32* %7, align 4
  store i32 8000000, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @MT2063_OFFAIR_ANALOG, align 4
  store i32 %37, i32* %11, align 4
  br label %62

38:                                               ; preds = %29
  %39 = load i32, i32* @MT2063_CABLE_ANALOG, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %41 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @V4L2_STD_MN, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 38900000, i32* %7, align 4
  store i32 6000000, i32* %9, align 4
  store i32 -1250000, i32* %8, align 4
  br label %58

48:                                               ; preds = %38
  %49 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %50 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @V4L2_STD_PAL_G, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 38900000, i32* %7, align 4
  store i32 7000000, i32* %9, align 4
  store i32 -1250000, i32* %8, align 4
  br label %57

56:                                               ; preds = %48
  store i32 38900000, i32* %7, align 4
  store i32 8000000, i32* %9, align 4
  store i32 -1250000, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %47
  br label %62

59:                                               ; preds = %29
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %115

62:                                               ; preds = %58, %33
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sdiv i32 %65, 2
  %67 = add nsw i32 %64, %66
  %68 = sub nsw i32 %63, %67
  store i32 %68, i32* %10, align 4
  %69 = load %struct.mt2063_state*, %struct.mt2063_state** %6, align 8
  %70 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 125000, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.mt2063_state*, %struct.mt2063_state** %6, align 8
  %74 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 750000
  %78 = load %struct.mt2063_state*, %struct.mt2063_state** %6, align 8
  %79 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load %struct.mt2063_state*, %struct.mt2063_state** %6, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @MT2063_SetReceiverMode(%struct.mt2063_state* %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %62
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %3, align 4
  br label %115

88:                                               ; preds = %62
  %89 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %90 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  %95 = load %struct.mt2063_state*, %struct.mt2063_state** %6, align 8
  %96 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %97 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sdiv i32 %100, 2
  %102 = add nsw i32 %99, %101
  %103 = add nsw i32 %98, %102
  %104 = call i32 @MT2063_Tune(%struct.mt2063_state* %95, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %88
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %3, align 4
  br label %115

109:                                              ; preds = %88
  %110 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %111 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mt2063_state*, %struct.mt2063_state** %6, align 8
  %114 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %107, %86, %59, %26
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @mt2063_init(%struct.dvb_frontend*) #1

declare dso_local i32 @MT2063_SetReceiverMode(%struct.mt2063_state*, i32) #1

declare dso_local i32 @MT2063_Tune(%struct.mt2063_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
