; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@__ATL2_DOWN = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_MANUAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl2_adapter*)* @atl2_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_up(%struct.atl2_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl2_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %3, align 8
  %7 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %10, i32 0, i32 0
  %12 = call i32 @atl2_init_hw(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @atl2_set_multi(%struct.net_device* %20)
  %22 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %23 = call i32 @init_ring_ptrs(%struct.atl2_adapter* %22)
  %24 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %25 = call i32 @atl2_restore_vlan(%struct.atl2_adapter* %24)
  %26 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %27 = call i64 @atl2_configure(%struct.atl2_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %50

32:                                               ; preds = %19
  %33 = load i32, i32* @__ATL2_DOWN, align 4
  %34 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %34, i32 0, i32 1
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* @REG_MASTER_CTRL, align 4
  %40 = call i32 @ATL2_READ_REG(i32* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* @REG_MASTER_CTRL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MASTER_CTRL_MANUAL_INT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ATL2_WRITE_REG(i32* %42, i32 %43, i32 %46)
  %48 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %49 = call i32 @atl2_irq_enable(%struct.atl2_adapter* %48)
  br label %50

50:                                               ; preds = %32, %29
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @atl2_init_hw(i32*) #1

declare dso_local i32 @atl2_set_multi(%struct.net_device*) #1

declare dso_local i32 @init_ring_ptrs(%struct.atl2_adapter*) #1

declare dso_local i32 @atl2_restore_vlan(%struct.atl2_adapter*) #1

declare dso_local i64 @atl2_configure(%struct.atl2_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ATL2_READ_REG(i32*, i32) #1

declare dso_local i32 @ATL2_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @atl2_irq_enable(%struct.atl2_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
