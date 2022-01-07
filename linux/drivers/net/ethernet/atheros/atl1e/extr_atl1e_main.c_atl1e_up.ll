; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@__AT_DOWN = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_MANUAL_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1e_up(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %3, align 8
  %7 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %7, i32 0, i32 3
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %10, i32 0, i32 0
  %12 = call i32 @atl1e_init_hw(i32* %11)
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
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %21 = call i32 @atl1e_init_ring_ptrs(%struct.atl1e_adapter* %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @atl1e_set_multi(%struct.net_device* %22)
  %24 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %25 = call i32 @atl1e_restore_vlan(%struct.atl1e_adapter* %24)
  %26 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %27 = call i64 @atl1e_configure(%struct.atl1e_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %53

32:                                               ; preds = %19
  %33 = load i32, i32* @__AT_DOWN, align 4
  %34 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %34, i32 0, i32 2
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %37, i32 0, i32 1
  %39 = call i32 @napi_enable(i32* %38)
  %40 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %41 = call i32 @atl1e_irq_enable(%struct.atl1e_adapter* %40)
  %42 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* @REG_MASTER_CTRL, align 4
  %45 = call i32 @AT_READ_REG(i32* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* @REG_MASTER_CTRL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MASTER_CTRL_MANUAL_INT, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @AT_WRITE_REG(i32* %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %32, %29
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @atl1e_init_hw(i32*) #1

declare dso_local i32 @atl1e_init_ring_ptrs(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_set_multi(%struct.net_device*) #1

declare dso_local i32 @atl1e_restore_vlan(%struct.atl1e_adapter*) #1

declare dso_local i64 @atl1e_configure(%struct.atl1e_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @atl1e_irq_enable(%struct.atl1e_adapter*) #1

declare dso_local i32 @AT_READ_REG(i32*, i32) #1

declare dso_local i32 @AT_WRITE_REG(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
