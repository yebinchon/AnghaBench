; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_set_sel18.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_set_sel18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, %struct.k3_priv* }
%struct.k3_priv = type { i32 }

@SDCARD_IO_SEL18 = common dso_local global i32 0, align 4
@SOC_SCTRL_SCPERCTRL5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sel18 %u error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*, i32)* @dw_mci_set_sel18 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_set_sel18(%struct.dw_mci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_mci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.k3_priv*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %10 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %9, i32 0, i32 1
  %11 = load %struct.k3_priv*, %struct.k3_priv** %10, align 8
  store %struct.k3_priv* %11, %struct.k3_priv** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SDCARD_IO_SEL18, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %7, align 4
  %19 = load %struct.k3_priv*, %struct.k3_priv** %8, align 8
  %20 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SOC_SCTRL_SCPERCTRL5, align 4
  %23 = load i32, i32* @SDCARD_IO_SEL18, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %30 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
