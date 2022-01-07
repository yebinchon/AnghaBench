; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_enet_ecc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_enet_ecc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_mdio_pdata = type { i32 }

@MENET_CFG_MEM_RAM_SHUTDOWN_ADDR = common dso_local global i32 0, align 4
@MENET_BLOCK_MEM_RDY_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to release memory from shutdown\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_mdio_pdata*)* @xgene_enet_ecc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_ecc_init(%struct.xgene_mdio_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_mdio_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgene_mdio_pdata* %0, %struct.xgene_mdio_pdata** %3, align 8
  store i32 10, i32* %5, align 4
  %6 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %7 = load i32, i32* @MENET_CFG_MEM_RAM_SHUTDOWN_ADDR, align 4
  %8 = call i32 @xgene_menet_wr_diag_csr(%struct.xgene_mdio_pdata* %6, i32 %7, i32 0)
  br label %9

9:                                                ; preds = %21, %1
  %10 = call i32 @usleep_range(i32 100, i32 110)
  %11 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %12 = load i32, i32* @MENET_BLOCK_MEM_RDY_ADDR, align 4
  %13 = call i32 @xgene_menet_rd_diag_csr(%struct.xgene_mdio_pdata* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %18, 0
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %9, label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %28 = getelementptr inbounds %struct.xgene_mdio_pdata, %struct.xgene_mdio_pdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @xgene_menet_wr_diag_csr(%struct.xgene_mdio_pdata*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @xgene_menet_rd_diag_csr(%struct.xgene_mdio_pdata*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
