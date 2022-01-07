; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_clear_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_clear_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

@EF4_FARCH_FILTER_TABLE_RX_IP = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_TABLE_RX_MAC = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_TABLE_RX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_farch_filter_clear_rx(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %6 = load i32, i32* @EF4_FARCH_FILTER_TABLE_RX_IP, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ef4_farch_filter_table_clear(%struct.ef4_nic* %5, i32 %6, i32 %7)
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %10 = load i32, i32* @EF4_FARCH_FILTER_TABLE_RX_MAC, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ef4_farch_filter_table_clear(%struct.ef4_nic* %9, i32 %10, i32 %11)
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %14 = load i32, i32* @EF4_FARCH_FILTER_TABLE_RX_DEF, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ef4_farch_filter_table_clear(%struct.ef4_nic* %13, i32 %14, i32 %15)
  ret i32 0
}

declare dso_local i32 @ef4_farch_filter_table_clear(%struct.ef4_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
