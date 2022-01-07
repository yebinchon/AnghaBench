; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl2_adapter = type { i32, i32, i32 }

@__ATL2_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@__ATL2_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_MANUAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @atl2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atl2_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl2_adapter* %8, %struct.atl2_adapter** %4, align 8
  %9 = load i32, i32* @__ATL2_TESTING, align 4
  %10 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %88

17:                                               ; preds = %1
  %18 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %19 = call i32 @atl2_setup_ring_resources(%struct.atl2_adapter* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %88

24:                                               ; preds = %17
  %25 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %25, i32 0, i32 0
  %27 = call i32 @atl2_init_hw(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %79

33:                                               ; preds = %24
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @atl2_set_multi(%struct.net_device* %34)
  %36 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %37 = call i32 @init_ring_ptrs(%struct.atl2_adapter* %36)
  %38 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %39 = call i32 @atl2_restore_vlan(%struct.atl2_adapter* %38)
  %40 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %41 = call i64 @atl2_configure(%struct.atl2_adapter* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %81

46:                                               ; preds = %33
  %47 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %48 = call i32 @atl2_request_irq(%struct.atl2_adapter* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %80

52:                                               ; preds = %46
  %53 = load i32, i32* @__ATL2_DOWN, align 4
  %54 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %54, i32 0, i32 2
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  %57 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %57, i32 0, i32 1
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 4, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = call i32 @round_jiffies(i64 %63)
  %65 = call i32 @mod_timer(i32* %58, i32 %64)
  %66 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* @REG_MASTER_CTRL, align 4
  %69 = call i32 @ATL2_READ_REG(i32* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* @REG_MASTER_CTRL, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @MASTER_CTRL_MANUAL_INT, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @ATL2_WRITE_REG(i32* %71, i32 %72, i32 %75)
  %77 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %78 = call i32 @atl2_irq_enable(%struct.atl2_adapter* %77)
  store i32 0, i32* %2, align 4
  br label %88

79:                                               ; preds = %30
  br label %80

80:                                               ; preds = %79, %51
  br label %81

81:                                               ; preds = %80, %43
  %82 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %83 = call i32 @atl2_free_ring_resources(%struct.atl2_adapter* %82)
  %84 = load %struct.atl2_adapter*, %struct.atl2_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %84, i32 0, i32 0
  %86 = call i32 @atl2_reset_hw(i32* %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %81, %52, %22, %14
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atl2_setup_ring_resources(%struct.atl2_adapter*) #1

declare dso_local i32 @atl2_init_hw(i32*) #1

declare dso_local i32 @atl2_set_multi(%struct.net_device*) #1

declare dso_local i32 @init_ring_ptrs(%struct.atl2_adapter*) #1

declare dso_local i32 @atl2_restore_vlan(%struct.atl2_adapter*) #1

declare dso_local i64 @atl2_configure(%struct.atl2_adapter*) #1

declare dso_local i32 @atl2_request_irq(%struct.atl2_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @ATL2_READ_REG(i32*, i32) #1

declare dso_local i32 @ATL2_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @atl2_irq_enable(%struct.atl2_adapter*) #1

declare dso_local i32 @atl2_free_ring_resources(%struct.atl2_adapter*) #1

declare dso_local i32 @atl2_reset_hw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
