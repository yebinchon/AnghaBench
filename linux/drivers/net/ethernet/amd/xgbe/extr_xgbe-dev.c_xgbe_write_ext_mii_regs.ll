; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_write_ext_mii_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_write_ext_mii_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32 }

@MAC_MDIOSCAR = common dso_local global i32 0, align 4
@MAC_MDIOSCCDR = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mdio write operation timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32, i32, i32)* @xgbe_write_ext_mii_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_write_ext_mii_regs(%struct.xgbe_prv_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 1
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @xgbe_create_mdio_sca(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %19 = load i32, i32* @MAC_MDIOSCAR, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %18, i32 %19, i32 %20)
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MAC_MDIOSCCDR, align 4
  %24 = load i32, i32* @DATA, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @XGMAC_SET_BITS(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MAC_MDIOSCCDR, align 4
  %29 = load i32, i32* @CMD, align 4
  %30 = call i32 @XGMAC_SET_BITS(i32 %27, i32 %28, i32 %29, i32 1)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MAC_MDIOSCCDR, align 4
  %33 = load i32, i32* @BUSY, align 4
  %34 = call i32 @XGMAC_SET_BITS(i32 %31, i32 %32, i32 %33, i32 1)
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %36 = load i32, i32* @MAC_MDIOSCCDR, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %35, i32 %36, i32 %37)
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %40 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %39, i32 0, i32 1
  %41 = load i32, i32* @HZ, align 4
  %42 = call i32 @wait_for_completion_timeout(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %4
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netdev_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @xgbe_create_mdio_sca(i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
