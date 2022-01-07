; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_dm04_lme2510_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_dm04_lme2510_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32* }
%struct.dvb_usb_device = type { i32 }
%struct.lme2510_state = type { i32 }

@dm04_lme2510_tuner.tun_msg = internal constant [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TDA8263\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"IX2505V\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"DVB_PLL_OPERA\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"RS2000\00", align 1
@tda826x_attach = common dso_local global i32 0, align 4
@ix2505v_attach = common dso_local global i32 0, align 4
@lme_tuner = common dso_local global i32 0, align 4
@dvb_pll_attach = common dso_local global i32 0, align 4
@DVB_PLL_OPERA1 = common dso_local global i32 0, align 4
@ts2020_attach = common dso_local global i32 0, align 4
@ts2020_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"TUN Found %s tuner\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"TUN No tuner found\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"INT Unable to start Interrupt Service\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dm04_lme2510_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm04_lme2510_tuner(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.lme2510_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %7)
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %4, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %10 = call %struct.lme2510_state* @adap_to_priv(%struct.dvb_usb_adapter* %9)
  store %struct.lme2510_state* %10, %struct.lme2510_state** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %12 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %79 [
    i32 131, label %14
    i32 128, label %30
    i32 129, label %46
    i32 130, label %63
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @tda826x_attach, align 4
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 0
  %23 = call i32 (i32, i32, i32, i32*, ...) @dvb_attach(i32 %15, i32 %20, i32 96, i32* %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %27 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %14
  br label %80

30:                                               ; preds = %1
  %31 = load i32, i32* @ix2505v_attach, align 4
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %37, i32 0, i32 0
  %39 = call i32 (i32, i32, i32, i32*, ...) @dvb_attach(i32 %31, i32 %36, i32 ptrtoint (i32* @lme_tuner to i32), i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %43 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %30
  br label %80

46:                                               ; preds = %1
  %47 = load i32, i32* @dvb_pll_attach, align 4
  %48 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %53, i32 0, i32 0
  %55 = load i32, i32* @DVB_PLL_OPERA1, align 4
  %56 = call i32 (i32, i32, i32, i32*, ...) @dvb_attach(i32 %47, i32 %52, i32 96, i32* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %60 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %46
  br label %80

63:                                               ; preds = %1
  %64 = load i32, i32* @ts2020_attach, align 4
  %65 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %70, i32 0, i32 0
  %72 = call i32 (i32, i32, i32, i32*, ...) @dvb_attach(i32 %64, i32 %69, i32 ptrtoint (i32* @ts2020_config to i32), i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %76 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %63
  br label %80

79:                                               ; preds = %1
  br label %80

80:                                               ; preds = %79, %78, %62, %45, %29
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [5 x i8*], [5 x i8*]* @dm04_lme2510_tuner.tun_msg, i64 0, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  br label %93

89:                                               ; preds = %80
  %90 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %104

93:                                               ; preds = %83
  %94 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %95 = call i32 @lme2510_int_read(%struct.dvb_usb_adapter* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %98, %89
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.lme2510_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dvb_attach(i32, i32, i32, i32*, ...) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @lme2510_int_read(%struct.dvb_usb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
