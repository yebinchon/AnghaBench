; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_an_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_an_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32, i32 }

@XGBE_MODE_KR = common dso_local global i32 0, align 4
@XGBE_CDR_DELAY_MAX = common dso_local global i32 0, align 4
@XGBE_CDR_DELAY_INC = common dso_local global i32 0, align 4
@XGBE_CDR_DELAY_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_an_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_an_post(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 2
  %6 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  store %struct.xgbe_phy_data* %6, %struct.xgbe_phy_data** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %42 [
    i32 130, label %10
    i32 129, label %10
  ]

10:                                               ; preds = %1, %1
  %11 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @XGBE_MODE_KR, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %43

17:                                               ; preds = %10
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = call i32 @xgbe_phy_cdr_track(%struct.xgbe_prv_data* %18)
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %24 [
    i32 128, label %23
    i32 131, label %23
  ]

23:                                               ; preds = %17, %17
  br label %41

24:                                               ; preds = %17
  %25 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %26 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @XGBE_CDR_DELAY_MAX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* @XGBE_CDR_DELAY_INC, align 4
  %32 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %33 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %40

36:                                               ; preds = %24
  %37 = load i32, i32* @XGBE_CDR_DELAY_INIT, align 4
  %38 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %39 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40, %23
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %42, %41, %16
  ret void
}

declare dso_local i32 @xgbe_phy_cdr_track(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
