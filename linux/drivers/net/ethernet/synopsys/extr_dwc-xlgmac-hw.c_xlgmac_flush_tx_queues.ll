; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_flush_tx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_flush_tx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32 }

@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@MTL_Q_TQOMR_FTQ_POS = common dso_local global i32 0, align 4
@MTL_Q_TQOMR_FTQ_LEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*)* @xlgmac_flush_tx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_flush_tx_queues(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %10 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MTL_Q_TQOMR, align 4
  %17 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %14, i32 %15, i32 %16)
  %18 = call i64 @readl(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @MTL_Q_TQOMR_FTQ_POS, align 4
  %21 = load i32, i32* @MTL_Q_TQOMR_FTQ_LEN, align 4
  %22 = call i64 @XLGMAC_SET_REG_BITS(i64 %19, i32 %20, i32 %21, i32 1)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MTL_Q_TQOMR, align 4
  %27 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %24, i32 %25, i32 %26)
  %28 = call i32 @writel(i64 %23, i32 %27)
  br label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %7

32:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %67, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %36 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %33
  store i32 2000, i32* %5, align 4
  %40 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MTL_Q_TQOMR, align 4
  %43 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %40, i32 %41, i32 %42)
  %44 = call i64 @readl(i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @MTL_Q_TQOMR_FTQ_POS, align 4
  %47 = load i32, i32* @MTL_Q_TQOMR_FTQ_LEN, align 4
  %48 = call i64 @XLGMAC_GET_REG_BITS(i64 %45, i32 %46, i32 %47)
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %58, %39
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi i1 [ false, %49 ], [ %55, %53 ]
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = call i32 @usleep_range(i32 500, i32 600)
  br label %49

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %33

70:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata*, i32, i32) #1

declare dso_local i64 @XLGMAC_SET_REG_BITS(i64, i32, i32, i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i64 @XLGMAC_GET_REG_BITS(i64, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
