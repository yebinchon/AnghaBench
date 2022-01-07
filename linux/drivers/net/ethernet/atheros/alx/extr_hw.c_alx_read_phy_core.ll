; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_read_phy_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_read_phy_core.c"
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
@ALX_MDIO_START = common dso_local global i32 0, align 4
@ALX_MDIO_MODE_EXT = common dso_local global i32 0, align 4
@ALX_MDIO_OP_READ = common dso_local global i32 0, align 4
@ALX_MDIO_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@ALX_MDIO_REG_SHIFT = common dso_local global i32 0, align 4
@ALX_MDIO = common dso_local global i32 0, align 4
@ALX_MDIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_hw*, i32, i32, i32, i32*)* @alx_read_phy_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_read_phy_core(%struct.alx_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.alx_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %17 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SPEED_UNKNOWN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @ALX_MDIO_CLK_SEL_25MD4, align 4
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @ALX_MDIO_CLK_SEL_25MD128, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ALX_MDIO_EXTN_DEVAD_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ALX_MDIO_EXTN_REG_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %38 = load i32, i32* @ALX_MDIO_EXTN, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @alx_write_mem32(%struct.alx_hw* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @ALX_MDIO_SPRES_PRMBL, align 4
  %42 = load i32, i32* @ALX_MDIO_START, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ALX_MDIO_MODE_EXT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ALX_MDIO_OP_READ, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @ALX_MDIO_CLK_SEL_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  store i32 %51, i32* %12, align 4
  br label %66

52:                                               ; preds = %25
  %53 = load i32, i32* @ALX_MDIO_SPRES_PRMBL, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @ALX_MDIO_CLK_SEL_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @ALX_MDIO_REG_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %57, %60
  %62 = load i32, i32* @ALX_MDIO_START, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ALX_MDIO_OP_READ, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %52, %29
  %67 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %68 = load i32, i32* @ALX_MDIO, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @alx_write_mem32(%struct.alx_hw* %67, i32 %68, i32 %69)
  %71 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %72 = call i32 @alx_wait_mdio_idle(%struct.alx_hw* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %85

77:                                               ; preds = %66
  %78 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %79 = load i32, i32* @ALX_MDIO, align 4
  %80 = call i32 @alx_read_mem32(%struct.alx_hw* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @ALX_MDIO_DATA, align 4
  %83 = call i32 @ALX_GET_FIELD(i32 %81, i32 %82)
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %77, %75
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_wait_mdio_idle(%struct.alx_hw*) #1

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @ALX_GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
