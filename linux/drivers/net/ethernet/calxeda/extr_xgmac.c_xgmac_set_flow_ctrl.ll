; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_set_flow_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_set_flow_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_priv = type { i32, i32, i64 }

@XGMAC_FLOW_CTRL_RFE = common dso_local global i32 0, align 4
@XGMAC_FLOW_CTRL_TFE = common dso_local global i32 0, align 4
@XGMAC_FLOW_CTRL_PLT = common dso_local global i32 0, align 4
@XGMAC_FLOW_CTRL_UP = common dso_local global i32 0, align 4
@PAUSE_TIME = common dso_local global i32 0, align 4
@XGMAC_FLOW_CTRL_PT_SHIFT = common dso_local global i32 0, align 4
@XGMAC_FLOW_CTRL = common dso_local global i64 0, align 8
@XGMAC_OMR = common dso_local global i64 0, align 8
@XGMAC_OMR_EFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgmac_priv*, i32, i32)* @xgmac_set_flow_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_set_flow_ctrl(%struct.xgmac_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xgmac_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgmac_priv* %0, %struct.xgmac_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %11 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %14 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @XGMAC_FLOW_CTRL_RFE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @XGMAC_FLOW_CTRL_TFE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* @XGMAC_FLOW_CTRL_PLT, align 4
  %36 = load i32, i32* @XGMAC_FLOW_CTRL_UP, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @PAUSE_TIME, align 4
  %41 = load i32, i32* @XGMAC_FLOW_CTRL_PT_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %47 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XGMAC_FLOW_CTRL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %53 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XGMAC_OMR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @XGMAC_OMR_EFC, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %63 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XGMAC_OMR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  br label %92

68:                                               ; preds = %17
  %69 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %70 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @XGMAC_FLOW_CTRL, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 0, i64 %73)
  %75 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %76 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @XGMAC_OMR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl(i64 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @XGMAC_OMR_EFC, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %87 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @XGMAC_OMR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  br label %92

92:                                               ; preds = %68, %34
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
