; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_write_rss_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_write_rss_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MAC_RSSAR = common dso_local global i32 0, align 4
@OB = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MAC_RSSDR = common dso_local global i32 0, align 4
@RSSIA = common dso_local global i32 0, align 4
@ADDRT = common dso_local global i32 0, align 4
@CT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32, i32, i32)* @xgbe_write_rss_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_write_rss_reg(%struct.xgbe_prv_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %15 = load i32, i32* @MAC_RSSAR, align 4
  %16 = load i32, i32* @OB, align 4
  %17 = call i64 @XGMAC_IOREAD_BITS(%struct.xgbe_prv_data* %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  br label %61

22:                                               ; preds = %4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %24 = load i32, i32* @MAC_RSSDR, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %23, i32 %24, i32 %25)
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %28 = load i32, i32* @MAC_RSSAR, align 4
  %29 = load i32, i32* @RSSIA, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %33 = load i32, i32* @MAC_RSSAR, align 4
  %34 = load i32, i32* @ADDRT, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %38 = load i32, i32* @MAC_RSSAR, align 4
  %39 = load i32, i32* @CT, align 4
  %40 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %37, i32 %38, i32 %39, i32 0)
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %42 = load i32, i32* @MAC_RSSAR, align 4
  %43 = load i32, i32* @OB, align 4
  %44 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %41, i32 %42, i32 %43, i32 1)
  store i32 1000, i32* %9, align 4
  br label %45

45:                                               ; preds = %56, %22
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %9, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %51 = load i32, i32* @MAC_RSSAR, align 4
  %52 = load i32, i32* @OB, align 4
  %53 = call i64 @XGMAC_IOREAD_BITS(%struct.xgbe_prv_data* %50, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %61

56:                                               ; preds = %49
  %57 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %45

58:                                               ; preds = %45
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %55, %19
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @XGMAC_IOREAD_BITS(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
