; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_mtl_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_mtl_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MTL_OMR = common dso_local global i32 0, align 4
@ETSALG = common dso_local global i32 0, align 4
@MTL_ETSALG_WRR = common dso_local global i32 0, align 4
@MTL_TC_ETSCR = common dso_local global i32 0, align 4
@TSA = common dso_local global i32 0, align 4
@MTL_TSA_ETS = common dso_local global i32 0, align 4
@MTL_TC_QWR = common dso_local global i32 0, align 4
@QW = common dso_local global i32 0, align 4
@RAA = common dso_local global i32 0, align 4
@MTL_RAA_SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_config_mtl_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_config_mtl_mode(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = load i32, i32* @MTL_OMR, align 4
  %6 = load i32, i32* @ETSALG, align 4
  %7 = load i32, i32* @MTL_ETSALG_WRR, align 4
  %8 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %4, i32 %5, i32 %6, i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %9
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MTL_TC_ETSCR, align 4
  %20 = load i32, i32* @TSA, align 4
  %21 = load i32, i32* @MTL_TSA_ETS, align 4
  %22 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MTL_TC_QWR, align 4
  %26 = load i32, i32* @QW, align 4
  %27 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %23, i32 %24, i32 %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %3, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %33 = load i32, i32* @MTL_OMR, align 4
  %34 = load i32, i32* @RAA, align 4
  %35 = load i32, i32* @MTL_RAA_SP, align 4
  %36 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %32, i32 %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
