; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cq_sw_cqe_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cq_sw_cqe_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci_queue = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_pci_queue_elem_info = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlxsw_pci_queue*)* @mlxsw_pci_cq_sw_cqe_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlxsw_pci_cq_sw_cqe_get(%struct.mlxsw_pci_queue* %0) #0 {
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
  %12 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @mlxsw_pci_cqe_owner_get(i32 %16, i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @mlxsw_pci_elem_hw_owned(%struct.mlxsw_pci_queue* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %3, align 8
  %26 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = call i32 (...) @rmb()
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %2, align 8
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_consumer_get(%struct.mlxsw_pci_queue*) #1

declare dso_local i32 @mlxsw_pci_cqe_owner_get(i32, i8*) #1

declare dso_local i64 @mlxsw_pci_elem_hw_owned(%struct.mlxsw_pci_queue*, i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
