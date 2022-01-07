; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_get_phy_token.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_get_phy_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hic_phy_token_req = type { %struct.TYPE_6__, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@FW_PHY_TOKEN_REQ_CMD = common dso_local global i32 0, align 4
@FW_PHY_TOKEN_REQ_LEN = common dso_local global i32 0, align 4
@FW_DEFAULT_CHECKSUM = common dso_local global i32 0, align 4
@FW_PHY_TOKEN_REQ = common dso_local global i32 0, align 4
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@FW_PHY_TOKEN_OK = common dso_local global i64 0, align 8
@FW_PHY_TOKEN_RETRY = common dso_local global i64 0, align 8
@IXGBE_ERR_FW_RESP_INVALID = common dso_local global i64 0, align 8
@IXGBE_ERR_TOKEN_RETRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_get_phy_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_phy_token(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_hic_phy_token_req, align 8
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load i32, i32* @FW_PHY_TOKEN_REQ_CMD, align 4
  %7 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, %struct.ixgbe_hic_phy_token_req* %4, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @FW_PHY_TOKEN_REQ_LEN, align 4
  %10 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, %struct.ixgbe_hic_phy_token_req* %4, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, %struct.ixgbe_hic_phy_token_req* %4, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @FW_DEFAULT_CHECKSUM, align 4
  %16 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, %struct.ixgbe_hic_phy_token_req* %4, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, %struct.ixgbe_hic_phy_token_req* %4, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @FW_PHY_TOKEN_REQ, align 4
  %24 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, %struct.ixgbe_hic_phy_token_req* %4, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, %struct.ixgbe_hic_phy_token_req* %4, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %28 = call i64 @ixgbe_host_interface_command(%struct.ixgbe_hw* %26, %struct.ixgbe_hic_phy_token_req* %4, i32 48, i32 %27, i32 1)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %2, align 8
  br label %52

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, %struct.ixgbe_hic_phy_token_req* %4, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FW_PHY_TOKEN_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i64 0, i64* %2, align 8
  br label %52

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.ixgbe_hic_phy_token_req, %struct.ixgbe_hic_phy_token_req* %4, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FW_PHY_TOKEN_RETRY, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* @IXGBE_ERR_FW_RESP_INVALID, align 8
  store i64 %49, i64* %2, align 8
  br label %52

50:                                               ; preds = %41
  %51 = load i64, i64* @IXGBE_ERR_TOKEN_RETRY, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %50, %48, %40, %31
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i64 @ixgbe_host_interface_command(%struct.ixgbe_hw*, %struct.ixgbe_hic_phy_token_req*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
