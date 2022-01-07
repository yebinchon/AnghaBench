; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64 }

@QLCNIC_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_detach(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %3 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = call i32 @qlcnic_remove_sysfs_entries(%struct.qlcnic_adapter* %10)
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %13 = call i32 @qlcnic_free_hw_resources(%struct.qlcnic_adapter* %12)
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %15 = call i32 @qlcnic_release_rx_buffers(%struct.qlcnic_adapter* %14)
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %17 = call i32 @qlcnic_free_irq(%struct.qlcnic_adapter* %16)
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %19 = call i32 @qlcnic_napi_del(%struct.qlcnic_adapter* %18)
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %21 = call i32 @qlcnic_free_sw_resources(%struct.qlcnic_adapter* %20)
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @qlcnic_remove_sysfs_entries(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_free_hw_resources(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_release_rx_buffers(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_free_irq(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_napi_del(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_free_sw_resources(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
