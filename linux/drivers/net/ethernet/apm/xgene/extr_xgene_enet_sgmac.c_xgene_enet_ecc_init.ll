; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_ecc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_ecc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { %struct.net_device* }
%struct.net_device = type { i32 }

@ENET_CFG_MEM_RAM_SHUTDOWN_ADDR = common dso_local global i32 0, align 4
@ENET_BLOCK_MEM_RDY_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"+ ecc_init done, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to release memory from shutdown\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*)* @xgene_enet_ecc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_ecc_init(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  %8 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %12 = load i32, i32* @ENET_CFG_MEM_RAM_SHUTDOWN_ADDR, align 4
  %13 = call i32 @xgene_enet_rd_diag_csr(%struct.xgene_enet_pdata* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %15 = load i32, i32* @ENET_BLOCK_MEM_RDY_ADDR, align 4
  %16 = call i32 @xgene_enet_rd_diag_csr(%struct.xgene_enet_pdata* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @netdev_dbg(%struct.net_device* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

25:                                               ; preds = %19, %1
  %26 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %27 = load i32, i32* @ENET_CFG_MEM_RAM_SHUTDOWN_ADDR, align 4
  %28 = call i32 @xgene_enet_wr_diag_csr(%struct.xgene_enet_pdata* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %38, %25
  %30 = call i32 @usleep_range(i32 100, i32 110)
  %31 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %32 = load i32, i32* @ENET_BLOCK_MEM_RDY_ADDR, align 4
  %33 = call i32 @xgene_enet_rd_diag_csr(%struct.xgene_enet_pdata* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %47

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %29, label %42

42:                                               ; preds = %38
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %36, %22
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @xgene_enet_rd_diag_csr(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @xgene_enet_wr_diag_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
