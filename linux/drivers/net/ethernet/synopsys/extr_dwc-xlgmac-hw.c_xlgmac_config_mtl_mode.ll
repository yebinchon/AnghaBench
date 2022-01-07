; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_mtl_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_mtl_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MTL_OMR = common dso_local global i64 0, align 8
@MTL_OMR_ETSALG_POS = common dso_local global i32 0, align 4
@MTL_OMR_ETSALG_LEN = common dso_local global i32 0, align 4
@MTL_ETSALG_WRR = common dso_local global i32 0, align 4
@MTL_TC_ETSCR = common dso_local global i32 0, align 4
@MTL_TC_ETSCR_TSA_POS = common dso_local global i32 0, align 4
@MTL_TC_ETSCR_TSA_LEN = common dso_local global i32 0, align 4
@MTL_TSA_ETS = common dso_local global i32 0, align 4
@MTL_TC_QWR = common dso_local global i32 0, align 4
@MTL_TC_QWR_QW_POS = common dso_local global i32 0, align 4
@MTL_TC_QWR_QW_LEN = common dso_local global i32 0, align 4
@MTL_OMR_RAA_POS = common dso_local global i32 0, align 4
@MTL_OMR_RAA_LEN = common dso_local global i32 0, align 4
@MTL_RAA_SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_config_mtl_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_config_mtl_mode(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %5 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MTL_OMR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MTL_OMR_ETSALG_POS, align 4
  %13 = load i32, i32* @MTL_OMR_ETSALG_LEN, align 4
  %14 = load i32, i32* @MTL_ETSALG_WRR, align 4
  %15 = call i32 @XLGMAC_SET_REG_BITS(i32 %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %18 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MTL_OMR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %62, %1
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %26 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %23
  %31 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MTL_TC_ETSCR, align 4
  %34 = call i64 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %31, i32 %32, i32 %33)
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MTL_TC_ETSCR_TSA_POS, align 4
  %38 = load i32, i32* @MTL_TC_ETSCR_TSA_LEN, align 4
  %39 = load i32, i32* @MTL_TSA_ETS, align 4
  %40 = call i32 @XLGMAC_SET_REG_BITS(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MTL_TC_ETSCR, align 4
  %45 = call i64 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %42, i32 %43, i32 %44)
  %46 = call i32 @writel(i32 %41, i64 %45)
  %47 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @MTL_TC_QWR, align 4
  %50 = call i64 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %47, i32 %48, i32 %49)
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @MTL_TC_QWR_QW_POS, align 4
  %54 = load i32, i32* @MTL_TC_QWR_QW_LEN, align 4
  %55 = call i32 @XLGMAC_SET_REG_BITS(i32 %52, i32 %53, i32 %54, i32 1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @MTL_TC_QWR, align 4
  %60 = call i64 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %57, i32 %58, i32 %59)
  %61 = call i32 @writel(i32 %56, i64 %60)
  br label %62

62:                                               ; preds = %30
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %23

65:                                               ; preds = %23
  %66 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %67 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MTL_OMR, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @MTL_OMR_RAA_POS, align 4
  %74 = load i32, i32* @MTL_OMR_RAA_LEN, align 4
  %75 = load i32, i32* @MTL_RAA_SP, align 4
  %76 = call i32 @XLGMAC_SET_REG_BITS(i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %79 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MTL_OMR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @XLGMAC_MTL_REG(%struct.xlgmac_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
