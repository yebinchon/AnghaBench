; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_eeprom_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_eeprom_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath9k_eeprom_ctx = type { i32, %struct.ath_hw* }

@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ath9k_eeprom_request_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EEPROM request failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to load EEPROM file %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i8*)* @ath9k_eeprom_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_eeprom_request(%struct.ath_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ath9k_eeprom_ctx, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  %11 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  store %struct.ath_hw* %11, %struct.ath_hw** %7, align 8
  %12 = getelementptr inbounds %struct.ath9k_eeprom_ctx, %struct.ath9k_eeprom_ctx* %6, i32 0, i32 0
  %13 = call i32 @init_completion(i32* %12)
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 1
  %16 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %17 = getelementptr inbounds %struct.ath9k_eeprom_ctx, %struct.ath9k_eeprom_ctx* %6, i32 0, i32 1
  store %struct.ath_hw* %16, %struct.ath_hw** %17, align 8
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @ath9k_eeprom_request_cb, align 4
  %25 = call i32 @request_firmware_nowait(i32 %18, i32 1, i8* %19, i32 %22, i32 %23, %struct.ath9k_eeprom_ctx* %6, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %30 = call i32 @ath9k_hw_common(%struct.ath_hw* %29)
  %31 = call i32 (i32, i8*, ...) @ath_err(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %48

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.ath9k_eeprom_ctx, %struct.ath9k_eeprom_ctx* %6, i32 0, i32 0
  %35 = call i32 @wait_for_completion(i32* %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %42 = call i32 @ath9k_hw_common(%struct.ath_hw* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i32, i8*, ...) @ath_err(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %40, %28
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.ath9k_eeprom_ctx*, i32) #1

declare dso_local i32 @ath_err(i32, i8*, ...) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
