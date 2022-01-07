; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_cdr_track.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_cdr_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i64, i64 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_VEND2_PMA_CDR_CONTROL = common dso_local global i32 0, align 4
@XGBE_PMA_CDR_TRACK_EN_MASK = common dso_local global i32 0, align 4
@XGBE_PMA_CDR_TRACK_EN_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_cdr_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_cdr_track(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 1
  %6 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  store %struct.xgbe_phy_data* %6, %struct.xgbe_phy_data** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %35

18:                                               ; preds = %12
  %19 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %20 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %23 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 500
  %26 = call i32 @usleep_range(i64 %21, i64 %25)
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %28 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %29 = load i32, i32* @MDIO_VEND2_PMA_CDR_CONTROL, align 4
  %30 = load i32, i32* @XGBE_PMA_CDR_TRACK_EN_MASK, align 4
  %31 = load i32, i32* @XGBE_PMA_CDR_TRACK_EN_ON, align 4
  %32 = call i32 @XMDIO_WRITE_BITS(%struct.xgbe_prv_data* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %34 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %18, %17, %11
  ret void
}

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @XMDIO_WRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
