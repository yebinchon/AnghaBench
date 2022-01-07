; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { i32 }

@QCA8K_MDIO_MASTER_MAX_REG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i64 0, align 8
@QCA8K_MDIO_MASTER_BUSY = common dso_local global i64 0, align 8
@QCA8K_MDIO_MASTER_EN = common dso_local global i64 0, align 8
@QCA8K_MDIO_MASTER_READ = common dso_local global i64 0, align 8
@QCA8K_MDIO_MASTER_CTRL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@QCA8K_MDIO_MASTER_DATA_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qca8k_priv*, i32, i64)* @qca8k_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_mdio_read(%struct.qca8k_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qca8k_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @QCA8K_MDIO_MASTER_MAX_REG, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @qca8k_port_to_phy(i32 %17)
  %19 = load i64, i64* @PHY_MAX_ADDR, align 8
  %20 = srem i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* @QCA8K_MDIO_MASTER_BUSY, align 8
  %22 = load i64, i64* @QCA8K_MDIO_MASTER_EN, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @QCA8K_MDIO_MASTER_READ, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @QCA8K_MDIO_MASTER_PHY_ADDR(i64 %26)
  %28 = or i64 %25, %27
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @QCA8K_MDIO_MASTER_REG_ADDR(i64 %29)
  %31 = or i64 %28, %30
  store i64 %31, i64* %9, align 8
  %32 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %33 = load i32, i32* @QCA8K_MDIO_MASTER_CTRL, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @qca8k_write(%struct.qca8k_priv* %32, i32 %33, i64 %34)
  %36 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %37 = load i32, i32* @QCA8K_MDIO_MASTER_CTRL, align 4
  %38 = load i64, i64* @QCA8K_MDIO_MASTER_BUSY, align 8
  %39 = call i64 @qca8k_busy_wait(%struct.qca8k_priv* %36, i32 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %16
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %16
  %45 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %46 = load i32, i32* @QCA8K_MDIO_MASTER_CTRL, align 4
  %47 = call i64 @qca8k_read(%struct.qca8k_priv* %45, i32 %46)
  %48 = load i64, i64* @QCA8K_MDIO_MASTER_DATA_MASK, align 8
  %49 = and i64 %47, %48
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %41, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @qca8k_port_to_phy(i32) #1

declare dso_local i64 @QCA8K_MDIO_MASTER_PHY_ADDR(i64) #1

declare dso_local i64 @QCA8K_MDIO_MASTER_REG_ADDR(i64) #1

declare dso_local i32 @qca8k_write(%struct.qca8k_priv*, i32, i64) #1

declare dso_local i64 @qca8k_busy_wait(%struct.qca8k_priv*, i32, i64) #1

declare dso_local i64 @qca8k_read(%struct.qca8k_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
