; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl1x1sf_demod_get_tps_code_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl1x1sf_demod_get_tps_code_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_demod_state = type { i32 }

@V6_CODE_RATE_TPS_REG = common dso_local global i32 0, align 4
@V6_CODE_RATE_TPS_MASK = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@FEC_5_6 = common dso_local global i32 0, align 4
@FEC_7_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_demod_state*, i32*)* @mxl1x1sf_demod_get_tps_code_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl1x1sf_demod_get_tps_code_rate(%struct.mxl111sf_demod_state* %0, i32* %1) #0 {
  %3 = alloca %struct.mxl111sf_demod_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxl111sf_demod_state* %0, %struct.mxl111sf_demod_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %3, align 8
  %8 = load i32, i32* @V6_CODE_RATE_TPS_REG, align 4
  %9 = call i32 @mxl111sf_demod_read_reg(%struct.mxl111sf_demod_state* %7, i32 %8, i32* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @mxl_fail(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @V6_CODE_RATE_TPS_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %33 [
    i32 0, label %18
    i32 1, label %21
    i32 2, label %24
    i32 3, label %27
    i32 4, label %30
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @FEC_1_2, align 4
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  br label %33

21:                                               ; preds = %14
  %22 = load i32, i32* @FEC_2_3, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %33

24:                                               ; preds = %14
  %25 = load i32, i32* @FEC_3_4, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %33

27:                                               ; preds = %14
  %28 = load i32, i32* @FEC_5_6, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %33

30:                                               ; preds = %14
  %31 = load i32, i32* @FEC_7_8, align 4
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %14, %30, %27, %24, %21, %18
  br label %34

34:                                               ; preds = %33, %13
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @mxl111sf_demod_read_reg(%struct.mxl111sf_demod_state*, i32, i32*) #1

declare dso_local i64 @mxl_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
