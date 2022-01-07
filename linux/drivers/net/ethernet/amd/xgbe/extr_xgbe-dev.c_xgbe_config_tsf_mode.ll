; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_tsf_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_tsf_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@TSF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32)* @xgbe_config_tsf_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_config_tsf_mode(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MTL_Q_TQOMR, align 4
  %16 = load i32, i32* @TSF, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %6

22:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
