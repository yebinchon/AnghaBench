; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_cec_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_cec_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.stih_cec = type { i64, i32 }

@CEC_CLK_DIV = common dso_local global i64 0, align 8
@CEC_SBIT_TOUT_47MS = common dso_local global i32 0, align 4
@CEC_DBIT_TOUT_28MS = common dso_local global i32 0, align 4
@CEC_BIT_TOUT_THRESH = common dso_local global i64 0, align 8
@CEC_BIT_LPULSE_03MS = common dso_local global i32 0, align 4
@CEC_BIT_HPULSE_03MS = common dso_local global i32 0, align 4
@CEC_BIT_PULSE_THRESH = common dso_local global i64 0, align 8
@CEC_TX_CTRL = common dso_local global i64 0, align 8
@CEC_TX_ARRAY_EN = common dso_local global i32 0, align 4
@CEC_RX_ARRAY_EN = common dso_local global i32 0, align 4
@CEC_TX_STOP_ON_NACK = common dso_local global i32 0, align 4
@CEC_DATA_ARRAY_CTRL = common dso_local global i64 0, align 8
@CEC_IN_FILTER_EN = common dso_local global i32 0, align 4
@CEC_EN = common dso_local global i32 0, align 4
@CEC_RX_RESET_EN = common dso_local global i32 0, align 4
@CEC_CTRL = common dso_local global i64 0, align 8
@CEC_ADDR_TABLE = common dso_local global i64 0, align 8
@CEC_STATUS = common dso_local global i64 0, align 8
@CEC_TX_DONE_IRQ_EN = common dso_local global i32 0, align 4
@CEC_RX_DONE_IRQ_EN = common dso_local global i32 0, align 4
@CEC_RX_SOM_IRQ_EN = common dso_local global i32 0, align 4
@CEC_RX_EOM_IRQ_EN = common dso_local global i32 0, align 4
@CEC_ERROR_IRQ_EN = common dso_local global i32 0, align 4
@CEC_IRQ_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @stih_cec_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stih_cec_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stih_cec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %9 = call %struct.stih_cec* @cec_get_drvdata(%struct.cec_adapter* %8)
  store %struct.stih_cec* %9, %struct.stih_cec** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %104

12:                                               ; preds = %2
  %13 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %14 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @clk_get_rate(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = udiv i64 %17, 10000
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %22 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CEC_CLK_DIV, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* @CEC_SBIT_TOUT_47MS, align 4
  %28 = load i32, i32* @CEC_DBIT_TOUT_28MS, align 4
  %29 = shl i32 %28, 4
  %30 = or i32 %27, %29
  %31 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %32 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CEC_BIT_TOUT_THRESH, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load i32, i32* @CEC_BIT_LPULSE_03MS, align 4
  %38 = load i32, i32* @CEC_BIT_HPULSE_03MS, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %41 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CEC_BIT_PULSE_THRESH, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = call i32 @BIT(i32 5)
  %47 = call i32 @BIT(i32 7)
  %48 = or i32 %46, %47
  %49 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %50 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CEC_TX_CTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load i32, i32* @CEC_TX_ARRAY_EN, align 4
  %56 = load i32, i32* @CEC_RX_ARRAY_EN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CEC_TX_STOP_ON_NACK, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %61 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CEC_DATA_ARRAY_CTRL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load i32, i32* @CEC_IN_FILTER_EN, align 4
  %67 = load i32, i32* @CEC_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CEC_RX_RESET_EN, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %72 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CEC_CTRL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %78 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CEC_ADDR_TABLE, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 0, i64 %81)
  %83 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %84 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CEC_STATUS, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 0, i64 %87)
  %89 = load i32, i32* @CEC_TX_DONE_IRQ_EN, align 4
  %90 = load i32, i32* @CEC_RX_DONE_IRQ_EN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @CEC_RX_SOM_IRQ_EN, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @CEC_RX_EOM_IRQ_EN, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @CEC_ERROR_IRQ_EN, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %99 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CEC_IRQ_CTRL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  br label %123

104:                                              ; preds = %2
  %105 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %106 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CEC_ADDR_TABLE, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 0, i64 %109)
  %111 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %112 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CEC_STATUS, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 0, i64 %115)
  %117 = load %struct.stih_cec*, %struct.stih_cec** %5, align 8
  %118 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CEC_IRQ_CTRL, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 0, i64 %121)
  br label %123

123:                                              ; preds = %104, %12
  ret i32 0
}

declare dso_local %struct.stih_cec* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
