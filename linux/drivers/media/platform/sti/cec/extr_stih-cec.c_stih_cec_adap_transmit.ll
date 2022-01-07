; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_cec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_cec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32, i32* }
%struct.stih_cec = type { i64 }

@CEC_TX_DATA_BASE = common dso_local global i64 0, align 8
@CEC_TX_AUTO_SOM_EN = common dso_local global i32 0, align 4
@CEC_TX_AUTO_EOM_EN = common dso_local global i32 0, align 4
@CEC_TX_START = common dso_local global i32 0, align 4
@CEC_TX_ARRAY_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32, %struct.cec_msg*)* @stih_cec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stih_cec_adap_transmit(%struct.cec_adapter* %0, i32 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cec_msg*, align 8
  %9 = alloca %struct.stih_cec*, align 8
  %10 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %8, align 8
  %11 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %12 = call %struct.stih_cec* @cec_get_drvdata(%struct.cec_adapter* %11)
  store %struct.stih_cec* %12, %struct.stih_cec** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %36, %4
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %16 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %21 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.stih_cec*, %struct.stih_cec** %9, align 8
  %28 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CEC_TX_DATA_BASE, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @writeb(i32 %26, i64 %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load i32, i32* @CEC_TX_AUTO_SOM_EN, align 4
  %41 = load i32, i32* @CEC_TX_AUTO_EOM_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CEC_TX_START, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %46 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %44, %47
  %49 = load %struct.stih_cec*, %struct.stih_cec** %9, align 8
  %50 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CEC_TX_ARRAY_CTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  ret i32 0
}

declare dso_local %struct.stih_cec* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
