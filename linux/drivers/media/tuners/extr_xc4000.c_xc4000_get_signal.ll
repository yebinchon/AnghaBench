; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc4000_get_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc4000_get_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.xc4000_priv* }
%struct.xc4000_priv = type { i64, i32 }

@XREG_SIGNAL_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Signal strength: -%ddB (%05d)\0A\00", align 1
@XC4000_DTV6 = common dso_local global i64 0, align 8
@XC4000_DTV7 = common dso_local global i64 0, align 8
@XC4000_DTV7_8 = common dso_local global i64 0, align 8
@XC4000_DTV8 = common dso_local global i64 0, align 8
@XREG_NOISE_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Noise level: %ddB (%05d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @xc4000_get_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc4000_get_signal(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xc4000_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.xc4000_priv*, %struct.xc4000_priv** %9, align 8
  store %struct.xc4000_priv* %10, %struct.xc4000_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %12 = getelementptr inbounds %struct.xc4000_priv, %struct.xc4000_priv* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %15 = load i32, i32* @XREG_SIGNAL_LEVEL, align 4
  %16 = call i32 @xc4000_readreg(%struct.xc4000_priv* %14, i32 %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %18 = getelementptr inbounds %struct.xc4000_priv, %struct.xc4000_priv* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %90

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tuner_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %29 = getelementptr inbounds %struct.xc4000_priv, %struct.xc4000_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XC4000_DTV6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %51, label %33

33:                                               ; preds = %23
  %34 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %35 = getelementptr inbounds %struct.xc4000_priv, %struct.xc4000_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XC4000_DTV7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %41 = getelementptr inbounds %struct.xc4000_priv, %struct.xc4000_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XC4000_DTV7_8, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %47 = getelementptr inbounds %struct.xc4000_priv, %struct.xc4000_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XC4000_DTV8, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39, %33, %23
  br label %75

52:                                               ; preds = %45
  %53 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %54 = getelementptr inbounds %struct.xc4000_priv, %struct.xc4000_priv* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %57 = load i32, i32* @XREG_NOISE_LEVEL, align 4
  %58 = call i32 @xc4000_readreg(%struct.xc4000_priv* %56, i32 %57, i32* %6)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.xc4000_priv*, %struct.xc4000_priv** %5, align 8
  %60 = getelementptr inbounds %struct.xc4000_priv, %struct.xc4000_priv* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %62, 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @tuner_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp sge i32 %66, 8192
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %74

69:                                               ; preds = %52
  %70 = load i32, i32* %6, align 4
  %71 = xor i32 %70, -1
  %72 = shl i32 %71, 3
  %73 = and i32 %72, 65535
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %69, %68
  br label %90

75:                                               ; preds = %51
  %76 = load i32, i32* %6, align 4
  %77 = icmp sle i32 %76, 12800
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 65535, i32* %6, align 4
  br label %89

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 28986
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 %84, 12800
  %86 = xor i32 %85, -1
  %87 = shl i32 %86, 2
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %83, %82
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %89, %74, %22
  %91 = load i32, i32* %6, align 4
  %92 = load i32*, i32** %4, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xc4000_readreg(%struct.xc4000_priv*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
