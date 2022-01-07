; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_enet_ecc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_enet_ecc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { %struct.net_device* }
%struct.net_device = type { i32 }

@ENET_CFG_MEM_RAM_SHUTDOWN_ADDR = common dso_local global i32 0, align 4
@ENET_BLOCK_MEM_RDY_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to release memory from shutdown\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*)* @xgene_enet_ecc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_ecc_init(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  %7 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %8 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  store i32 10, i32* %6, align 4
  %10 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %11 = load i32, i32* @ENET_CFG_MEM_RAM_SHUTDOWN_ADDR, align 4
  %12 = call i32 @xgene_enet_wr_diag_csr(%struct.xgene_enet_pdata* %10, i32 %11, i32 0)
  br label %13

13:                                               ; preds = %25, %1
  %14 = call i32 @usleep_range(i32 100, i32 110)
  %15 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %16 = load i32, i32* @ENET_BLOCK_MEM_RDY_ADDR, align 4
  %17 = call i32 @xgene_enet_rd_diag_csr(%struct.xgene_enet_pdata* %15, i32 %16, i32* %5)
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %22, 0
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %13, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @xgene_enet_wr_diag_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @xgene_enet_rd_diag_csr(%struct.xgene_enet_pdata*, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
