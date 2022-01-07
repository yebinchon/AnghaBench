; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_vlan_filter_on_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_vlan_filter_on_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i32, i32 }
%struct.e1000_hw = type { i32 }

@__E1000_DOWN = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_CFIEN = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@E1000_RCTL_VFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, i32)* @e1000_vlan_filter_on_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_vlan_filter_on_off(%struct.e1000_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 2
  store %struct.e1000_hw* %8, %struct.e1000_hw** %5, align 8
  %9 = load i32, i32* @__E1000_DOWN, align 4
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 0
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %16 = call i32 @e1000_irq_disable(%struct.e1000_adapter* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__e1000_vlan_mode(%struct.e1000_adapter* %18, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %17
  %28 = load i32, i32* @RCTL, align 4
  %29 = call i32 @er32(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @E1000_RCTL_CFIEN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_PROMISC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* @E1000_RCTL_VFE, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %27
  %47 = load i32, i32* @RCTL, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ew32(i32 %47, i32 %48)
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %51 = call i32 @e1000_update_mng_vlan(%struct.e1000_adapter* %50)
  br label %62

52:                                               ; preds = %17
  %53 = load i32, i32* @RCTL, align 4
  %54 = call i32 @er32(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @E1000_RCTL_VFE, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @RCTL, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ew32(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %52, %46
  %63 = load i32, i32* @__E1000_DOWN, align 4
  %64 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %64, i32 0, i32 0
  %66 = call i32 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %70 = call i32 @e1000_irq_enable(%struct.e1000_adapter* %69)
  br label %71

71:                                               ; preds = %68, %62
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @e1000_irq_disable(%struct.e1000_adapter*) #1

declare dso_local i32 @__e1000_vlan_mode(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000_update_mng_vlan(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_irq_enable(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
