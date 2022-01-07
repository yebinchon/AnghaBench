; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_boardinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_boardinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32, %struct.mlxsw_bus_info }
%struct.mlxsw_bus_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, i8*)* @mlxsw_pci_boardinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_boardinfo(%struct.mlxsw_pci* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_pci*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlxsw_bus_info*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %8, i32 0, i32 1
  store %struct.mlxsw_bus_info* %9, %struct.mlxsw_bus_info** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @mlxsw_cmd_mbox_zero(i8* %10)
  %12 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @mlxsw_cmd_boardinfo(i32 %14, i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %6, align 8
  %24 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlxsw_cmd_mbox_boardinfo_vsd_memcpy_from(i8* %22, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlxsw_cmd_mbox_boardinfo_psid_memcpy_from(i8* %27, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @mlxsw_cmd_mbox_zero(i8*) #1

declare dso_local i32 @mlxsw_cmd_boardinfo(i32, i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_boardinfo_vsd_memcpy_from(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_boardinfo_psid_memcpy_from(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
