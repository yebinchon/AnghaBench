; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_write_rss_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_write_rss_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i64 }

@MAC_RSSAR = common dso_local global i64 0, align 8
@MAC_RSSAR_OB_POS = common dso_local global i32 0, align 4
@MAC_RSSAR_OB_LEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MAC_RSSDR = common dso_local global i64 0, align 8
@MAC_RSSAR_RSSIA_POS = common dso_local global i32 0, align 4
@MAC_RSSAR_RSSIA_LEN = common dso_local global i32 0, align 4
@MAC_RSSAR_ADDRT_POS = common dso_local global i32 0, align 4
@MAC_RSSAR_ADDRT_LEN = common dso_local global i32 0, align 4
@MAC_RSSAR_CT_POS = common dso_local global i32 0, align 4
@MAC_RSSAR_CT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*, i32, i32, i32)* @xlgmac_write_rss_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_write_rss_reg(%struct.xlgmac_pdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xlgmac_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %13 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %16 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAC_RSSAR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @MAC_RSSAR_OB_POS, align 4
  %22 = load i32, i32* @MAC_RSSAR_OB_LEN, align 4
  %23 = call i32 @XLGMAC_GET_REG_BITS(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %90

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %32 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAC_RSSDR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %38 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MAC_RSSAR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @MAC_RSSAR_RSSIA_POS, align 4
  %45 = load i32, i32* @MAC_RSSAR_RSSIA_LEN, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @XLGMAC_SET_REG_BITS(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @MAC_RSSAR_ADDRT_POS, align 4
  %50 = load i32, i32* @MAC_RSSAR_ADDRT_LEN, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @XLGMAC_SET_REG_BITS(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @MAC_RSSAR_CT_POS, align 4
  %55 = load i32, i32* @MAC_RSSAR_CT_LEN, align 4
  %56 = call i32 @XLGMAC_SET_REG_BITS(i32 %53, i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MAC_RSSAR_OB_POS, align 4
  %59 = load i32, i32* @MAC_RSSAR_OB_LEN, align 4
  %60 = call i32 @XLGMAC_SET_REG_BITS(i32 %57, i32 %58, i32 %59, i32 1)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %63 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAC_RSSAR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  store i32 1000, i32* %9, align 4
  br label %68

68:                                               ; preds = %85, %29
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, -1
  store i32 %70, i32* %9, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %74 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MAC_RSSAR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl(i64 %77)
  %79 = load i32, i32* @MAC_RSSAR_OB_POS, align 4
  %80 = load i32, i32* @MAC_RSSAR_OB_LEN, align 4
  %81 = call i32 @XLGMAC_GET_REG_BITS(i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %72
  br label %90

85:                                               ; preds = %72
  %86 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %68

87:                                               ; preds = %68
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %87, %84, %26
  %91 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %92 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
