; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_set_all_multicast_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_set_all_multicast_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i64, i32 }

@MAC_PFR = common dso_local global i64 0, align 8
@MAC_PFR_PM_POS = common dso_local global i32 0, align 4
@MAC_PFR_PM_LEN = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s allmulti mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"entering\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*, i32)* @xlgmac_set_all_multicast_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_set_all_multicast_mode(%struct.xlgmac_pdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlgmac_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 0
  store i32 %11, i32* %6, align 4
  %12 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %13 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAC_PFR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = load i32, i32* @MAC_PFR_PM_POS, align 4
  %19 = load i32, i32* @MAC_PFR_PM_LEN, align 4
  %20 = call i32 @XLGMAC_GET_REG_BITS(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %27 = load i32, i32* @drv, align 4
  %28 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %29 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @netif_dbg(%struct.xlgmac_pdata* %26, i32 %27, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %37 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAC_PFR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MAC_PFR_PM_POS, align 4
  %44 = load i32, i32* @MAC_PFR_PM_LEN, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @XLGMAC_SET_REG_BITS(i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %49 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MAC_PFR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %25, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netif_dbg(%struct.xlgmac_pdata*, i32, i32, i8*, i8*) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
