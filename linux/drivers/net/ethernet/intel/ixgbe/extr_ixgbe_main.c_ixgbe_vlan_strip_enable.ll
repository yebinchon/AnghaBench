; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_vlan_strip_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_vlan_strip_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_ring**, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_VLNCTRL = common dso_local global i32 0, align 4
@IXGBE_VLNCTRL_VME = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_VME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_vlan_strip_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_vlan_strip_enable(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_ring*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 2
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %66 [
    i32 133, label %14
    i32 132, label %25
    i32 131, label %25
    i32 130, label %25
    i32 129, label %25
    i32 128, label %25
  ]

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = load i32, i32* @IXGBE_VLNCTRL, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @IXGBE_VLNCTRL_VME, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = load i32, i32* @IXGBE_VLNCTRL, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %21, i32 %22, i32 %23)
  br label %67

25:                                               ; preds = %1, %1, %1, %1, %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 1
  %35 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %35, i64 %37
  %39 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %38, align 8
  store %struct.ixgbe_ring* %39, %struct.ixgbe_ring** %7, align 8
  %40 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %41 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_is_ixgbe(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %62

46:                                               ; preds = %32
  %47 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %48 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @IXGBE_RXDCTL(i32 %51)
  %53 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %50, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @IXGBE_RXDCTL_VME, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @IXGBE_RXDCTL(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %46, %45
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %26

65:                                               ; preds = %26
  br label %67

66:                                               ; preds = %1
  br label %67

67:                                               ; preds = %66, %65, %14
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @netif_is_ixgbe(i32) #1

declare dso_local i32 @IXGBE_RXDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
