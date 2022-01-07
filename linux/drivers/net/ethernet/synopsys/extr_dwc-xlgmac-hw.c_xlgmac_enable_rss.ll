; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MAC_RSSCR = common dso_local global i64 0, align 8
@MAC_RSSCR_RSSE_POS = common dso_local global i32 0, align 4
@MAC_RSSCR_RSSE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*)* @xlgmac_enable_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_enable_rss(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %16 = call i32 @xlgmac_write_rss_hash_key(%struct.xlgmac_pdata* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %14
  %22 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %23 = call i32 @xlgmac_write_rss_lookup_table(%struct.xlgmac_pdata* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %55

28:                                               ; preds = %21
  %29 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %30 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %33 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAC_RSSCR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %39 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MAC_RSSCR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MAC_RSSCR_RSSE_POS, align 4
  %46 = load i32, i32* @MAC_RSSCR_RSSE_LEN, align 4
  %47 = call i32 @XLGMAC_SET_REG_BITS(i32 %44, i32 %45, i32 %46, i32 1)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %50 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MAC_RSSCR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %28, %26, %19, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @xlgmac_write_rss_hash_key(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_write_rss_lookup_table(%struct.xlgmac_pdata*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
