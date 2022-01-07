; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc_debug_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc_debug_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc4000_priv = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"*** ADC envelope (0-1023) = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"*** Frequency error = %d Hz\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"*** Lock status (0-Wait, 1-Locked, 2-No-signal) = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"*** HW: V%02x.%02x, FW: V%02x.%02x\0A\00", align 1
@XC4000_DTV6 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"*** Horizontal sync frequency = %d Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"*** Frame lines = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"*** Quality (0:<8dB, 7:>56dB) = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"*** Signal level = -%ddB (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"*** Noise level = %ddB (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xc4000_priv*)* @xc_debug_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xc_debug_dump(%struct.xc4000_priv* %0) #0 {
  %2 = alloca %struct.xc4000_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xc4000_priv* %0, %struct.xc4000_priv** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %16 = call i32 @xc_get_adc_envelope(%struct.xc4000_priv* %15, i32* %3)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %20 = call i32 @xc_get_frequency_error(%struct.xc4000_priv* %19, i32* %4)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %24 = call i32 @xc_get_lock_status(%struct.xc4000_priv* %23, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %28 = call i32 @xc_get_version(%struct.xc4000_priv* %27, i32* %11, i32* %12, i32* %13, i32* %14)
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %35 = getelementptr inbounds %struct.xc4000_priv, %struct.xc4000_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XC4000_DTV6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %1
  %40 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %41 = call i32 @xc_get_hsync_freq(%struct.xc4000_priv* %40, i32* %6)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %45 = call i32 @xc_get_frame_lines(%struct.xc4000_priv* %44, i32* %7)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %39, %1
  %49 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %50 = call i32 @xc_get_quality(%struct.xc4000_priv* %49, i32* %8)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %54 = call i32 @xc_get_signal_level(%struct.xc4000_priv* %53, i32* %9)
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %60 = call i32 @xc_get_noise_level(%struct.xc4000_priv* %59, i32* %10)
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %61, 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @xc_get_adc_envelope(%struct.xc4000_priv*, i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

declare dso_local i32 @xc_get_frequency_error(%struct.xc4000_priv*, i32*) #1

declare dso_local i32 @xc_get_lock_status(%struct.xc4000_priv*, i32*) #1

declare dso_local i32 @xc_get_version(%struct.xc4000_priv*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @xc_get_hsync_freq(%struct.xc4000_priv*, i32*) #1

declare dso_local i32 @xc_get_frame_lines(%struct.xc4000_priv*, i32*) #1

declare dso_local i32 @xc_get_quality(%struct.xc4000_priv*, i32*) #1

declare dso_local i32 @xc_get_signal_level(%struct.xc4000_priv*, i32*) #1

declare dso_local i32 @xc_get_noise_level(%struct.xc4000_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
