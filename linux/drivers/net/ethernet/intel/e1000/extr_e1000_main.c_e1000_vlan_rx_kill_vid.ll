; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@__E1000_DOWN = common dso_local global i32 0, align 4
@VFTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @e1000_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.e1000_adapter* %12, %struct.e1000_adapter** %7, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 2
  store %struct.e1000_hw* %14, %struct.e1000_hw** %8, align 8
  %15 = load i32, i32* @__E1000_DOWN, align 4
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %22 = call i32 @e1000_irq_disable(%struct.e1000_adapter* %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @__E1000_DOWN, align 4
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 1
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %31 = call i32 @e1000_irq_enable(%struct.e1000_adapter* %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 5
  %35 = and i32 %34, 127
  store i32 %35, i32* %10, align 4
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %37 = load i32, i32* @VFTA, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %36, i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 31
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @e1000_write_vfta(%struct.e1000_hw* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %52 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clear_bit(i32 %50, i32 %53)
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %56 = call i32 @e1000_vlan_used(%struct.e1000_adapter* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %32
  %59 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %60 = call i32 @e1000_vlan_filter_on_off(%struct.e1000_adapter* %59, i32 0)
  br label %61

61:                                               ; preds = %58, %32
  ret i32 0
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @e1000_irq_disable(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_irq_enable(%struct.e1000_adapter*) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_write_vfta(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @e1000_vlan_used(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_vlan_filter_on_off(%struct.e1000_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
