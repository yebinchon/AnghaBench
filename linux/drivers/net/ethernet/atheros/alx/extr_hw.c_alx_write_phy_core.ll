; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_write_phy_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_write_phy_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i64 }

@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ALX_MDIO_CLK_SEL_25MD4 = common dso_local global i32 0, align 4
@ALX_MDIO_CLK_SEL_25MD128 = common dso_local global i32 0, align 4
@ALX_MDIO_EXTN_DEVAD_SHIFT = common dso_local global i32 0, align 4
@ALX_MDIO_EXTN_REG_SHIFT = common dso_local global i32 0, align 4
@ALX_MDIO_EXTN = common dso_local global i32 0, align 4
@ALX_MDIO_SPRES_PRMBL = common dso_local global i32 0, align 4
@ALX_MDIO_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@ALX_MDIO_DATA_SHIFT = common dso_local global i32 0, align 4
@ALX_MDIO_START = common dso_local global i32 0, align 4
@ALX_MDIO_MODE_EXT = common dso_local global i32 0, align 4
@ALX_MDIO_REG_SHIFT = common dso_local global i32 0, align 4
@ALX_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_hw*, i32, i32, i32, i32)* @alx_write_phy_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_write_phy_core(%struct.alx_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.alx_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %14 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPEED_UNKNOWN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @ALX_MDIO_CLK_SEL_25MD4, align 4
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ALX_MDIO_CLK_SEL_25MD128, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ALX_MDIO_EXTN_DEVAD_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ALX_MDIO_EXTN_REG_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %35 = load i32, i32* @ALX_MDIO_EXTN, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @alx_write_mem32(%struct.alx_hw* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @ALX_MDIO_SPRES_PRMBL, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @ALX_MDIO_CLK_SEL_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %38, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ALX_MDIO_DATA_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %42, %45
  %47 = load i32, i32* @ALX_MDIO_START, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ALX_MDIO_MODE_EXT, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %11, align 4
  br label %67

51:                                               ; preds = %22
  %52 = load i32, i32* @ALX_MDIO_SPRES_PRMBL, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @ALX_MDIO_CLK_SEL_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ALX_MDIO_REG_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ALX_MDIO_DATA_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %60, %63
  %65 = load i32, i32* @ALX_MDIO_START, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %51, %26
  %68 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %69 = load i32, i32* @ALX_MDIO, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @alx_write_mem32(%struct.alx_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %73 = call i32 @alx_wait_mdio_idle(%struct.alx_hw* %72)
  ret i32 %73
}

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_wait_mdio_idle(%struct.alx_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
