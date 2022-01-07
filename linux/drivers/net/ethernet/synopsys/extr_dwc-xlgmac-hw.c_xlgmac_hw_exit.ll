; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_hw_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_hw_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i64 }

@DMA_MR = common dso_local global i64 0, align 8
@DMA_MR_SWR_POS = common dso_local global i32 0, align 4
@DMA_MR_SWR_LEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*)* @xlgmac_hw_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_hw_exit(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  store i32 2000, i32* %4, align 4
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DMA_MR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DMA_MR_SWR_POS, align 4
  %14 = load i32, i32* @DMA_MR_SWR_LEN, align 4
  %15 = call i32 @XLGMAC_SET_REG_BITS(i32 %12, i32 %13, i32 %14, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %18 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMA_MR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = call i32 @usleep_range(i32 10, i32 15)
  br label %24

24:                                               ; preds = %41, %1
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %30 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMA_MR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  %35 = load i32, i32* @DMA_MR_SWR_POS, align 4
  %36 = load i32, i32* @DMA_MR_SWR_LEN, align 4
  %37 = call i64 @XLGMAC_GET_REG_BITS(i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %28, %24
  %40 = phi i1 [ false, %24 ], [ %38, %28 ]
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = call i32 @usleep_range(i32 500, i32 600)
  br label %24

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
