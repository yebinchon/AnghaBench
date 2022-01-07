; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_get_max_rxsz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_get_max_rxsz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }

@ST_WDC_TRANSPORT_CHUNK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not read max RX size\0A\00", align 1
@AR5523_SANE_RXBUFSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Bad rxbufsz from device. Using %d instead\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Max RX buf size: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*)* @ar5523_get_max_rxsz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_get_max_rxsz(%struct.ar5523* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar5523*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar5523* %0, %struct.ar5523** %3, align 8
  %6 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %7 = load i32, i32* @ST_WDC_TRANSPORT_CHUNK_SIZE, align 4
  %8 = call i32 @ar5523_get_status(%struct.ar5523* %6, i32 %7, i32* %5, i32 4)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %13 = call i32 (%struct.ar5523*, i8*, ...) @ar5523_err(%struct.ar5523* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  %18 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %19 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %21 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %26 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AR5523_SANE_RXBUFSZ, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24, %15
  %31 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %32 = load i32, i32* @AR5523_SANE_RXBUFSZ, align 4
  %33 = call i32 (%struct.ar5523*, i8*, ...) @ar5523_err(%struct.ar5523* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @AR5523_SANE_RXBUFSZ, align 4
  %35 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %36 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %39 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %40 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ar5523_dbg(%struct.ar5523* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ar5523_get_status(%struct.ar5523*, i32, i32*, i32) #1

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
