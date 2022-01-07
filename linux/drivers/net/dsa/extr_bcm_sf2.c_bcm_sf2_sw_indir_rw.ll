; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_indir_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_indir_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }

@REG_SWITCH_CNTRL = common dso_local global i32 0, align 4
@MDIO_MASTER_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sf2_priv*, i32, i32, i32, i32)* @bcm_sf2_sw_indir_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_sw_indir_rw(%struct.bcm_sf2_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bcm_sf2_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %14 = load i32, i32* @REG_SWITCH_CNTRL, align 4
  %15 = call i32 @reg_readl(%struct.bcm_sf2_priv* %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @MDIO_MASTER_SEL, align 4
  %17 = load i32, i32* %12, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %12, align 4
  %19 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @REG_SWITCH_CNTRL, align 4
  %22 = call i32 @reg_writel(%struct.bcm_sf2_priv* %19, i32 %20, i32 %21)
  store i32 112, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = shl i32 %23, 2
  store i32 %24, i32* %12, align 4
  %25 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @core_writel(%struct.bcm_sf2_priv* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 1
  %31 = or i32 32768, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = shl i32 %32, 2
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @core_readl(%struct.bcm_sf2_priv* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  br label %45

40:                                               ; preds = %5
  %41 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @core_writel(%struct.bcm_sf2_priv* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %47 = load i32, i32* @REG_SWITCH_CNTRL, align 4
  %48 = call i32 @reg_readl(%struct.bcm_sf2_priv* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @MDIO_MASTER_SEL, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @REG_SWITCH_CNTRL, align 4
  %56 = call i32 @reg_writel(%struct.bcm_sf2_priv* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 65535
  ret i32 %58
}

declare dso_local i32 @reg_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @reg_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @core_readl(%struct.bcm_sf2_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
