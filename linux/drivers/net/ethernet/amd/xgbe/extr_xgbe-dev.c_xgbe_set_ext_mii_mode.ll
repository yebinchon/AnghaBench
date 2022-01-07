; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_ext_mii_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_ext_mii_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MAC_MDIOCL22R = common dso_local global i32 0, align 4
@XGMAC_MAX_C22_PORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32, i32)* @xgbe_set_ext_mii_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_ext_mii_mode(%struct.xgbe_prv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %10 = load i32, i32* @MAC_MDIOCL22R, align 4
  %11 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %26 [
    i32 129, label %13
    i32 128, label %25
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @XGMAC_MAX_C22_PORT, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %34

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %29

25:                                               ; preds = %3
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %25, %20
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %31 = load i32, i32* @MAC_MDIOCL22R, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %30, i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %26, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
