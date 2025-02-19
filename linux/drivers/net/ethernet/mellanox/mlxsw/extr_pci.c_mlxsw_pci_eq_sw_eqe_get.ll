; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_eq_sw_eqe_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_eq_sw_eqe_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci_queue = type { i32 }
%struct.mlxsw_pci_queue_elem_info = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlxsw_pci_queue*)* @mlxsw_pci_eq_sw_eqe_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlxsw_pci_eq_sw_eqe_get(%struct.mlxsw_pci_queue* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlxsw_pci_queue*, align 8
  %4 = alloca %struct.mlxsw_pci_queue_elem_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_pci_queue* %0, %struct.mlxsw_pci_queue** %3, align 8
  %7 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %8 = call %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_consumer_get(%struct.mlxsw_pci_queue* %7)
  store %struct.mlxsw_pci_queue_elem_info* %8, %struct.mlxsw_pci_queue_elem_info** %4, align 8
  %9 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @mlxsw_pci_eqe_owner_get(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @mlxsw_pci_elem_hw_owned(%struct.mlxsw_pci_queue* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = call i32 (...) @rmb()
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_consumer_get(%struct.mlxsw_pci_queue*) #1

declare dso_local i32 @mlxsw_pci_eqe_owner_get(i8*) #1

declare dso_local i64 @mlxsw_pci_elem_hw_owned(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
