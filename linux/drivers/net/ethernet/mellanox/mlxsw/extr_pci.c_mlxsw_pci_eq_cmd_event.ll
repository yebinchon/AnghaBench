; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_eq_cmd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_eq_cmd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_pci*, i8*)* @mlxsw_pci_eq_cmd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_pci_eq_cmd_event(%struct.mlxsw_pci* %0, i8* %1) #0 {
  %3 = alloca %struct.mlxsw_pci*, align 8
  %4 = alloca i8*, align 8
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @mlxsw_pci_eqe_cmd_status_get(i8* %5)
  %7 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %6, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @mlxsw_pci_eqe_cmd_out_param_h_get(i8* %11)
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 32
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @mlxsw_pci_eqe_cmd_out_param_l_get(i8* %15)
  %17 = or i32 %14, %16
  %18 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %26 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @wake_up(i32* %27)
  ret void
}

declare dso_local i32 @mlxsw_pci_eqe_cmd_status_get(i8*) #1

declare dso_local i64 @mlxsw_pci_eqe_cmd_out_param_h_get(i8*) #1

declare dso_local i32 @mlxsw_pci_eqe_cmd_out_param_l_get(i8*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
