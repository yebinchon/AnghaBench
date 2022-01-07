; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.tegra_cec* }
%struct.tegra_cec = type { i32, i64*, i64 }
%struct.cec_msg = type { i32, i64* }

@CEC_SIGNAL_FREE_TIME_RETRY = common dso_local global i64 0, align 8
@TEGRA_CEC_TX_REG_BCAST = common dso_local global i64 0, align 8
@TEGRA_CEC_TX_REG_START_BIT = common dso_local global i64 0, align 8
@TEGRA_CEC_TX_REG_EOM = common dso_local global i64 0, align 8
@TEGRA_CEC_TX_REG_RETRY = common dso_local global i64 0, align 8
@TEGRA_CEC_INT_MASK = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i64, %struct.cec_msg*)* @tegra_cec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_cec_adap_transmit(%struct.cec_adapter* %0, i32 %1, i64 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cec_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_cec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.cec_msg* %3, %struct.cec_msg** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @CEC_SIGNAL_FREE_TIME_RETRY, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %18, i32 0, i32 0
  %20 = load %struct.tegra_cec*, %struct.tegra_cec** %19, align 8
  store %struct.tegra_cec* %20, %struct.tegra_cec** %10, align 8
  store i64 0, i64* %12, align 8
  %21 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %22 = call i64 @cec_msg_is_broadcast(%struct.cec_msg* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @TEGRA_CEC_TX_REG_BCAST, align 8
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %24, %4
  %27 = load %struct.tegra_cec*, %struct.tegra_cec** %10, align 8
  %28 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %30 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tegra_cec*, %struct.tegra_cec** %10, align 8
  %33 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %102, %26
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %37 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %105

40:                                               ; preds = %34
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %43 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = or i64 %41, %48
  %50 = load %struct.tegra_cec*, %struct.tegra_cec** %10, align 8
  %51 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %49, i64* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %40
  %59 = load i64, i64* @TEGRA_CEC_TX_REG_START_BIT, align 8
  %60 = load %struct.tegra_cec*, %struct.tegra_cec** %10, align 8
  %61 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %59
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %58, %40
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %71 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub i32 %72, 1
  %74 = icmp eq i32 %69, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i64, i64* @TEGRA_CEC_TX_REG_EOM, align 8
  %77 = load %struct.tegra_cec*, %struct.tegra_cec** %10, align 8
  %78 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = or i64 %83, %76
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %75, %68
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i64, i64* @TEGRA_CEC_TX_REG_RETRY, align 8
  %93 = load %struct.tegra_cec*, %struct.tegra_cec** %10, align 8
  %94 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %92
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %91, %88, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %34

105:                                              ; preds = %34
  %106 = load %struct.tegra_cec*, %struct.tegra_cec** %10, align 8
  %107 = load i32, i32* @TEGRA_CEC_INT_MASK, align 4
  %108 = call i64 @cec_read(%struct.tegra_cec* %106, i32 %107)
  store i64 %108, i64* %13, align 8
  %109 = load %struct.tegra_cec*, %struct.tegra_cec** %10, align 8
  %110 = load i32, i32* @TEGRA_CEC_INT_MASK, align 4
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* @TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY, align 8
  %113 = or i64 %111, %112
  %114 = call i32 @cec_write(%struct.tegra_cec* %109, i32 %110, i64 %113)
  ret i32 0
}

declare dso_local i64 @cec_msg_is_broadcast(%struct.cec_msg*) #1

declare dso_local i64 @cec_read(%struct.tegra_cec*, i32) #1

declare dso_local i32 @cec_write(%struct.tegra_cec*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
