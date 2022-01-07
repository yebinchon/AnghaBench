; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_extirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_extirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32, i64, i32, i32, i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.skge_port = type { i32 }

@SK_PHY_BCOM = common dso_local global i64 0, align 8
@IS_EXT_REG = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @skge_extirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_extirq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.skge_port*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.skge_hw*
  store %struct.skge_hw* %8, %struct.skge_hw** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %53, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %12 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %9
  %16 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %17 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %16, i32 0, i32 5
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 %20
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i64 @netif_running(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %15
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call %struct.skge_port* @netdev_priv(%struct.net_device* %27)
  store %struct.skge_port* %28, %struct.skge_port** %6, align 8
  %29 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %30 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %29, i32 0, i32 4
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %33 = call i32 @is_genesis(%struct.skge_hw* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %37 = call i32 @yukon_phy_intr(%struct.skge_port* %36)
  br label %48

38:                                               ; preds = %26
  %39 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %40 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SK_PHY_BCOM, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %46 = call i32 @bcom_phy_intr(%struct.skge_port* %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %50 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %49, i32 0, i32 4
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %15
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %9

56:                                               ; preds = %9
  %57 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %58 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %57, i32 0, i32 2
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load i32, i32* @IS_EXT_REG, align 4
  %61 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %62 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %66 = load i32, i32* @B0_IMSK, align 4
  %67 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %68 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @skge_write32(%struct.skge_hw* %65, i32 %66, i32 %69)
  %71 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %72 = load i32, i32* @B0_IMSK, align 4
  %73 = call i32 @skge_read32(%struct.skge_hw* %71, i32 %72)
  %74 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %75 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %74, i32 0, i32 2
  %76 = call i32 @spin_unlock_irq(i32* %75)
  ret void
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @yukon_phy_intr(%struct.skge_port*) #1

declare dso_local i32 @bcom_phy_intr(%struct.skge_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
