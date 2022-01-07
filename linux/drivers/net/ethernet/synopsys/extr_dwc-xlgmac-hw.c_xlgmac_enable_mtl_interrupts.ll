; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_mtl_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_mtl_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MTL_Q_ISR = common dso_local global i32 0, align 4
@MTL_Q_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_enable_mtl_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_enable_mtl_interrupts(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %11 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @max(i32 %9, i32 %13)
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %36, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MTL_Q_ISR, align 4
  %23 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %20, i32 %21, i32 %22)
  %24 = call i32 @readl(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MTL_Q_ISR, align 4
  %29 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %26, i32 %27, i32 %28)
  %30 = call i32 @writel(i32 %25, i32 %29)
  %31 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MTL_Q_IER, align 4
  %34 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %31, i32 %32, i32 %33)
  %35 = call i32 @writel(i32 0, i32 %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %15

39:                                               ; preds = %15
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
