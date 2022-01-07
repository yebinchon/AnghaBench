; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_debug_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_debug_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc5000_priv = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"*** ADC envelope (0-1023) = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"*** Frequency error = %d Hz\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"*** Lock status (0-Wait, 1-Locked, 2-No-signal) = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"*** HW: V%d.%d, FW: V %d.%d.%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"*** Horizontal sync frequency = %d Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"*** Frame lines = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"*** Quality (0:<8dB, 7:>56dB) = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"*** Unweighted analog SNR = %d dB\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"*** Total gain = %d.%d dB\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"*** PLL lock status = 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xc5000_priv*)* @xc_debug_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xc_debug_dump(%struct.xc5000_priv* %0) #0 {
  %2 = alloca %struct.xc5000_priv*, align 8
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xc5000_priv* %0, %struct.xc5000_priv** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = call i32 @msleep(i32 100)
  %18 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %19 = call i32 @xc_get_adc_envelope(%struct.xc5000_priv* %18, i32* %3)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %23 = call i32 @xc_get_frequency_error(%struct.xc5000_priv* %22, i32* %4)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %27 = call i32 @xc_get_lock_status(%struct.xc5000_priv* %26, i32* %5)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %31 = call i32 @xc_get_version(%struct.xc5000_priv* %30, i32* %11, i32* %12, i32* %13, i32* %14)
  %32 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %33 = call i32 @xc_get_buildversion(%struct.xc5000_priv* %32, i32* %15)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %41 = call i32 @xc_get_hsync_freq(%struct.xc5000_priv* %40, i32* %6)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %45 = call i32 @xc_get_frame_lines(%struct.xc5000_priv* %44, i32* %7)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %49 = call i32 @xc_get_quality(%struct.xc5000_priv* %48, i32* %8)
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 7
  %52 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %54 = call i32 @xc_get_analogsnr(%struct.xc5000_priv* %53, i32* %9)
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 63
  %57 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %56)
  %58 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %59 = call i32 @xc_get_totalgain(%struct.xc5000_priv* %58, i32* %10)
  %60 = load i32, i32* %10, align 4
  %61 = sdiv i32 %60, 256
  %62 = load i32, i32* %10, align 4
  %63 = srem i32 %62, 256
  %64 = mul nsw i32 %63, 100
  %65 = sdiv i32 %64, 256
  %66 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %61, i32 %65)
  %67 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %68 = getelementptr inbounds %struct.xc5000_priv, %struct.xc5000_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %1
  %72 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %73 = load %struct.xc5000_priv*, %struct.xc5000_priv** %2, align 8
  %74 = getelementptr inbounds %struct.xc5000_priv, %struct.xc5000_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @xc5000_readreg(%struct.xc5000_priv* %72, i64 %75, i32* %16)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %16, align 4
  %80 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %81, %1
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @xc_get_adc_envelope(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

declare dso_local i32 @xc_get_frequency_error(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_lock_status(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_version(%struct.xc5000_priv*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @xc_get_buildversion(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_hsync_freq(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_frame_lines(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_quality(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_analogsnr(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc_get_totalgain(%struct.xc5000_priv*, i32*) #1

declare dso_local i32 @xc5000_readreg(%struct.xc5000_priv*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
