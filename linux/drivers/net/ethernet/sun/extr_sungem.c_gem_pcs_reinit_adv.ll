; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_pcs_reinit_adv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_pcs_reinit_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, i64 }

@PCS_CFG = common dso_local global i64 0, align 8
@PCS_CFG_ENABLE = common dso_local global i32 0, align 4
@PCS_CFG_TO = common dso_local global i32 0, align 4
@PCS_MIIADV = common dso_local global i64 0, align 8
@PCS_MIIADV_FD = common dso_local global i32 0, align 4
@PCS_MIIADV_HD = common dso_local global i32 0, align 4
@PCS_MIIADV_SP = common dso_local global i32 0, align 4
@PCS_MIIADV_AP = common dso_local global i32 0, align 4
@PCS_MIICTRL = common dso_local global i64 0, align 8
@PCS_MIICTRL_RAN = common dso_local global i32 0, align 4
@PCS_MIICTRL_ANE = common dso_local global i32 0, align 4
@PCS_MIICTRL_WB = common dso_local global i32 0, align 4
@PCS_SCTRL = common dso_local global i64 0, align 8
@phy_serialink = common dso_local global i64 0, align 8
@PCS_SCTRL_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_pcs_reinit_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_pcs_reinit_adv(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %2, align 8
  %4 = load %struct.gem*, %struct.gem** %2, align 8
  %5 = getelementptr inbounds %struct.gem, %struct.gem* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PCS_CFG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @PCS_CFG_ENABLE, align 4
  %11 = load i32, i32* @PCS_CFG_TO, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.gem*, %struct.gem** %2, align 8
  %18 = getelementptr inbounds %struct.gem, %struct.gem* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCS_CFG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.gem*, %struct.gem** %2, align 8
  %24 = getelementptr inbounds %struct.gem, %struct.gem* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCS_MIIADV, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @PCS_MIIADV_FD, align 4
  %30 = load i32, i32* @PCS_MIIADV_HD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PCS_MIIADV_SP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PCS_MIIADV_AP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.gem*, %struct.gem** %2, align 8
  %40 = getelementptr inbounds %struct.gem, %struct.gem* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCS_MIIADV, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.gem*, %struct.gem** %2, align 8
  %46 = getelementptr inbounds %struct.gem, %struct.gem* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCS_MIICTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @PCS_MIICTRL_RAN, align 4
  %52 = load i32, i32* @PCS_MIICTRL_ANE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @PCS_MIICTRL_WB, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.gem*, %struct.gem** %2, align 8
  %62 = getelementptr inbounds %struct.gem, %struct.gem* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCS_MIICTRL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.gem*, %struct.gem** %2, align 8
  %68 = getelementptr inbounds %struct.gem, %struct.gem* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCS_CFG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @PCS_CFG_ENABLE, align 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.gem*, %struct.gem** %2, align 8
  %78 = getelementptr inbounds %struct.gem, %struct.gem* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PCS_CFG, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  %83 = load %struct.gem*, %struct.gem** %2, align 8
  %84 = getelementptr inbounds %struct.gem, %struct.gem* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCS_SCTRL, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @readl(i64 %87)
  store i32 %88, i32* %3, align 4
  %89 = load %struct.gem*, %struct.gem** %2, align 8
  %90 = getelementptr inbounds %struct.gem, %struct.gem* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @phy_serialink, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %1
  %95 = load i32, i32* @PCS_SCTRL_LOOP, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %3, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %3, align 4
  br label %103

99:                                               ; preds = %1
  %100 = load i32, i32* @PCS_SCTRL_LOOP, align 4
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.gem*, %struct.gem** %2, align 8
  %106 = getelementptr inbounds %struct.gem, %struct.gem* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PCS_SCTRL, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
