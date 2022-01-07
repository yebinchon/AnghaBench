; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_enet.c_xge_port_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_enet.c_xge_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xge_pdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ENET_CLKEN = common dso_local global i32 0, align 4
@ENET_SRST = common dso_local global i32 0, align 4
@CFG_MEM_RAM_SHUTDOWN = common dso_local global i32 0, align 4
@BLOCK_MEM_RDY = common dso_local global i32 0, align 4
@MEM_RDY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ECC init failed: %x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENET_SHIM = common dso_local global i32 0, align 4
@DEVM_ARAUX_COH = common dso_local global i32 0, align 4
@DEVM_AWAUX_COH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xge_port_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xge_pdata*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %8)
  store %struct.xge_pdata* %9, %struct.xge_pdata** %4, align 8
  %10 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %11 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  store i64 10, i64* %7, align 8
  %14 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %15 = load i32, i32* @ENET_CLKEN, align 4
  %16 = call i32 @xge_wr_csr(%struct.xge_pdata* %14, i32 %15, i32 3)
  %17 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %18 = load i32, i32* @ENET_SRST, align 4
  %19 = call i32 @xge_wr_csr(%struct.xge_pdata* %17, i32 %18, i32 15)
  %20 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %21 = load i32, i32* @ENET_SRST, align 4
  %22 = call i32 @xge_wr_csr(%struct.xge_pdata* %20, i32 %21, i32 0)
  %23 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %24 = load i32, i32* @CFG_MEM_RAM_SHUTDOWN, align 4
  %25 = call i32 @xge_wr_csr(%struct.xge_pdata* %23, i32 %24, i32 1)
  %26 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %27 = load i32, i32* @CFG_MEM_RAM_SHUTDOWN, align 4
  %28 = call i32 @xge_wr_csr(%struct.xge_pdata* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %42, %1
  %30 = call i32 @usleep_range(i32 100, i32 110)
  %31 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %32 = load i32, i32* @BLOCK_MEM_RDY, align 4
  %33 = call i64 @xge_rd_csr(%struct.xge_pdata* %31, i32 %32)
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @MEM_RDY, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %7, align 8
  %41 = icmp ne i64 %39, 0
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %29, label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @MEM_RDY, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %61

54:                                               ; preds = %44
  %55 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %56 = load i32, i32* @ENET_SHIM, align 4
  %57 = load i32, i32* @DEVM_ARAUX_COH, align 4
  %58 = load i32, i32* @DEVM_AWAUX_COH, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @xge_wr_csr(%struct.xge_pdata* %55, i32 %56, i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %54, %48
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xge_wr_csr(%struct.xge_pdata*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @xge_rd_csr(%struct.xge_pdata*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
