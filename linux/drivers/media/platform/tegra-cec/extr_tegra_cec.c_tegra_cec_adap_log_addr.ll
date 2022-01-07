; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_adap_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_adap_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.tegra_cec* }
%struct.tegra_cec = type { i32 }

@TEGRA_CEC_HW_CONTROL = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@TEGRA_CEC_HWCTRL_RX_LADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @tegra_cec_adap_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_cec_adap_log_addr(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_cec*, align 8
  %6 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %7, i32 0, i32 0
  %9 = load %struct.tegra_cec*, %struct.tegra_cec** %8, align 8
  store %struct.tegra_cec* %9, %struct.tegra_cec** %5, align 8
  %10 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %11 = load i32, i32* @TEGRA_CEC_HW_CONTROL, align 4
  %12 = call i32 @cec_read(%struct.tegra_cec* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @TEGRA_CEC_HWCTRL_RX_LADDR_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 1, %22
  %24 = call i32 @TEGRA_CEC_HWCTRL_RX_LADDR(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %29 = load i32, i32* @TEGRA_CEC_HW_CONTROL, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @cec_write(%struct.tegra_cec* %28, i32 %29, i32 %30)
  ret i32 0
}

declare dso_local i32 @cec_read(%struct.tegra_cec*, i32) #1

declare dso_local i32 @TEGRA_CEC_HWCTRL_RX_LADDR(i32) #1

declare dso_local i32 @cec_write(%struct.tegra_cec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
