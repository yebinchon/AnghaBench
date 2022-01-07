; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_10g_phy_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_10g_phy_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@ESR_INT_SIGNALS = common dso_local global i32 0, align 4
@ESR_INT_SIGNALS_P0_BITS = common dso_local global i32 0, align 4
@ESR_INT_SRDY0_P0 = common dso_local global i32 0, align 4
@ESR_INT_DET0_P0 = common dso_local global i32 0, align 4
@ESR_INT_XSRDY_P0 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P0_CH3 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P0_CH2 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P0_CH1 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P0_CH0 = common dso_local global i32 0, align 4
@ESR_INT_SIGNALS_P1_BITS = common dso_local global i32 0, align 4
@ESR_INT_SRDY0_P1 = common dso_local global i32 0, align 4
@ESR_INT_DET0_P1 = common dso_local global i32 0, align 4
@ESR_INT_XSRDY_P1 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P1_CH3 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P1_CH2 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P1_CH1 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P1_CH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_10g_phy_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_10g_phy_present(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %7 = load i32, i32* @ESR_INT_SIGNALS, align 4
  %8 = call i32 @nr64(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.niu*, %struct.niu** %3, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %42 [
    i32 0, label %12
    i32 1, label %27
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @ESR_INT_SIGNALS_P0_BITS, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @ESR_INT_SRDY0_P0, align 4
  %15 = load i32, i32* @ESR_INT_DET0_P0, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ESR_INT_XSRDY_P0, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ESR_INT_XDP_P0_CH3, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ESR_INT_XDP_P0_CH2, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ESR_INT_XDP_P0_CH1, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ESR_INT_XDP_P0_CH0, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load i32, i32* @ESR_INT_SIGNALS_P1_BITS, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @ESR_INT_SRDY0_P1, align 4
  %30 = load i32, i32* @ESR_INT_DET0_P1, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ESR_INT_XSRDY_P1, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ESR_INT_XDP_P1_CH3, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ESR_INT_XDP_P1_CH2, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ESR_INT_XDP_P1_CH1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ESR_INT_XDP_P1_CH0, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %6, align 4
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

43:                                               ; preds = %27, %12
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %51

50:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49, %42
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @nr64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
