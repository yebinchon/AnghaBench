; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.tda_state* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tda_state = type { i32, i32 }

@HF_DVBT_6MHZ = common dso_local global i32 0, align 4
@HF_DVBT_7MHZ = common dso_local global i32 0, align 4
@HF_DVBT_8MHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HF_DVBC_6MHZ = common dso_local global i32 0, align 4
@HF_DVBC_7MHZ = common dso_local global i32 0, align 4
@HF_DVBC_8MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.tda_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.tda_state*, %struct.tda_state** %10, align 8
  store %struct.tda_state* %11, %struct.tda_state** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %25 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %53 [
    i32 129, label %27
    i32 128, label %27
    i32 131, label %39
    i32 130, label %39
  ]

27:                                               ; preds = %1, %1
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %35 [
    i32 6000000, label %29
    i32 7000000, label %31
    i32 8000000, label %33
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @HF_DVBT_6MHZ, align 4
  store i32 %30, i32* %6, align 4
  br label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @HF_DVBT_7MHZ, align 4
  store i32 %32, i32* %6, align 4
  br label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @HF_DVBT_8MHZ, align 4
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %83

38:                                               ; preds = %33, %31, %29
  br label %56

39:                                               ; preds = %1, %1
  %40 = load i32, i32* %7, align 4
  %41 = icmp sle i32 %40, 6000000
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @HF_DVBC_6MHZ, align 4
  store i32 %43, i32* %6, align 4
  br label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %45, 7000000
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @HF_DVBC_7MHZ, align 4
  store i32 %48, i32* %6, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @HF_DVBC_8MHZ, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %42
  br label %56

53:                                               ; preds = %1
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %83

56:                                               ; preds = %52, %38
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %59 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %60 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @RFTrackingFiltersCorrection(%struct.tda_state* %58, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %81

66:                                               ; preds = %57
  %67 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %68 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %69 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ChannelConfiguration(%struct.tda_state* %67, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %81

76:                                               ; preds = %66
  %77 = load %struct.tda_state*, %struct.tda_state** %4, align 8
  %78 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @msleep(i32 %79)
  br label %81

81:                                               ; preds = %76, %75, %65
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %53, %35
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @RFTrackingFiltersCorrection(%struct.tda_state*, i32) #1

declare dso_local i32 @ChannelConfiguration(%struct.tda_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
