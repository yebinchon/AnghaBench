; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_cnic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_eth_dev = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.bnx2x = type { i32, i32, i32, %struct.cnic_eth_dev }

@THIS_MODULE = common dso_local global i32 0, align 4
@CDU_ILT_PAGE_SZ = common dso_local global i32 0, align 4
@CNIC_ILT_LINES = common dso_local global i32 0, align 4
@ILT_PAGE_CIDS = common dso_local global i32 0, align 4
@bnx2x_cnic_sp_queue = common dso_local global i32 0, align 4
@bnx2x_drv_ctl = common dso_local global i32 0, align 4
@bnx2x_get_fc_npiv = common dso_local global i32 0, align 4
@bnx2x_register_cnic = common dso_local global i32 0, align 4
@bnx2x_unregister_cnic = common dso_local global i32 0, align 4
@BNX2X_ISCSI_ETH_CL_ID_IDX = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_NO_ISCSI_OOO = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_NO_ISCSI = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_NO_FCOE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"page_size %d, tbl_offset %d, tbl_lines %d, starting cid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cnic_eth_dev* (%struct.net_device*)* @bnx2x_cnic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cnic_eth_dev* @bnx2x_cnic_probe(%struct.net_device* %0) #0 {
  %2 = alloca %struct.cnic_eth_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.cnic_eth_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %6)
  store %struct.bnx2x* %7, %struct.bnx2x** %4, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 3
  store %struct.cnic_eth_dev* %9, %struct.cnic_eth_dev** %5, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = call i64 @NO_ISCSI(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = call i64 @NO_FCOE(%struct.bnx2x* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.cnic_eth_dev* null, %struct.cnic_eth_dev** %2, align 8
  br label %136

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %21 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %20, i32 0, i32 18
  store i32 %19, i32* %21, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = call i32 @CHIP_ID(%struct.bnx2x* %22)
  %24 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %25 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %24, i32 0, i32 17
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %30 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %29, i32 0, i32 16
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %35 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %34, i32 0, i32 15
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %40 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %39, i32 0, i32 14
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %42 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %41, i32 0, i32 0
  store i32 8, i32* %42, align 8
  %43 = load i32, i32* @CDU_ILT_PAGE_SZ, align 4
  %44 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %45 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %47 = call i32 @BP_FUNC(%struct.bnx2x* %46)
  %48 = call i64 @FUNC_ILT_BASE(i32 %47)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %50 = call i32 @bnx2x_cid_ilt_lines(%struct.bnx2x* %49)
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %54 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @CNIC_ILT_LINES, align 4
  %56 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %57 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %59 = call i32 @bnx2x_cid_ilt_lines(%struct.bnx2x* %58)
  %60 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %63 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @bnx2x_cnic_sp_queue, align 4
  %65 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %66 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %65, i32 0, i32 13
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @bnx2x_drv_ctl, align 4
  %68 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %69 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @bnx2x_get_fc_npiv, align 4
  %71 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %72 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @bnx2x_register_cnic, align 4
  %74 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %75 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @bnx2x_unregister_cnic, align 4
  %77 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %78 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %80 = call i32 @BNX2X_FCOE_ETH_CID(%struct.bnx2x* %79)
  %81 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %82 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %84 = load i32, i32* @BNX2X_ISCSI_ETH_CL_ID_IDX, align 4
  %85 = call i32 @bnx2x_cnic_eth_cl_id(%struct.bnx2x* %83, i32 %84)
  %86 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %87 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %89 = call i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x* %88)
  %90 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %91 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %93 = call i64 @NO_ISCSI_OOO(%struct.bnx2x* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %18
  %96 = load i32, i32* @CNIC_DRV_STATE_NO_ISCSI_OOO, align 4
  %97 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %98 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %18
  %102 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %103 = call i64 @NO_ISCSI(%struct.bnx2x* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* @CNIC_DRV_STATE_NO_ISCSI, align 4
  %107 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %108 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %101
  %112 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %113 = call i64 @NO_FCOE(%struct.bnx2x* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* @CNIC_DRV_STATE_NO_FCOE, align 4
  %117 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %118 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %111
  %122 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %123 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %126 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %129 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %132 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %124, i64 %127, i32 %130, i32 %133)
  %135 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  store %struct.cnic_eth_dev* %135, %struct.cnic_eth_dev** %2, align 8
  br label %136

136:                                              ; preds = %121, %17
  %137 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %2, align 8
  ret %struct.cnic_eth_dev* %137
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @NO_ISCSI(%struct.bnx2x*) #1

declare dso_local i64 @NO_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_ID(%struct.bnx2x*) #1

declare dso_local i64 @FUNC_ILT_BASE(i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_cid_ilt_lines(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_FCOE_ETH_CID(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_cnic_eth_cl_id(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x*) #1

declare dso_local i64 @NO_ISCSI_OOO(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
