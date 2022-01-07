; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_get_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_get_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ALX_PHY_CTRL = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_DSPRST_OUT = common dso_local global i64 0, align 8
@ALX_DRV_PHY_UNKNOWN = common dso_local global i64 0, align 8
@ALX_DRV = common dso_local global i32 0, align 4
@ALX_DRV_PHY = common dso_local global i32 0, align 4
@ALX_MII_DBG_ADDR = common dso_local global i32 0, align 4
@ALX_PHY_INITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.alx_hw*)* @alx_get_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alx_get_phy_config(%struct.alx_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.alx_hw* %0, %struct.alx_hw** %3, align 8
  %6 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %7 = load i32, i32* @ALX_PHY_CTRL, align 4
  %8 = call i64 @alx_read_mem32(%struct.alx_hw* %6, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @ALX_PHY_CTRL_DSPRST_OUT, align 8
  %11 = and i64 %9, %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @ALX_DRV_PHY_UNKNOWN, align 8
  store i64 %14, i64* %2, align 8
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %17 = load i32, i32* @ALX_DRV, align 4
  %18 = call i64 @alx_read_mem32(%struct.alx_hw* %16, i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @ALX_DRV_PHY, align 4
  %21 = call i64 @ALX_GET_FIELD(i64 %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* @ALX_DRV_PHY_UNKNOWN, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i64, i64* @ALX_DRV_PHY_UNKNOWN, align 8
  store i64 %26, i64* %2, align 8
  br label %38

27:                                               ; preds = %15
  %28 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %29 = load i32, i32* @ALX_MII_DBG_ADDR, align 4
  %30 = call i32 @alx_read_phy_reg(%struct.alx_hw* %28, i32 %29, i64* %5)
  %31 = load i64, i64* @ALX_PHY_INITED, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %2, align 8
  br label %38

36:                                               ; preds = %27
  %37 = load i64, i64* @ALX_DRV_PHY_UNKNOWN, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %34, %25, %13
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i64 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i64 @ALX_GET_FIELD(i64, i32) #1

declare dso_local i32 @alx_read_phy_reg(%struct.alx_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
