; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl111sf_demod_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl111sf_demod_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl111sf_demod_state* }
%struct.mxl111sf_demod_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mxl111sf_demod_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_demod_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mxl111sf_demod_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %11, align 8
  store %struct.mxl111sf_demod_state* %12, %struct.mxl111sf_demod_state** %6, align 8
  %13 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %6, align 8
  %14 = call i32 @mxl111sf_demod_calc_snr(%struct.mxl111sf_demod_state* %13, i32* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %6, align 8
  %21 = call i32 @mxl1x1sf_demod_get_tps_modulation(%struct.mxl111sf_demod_state* %20, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %72

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %67 [
    i32 128, label %28
    i32 130, label %41
    i32 129, label %54
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, 1300
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 %32, 44
  %34 = call i32 @min(i32 65535, i32 %33)
  br label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 38
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i32 [ %34, %31 ], [ %37, %35 ]
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %71

41:                                               ; preds = %26
  %42 = load i32, i32* %9, align 4
  %43 = icmp sge i32 %42, 1500
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 38
  %47 = call i32 @min(i32 65535, i32 %46)
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 33
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i32 [ %47, %44 ], [ %50, %48 ]
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %71

54:                                               ; preds = %26
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %55, 2000
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 29
  %60 = call i32 @min(i32 65535, i32 %59)
  br label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, 25
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i32 [ %60, %57 ], [ %63, %61 ]
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  br label %71

67:                                               ; preds = %26
  %68 = load i32*, i32** %5, align 8
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %64, %51, %38
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %67, %24, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mxl111sf_demod_calc_snr(%struct.mxl111sf_demod_state*, i32*) #1

declare dso_local i32 @mxl1x1sf_demod_get_tps_modulation(%struct.mxl111sf_demod_state*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
