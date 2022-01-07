; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_eeprom_init_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_eeprom_init_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@EEPROM_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Writing EEPROM data into SRAM\0A\00", align 1
@IPW_EEPROM_IMAGE_SIZE = common dso_local global i32 0, align 4
@IPW_EEPROM_DATA = common dso_local global i64 0, align 8
@IPW_EEPROM_LOAD_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Enabling FW initialization of SRAM\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_eeprom_init_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_eeprom_init_sram(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %4 = call i32 @IPW_DEBUG_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @EEPROM_VERSION, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %32, %12
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IPW_EEPROM_IMAGE_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %20 = load i64, i64* @IPW_EEPROM_DATA, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ipw_write8(%struct.ipw_priv* %19, i64 %23, i32 %30)
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %37 = load i32, i32* @IPW_EEPROM_LOAD_DISABLE, align 4
  %38 = call i32 @ipw_write32(%struct.ipw_priv* %36, i32 %37, i32 0)
  br label %44

39:                                               ; preds = %1
  %40 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %42 = load i32, i32* @IPW_EEPROM_LOAD_DISABLE, align 4
  %43 = call i32 @ipw_write32(%struct.ipw_priv* %41, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %39, %35
  %45 = call i32 @IPW_DEBUG_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @IPW_DEBUG_TRACE(i8*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @ipw_write8(%struct.ipw_priv*, i64, i32) #1

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
