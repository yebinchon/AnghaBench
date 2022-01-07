; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_write_data_to_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_write_data_to_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"host_to_card, write iomem\09(%d) failed: %d\0A\00", align 1
@CONFIGURATION_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"write CFG reg failed\0A\00", align 1
@MAX_WRITE_IOMEM_RETRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i32*, i64, i64)* @mwifiex_write_data_to_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_write_data_to_card(%struct.mwifiex_adapter* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %44, %4
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @mwifiex_write_data_sync(%struct.mwifiex_adapter* %13, i32* %14, i64 %15, i64 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %12
  %21 = load i64, i64* %10, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %10, align 8
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %23, i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %26)
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %29 = load i32, i32* @CONFIGURATION_REG, align 4
  %30 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %28, i32 %29, i32 4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %34 = load i32, i32* @ERROR, align 4
  %35 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %33, i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %20
  store i32 -1, i32* %11, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @MAX_WRITE_IOMEM_RETRY, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %49

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %12
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %12, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @mwifiex_write_data_sync(%struct.mwifiex_adapter*, i32*, i64, i64) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
