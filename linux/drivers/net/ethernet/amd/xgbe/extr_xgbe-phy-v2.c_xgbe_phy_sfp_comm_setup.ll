; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_comm_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_comm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32, i32, i32 }

@XP_PROP_4 = common dso_local global i32 0, align 4
@MUX_ADDR_HI = common dso_local global i32 0, align 4
@MUX_ADDR_LO = common dso_local global i32 0, align 4
@XGBE_SFP_DIRECT = common dso_local global i32 0, align 4
@XGBE_SFP_COMM_PCA9545 = common dso_local global i32 0, align 4
@MUX_CHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SFP: mux_address=%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SFP: mux_channel=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_sfp_comm_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_sfp_comm_setup(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 2
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %7, align 8
  store %struct.xgbe_phy_data* %8, %struct.xgbe_phy_data** %3, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @XP_PROP_4, align 4
  %13 = load i32, i32* @MUX_ADDR_HI, align 4
  %14 = call i8* @XP_GET_BITS(i32 %11, i32 %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XP_PROP_4, align 4
  %20 = load i32, i32* @MUX_ADDR_LO, align 4
  %21 = call i8* @XP_GET_BITS(i32 %18, i32 %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @XGBE_SFP_DIRECT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %64

27:                                               ; preds = %1
  %28 = load i32, i32* @XGBE_SFP_COMM_PCA9545, align 4
  %29 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %30 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 2
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %32, %33
  %35 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %36 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %38 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XP_PROP_4, align 4
  %41 = load i32, i32* @MUX_CHAN, align 4
  %42 = call i8* @XP_GET_BITS(i32 %39, i32 %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %45 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %47 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %27
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %54 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %58 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %61 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %26, %49, %27
  ret void
}

declare dso_local i8* @XP_GET_BITS(i32, i32, i32) #1

declare dso_local i64 @netif_msg_probe(%struct.xgbe_prv_data*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
