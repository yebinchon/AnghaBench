; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_put_cfg_tlv_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_put_cfg_tlv_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i64 }
%struct.wcn36xx_hal_cfg = type { i32, i64, i64, i32 }

@WCN36XX_HAL_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Not enough room for TLV entry\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, i64*, i32, i32)* @put_cfg_tlv_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_cfg_tlv_u32(%struct.wcn36xx* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wcn36xx*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wcn36xx_hal_cfg*, align 8
  %11 = alloca i32*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, 32
  %15 = add i64 %14, 4
  %16 = load i64, i64* @WCN36XX_HAL_BUF_SIZE, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  %24 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %25, %27
  %29 = inttoptr i64 %28 to %struct.wcn36xx_hal_cfg*
  store %struct.wcn36xx_hal_cfg* %29, %struct.wcn36xx_hal_cfg** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.wcn36xx_hal_cfg*, %struct.wcn36xx_hal_cfg** %10, align 8
  %32 = getelementptr inbounds %struct.wcn36xx_hal_cfg, %struct.wcn36xx_hal_cfg* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.wcn36xx_hal_cfg*, %struct.wcn36xx_hal_cfg** %10, align 8
  %34 = getelementptr inbounds %struct.wcn36xx_hal_cfg, %struct.wcn36xx_hal_cfg* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = load %struct.wcn36xx_hal_cfg*, %struct.wcn36xx_hal_cfg** %10, align 8
  %36 = getelementptr inbounds %struct.wcn36xx_hal_cfg, %struct.wcn36xx_hal_cfg* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.wcn36xx_hal_cfg*, %struct.wcn36xx_hal_cfg** %10, align 8
  %38 = getelementptr inbounds %struct.wcn36xx_hal_cfg, %struct.wcn36xx_hal_cfg* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.wcn36xx_hal_cfg*, %struct.wcn36xx_hal_cfg** %10, align 8
  %40 = getelementptr inbounds %struct.wcn36xx_hal_cfg, %struct.wcn36xx_hal_cfg* %39, i64 1
  %41 = bitcast %struct.wcn36xx_hal_cfg* %40 to i32*
  store i32* %41, i32** %11, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 36
  store i64 %46, i64* %44, align 8
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %22, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @wcn36xx_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
