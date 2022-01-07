; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_cec_adap_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_cec_adap_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.stm32_cec* }
%struct.stm32_cec = type { i32 }

@CEC_CR = common dso_local global i32 0, align 4
@TXSOM = common dso_local global i32 0, align 4
@CEC_XFER_TIMEOUT_MS = common dso_local global i32 0, align 4
@CECEN = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@CEC_CFGR = common dso_local global i32 0, align 4
@OAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @stm32_cec_adap_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cec_adap_log_addr(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_cec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 0
  %10 = load %struct.stm32_cec*, %struct.stm32_cec** %9, align 8
  store %struct.stm32_cec* %10, %struct.stm32_cec** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 1, %11
  %13 = shl i32 %12, 16
  store i32 %13, i32* %6, align 4
  %14 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %15 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CEC_CR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @TXSOM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @CEC_XFER_TIMEOUT_MS, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = call i32 @regmap_read_poll_timeout(i32 %16, i32 %17, i32 %18, i32 %24, i32 100, i32 %26)
  %28 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %29 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CEC_CR, align 4
  %32 = load i32, i32* @CECEN, align 4
  %33 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %39 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CEC_CFGR, align 4
  %42 = load i32, i32* @OAR, align 4
  %43 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 0)
  br label %52

44:                                               ; preds = %2
  %45 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %46 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CEC_CFGR, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.stm32_cec*, %struct.stm32_cec** %5, align 8
  %54 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CEC_CR, align 4
  %57 = load i32, i32* @CECEN, align 4
  %58 = load i32, i32* @CECEN, align 4
  %59 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %58)
  ret i32 0
}

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
