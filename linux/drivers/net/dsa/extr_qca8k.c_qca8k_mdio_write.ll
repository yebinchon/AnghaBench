; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { i32 }

@QCA8K_MDIO_MASTER_MAX_REG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i64 0, align 8
@QCA8K_MDIO_MASTER_BUSY = common dso_local global i64 0, align 8
@QCA8K_MDIO_MASTER_EN = common dso_local global i64 0, align 8
@QCA8K_MDIO_MASTER_WRITE = common dso_local global i64 0, align 8
@QCA8K_MDIO_MASTER_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qca8k_priv*, i32, i64, i32)* @qca8k_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_mdio_write(%struct.qca8k_priv* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qca8k_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @QCA8K_MDIO_MASTER_MAX_REG, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %45

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @qca8k_port_to_phy(i32 %19)
  %21 = load i64, i64* @PHY_MAX_ADDR, align 8
  %22 = srem i64 %20, %21
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* @QCA8K_MDIO_MASTER_BUSY, align 8
  %24 = load i64, i64* @QCA8K_MDIO_MASTER_EN, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @QCA8K_MDIO_MASTER_WRITE, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @QCA8K_MDIO_MASTER_PHY_ADDR(i64 %28)
  %30 = or i64 %27, %29
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @QCA8K_MDIO_MASTER_REG_ADDR(i64 %31)
  %33 = or i64 %30, %32
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @QCA8K_MDIO_MASTER_DATA(i32 %34)
  %36 = or i64 %33, %35
  store i64 %36, i64* %11, align 8
  %37 = load %struct.qca8k_priv*, %struct.qca8k_priv** %6, align 8
  %38 = load i32, i32* @QCA8K_MDIO_MASTER_CTRL, align 4
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @qca8k_write(%struct.qca8k_priv* %37, i32 %38, i64 %39)
  %41 = load %struct.qca8k_priv*, %struct.qca8k_priv** %6, align 8
  %42 = load i32, i32* @QCA8K_MDIO_MASTER_CTRL, align 4
  %43 = load i64, i64* @QCA8K_MDIO_MASTER_BUSY, align 8
  %44 = call i32 @qca8k_busy_wait(%struct.qca8k_priv* %41, i32 %42, i64 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %18, %15
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @qca8k_port_to_phy(i32) #1

declare dso_local i64 @QCA8K_MDIO_MASTER_PHY_ADDR(i64) #1

declare dso_local i64 @QCA8K_MDIO_MASTER_REG_ADDR(i64) #1

declare dso_local i64 @QCA8K_MDIO_MASTER_DATA(i32) #1

declare dso_local i32 @qca8k_write(%struct.qca8k_priv*, i32, i64) #1

declare dso_local i32 @qca8k_busy_wait(%struct.qca8k_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
