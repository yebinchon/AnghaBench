; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_vlan_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_vlan_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_span_entry = type { i32 }
%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_span_parms = type { i32, %struct.mlxsw_sp_port* }

@MLXSW_REG_MPAT_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_MPAT_SPAN_TYPE_REMOTE_ETH = common dso_local global i32 0, align 4
@mpat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_span_entry*, i32, %struct.mlxsw_sp_port*)* @mlxsw_sp_span_entry_vlan_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_span_entry_vlan_configure(%struct.mlxsw_sp_span_entry* %0, i32 %1, %struct.mlxsw_sp_port* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_span_parms, align 8
  %5 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %struct.mlxsw_sp_span_parms* %4 to { i32, %struct.mlxsw_sp_port* }*
  %13 = getelementptr inbounds { i32, %struct.mlxsw_sp_port* }, { i32, %struct.mlxsw_sp_port* }* %12, i32 0, i32 0
  store i32 %1, i32* %13, align 8
  %14 = getelementptr inbounds { i32, %struct.mlxsw_sp_port* }, { i32, %struct.mlxsw_sp_port* }* %12, i32 0, i32 1
  store %struct.mlxsw_sp_port* %2, %struct.mlxsw_sp_port** %14, align 8
  store %struct.mlxsw_sp_span_entry* %0, %struct.mlxsw_sp_span_entry** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 1
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %15, align 8
  store %struct.mlxsw_sp_port* %16, %struct.mlxsw_sp_port** %6, align 8
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %17, i32 0, i32 1
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %18, align 8
  store %struct.mlxsw_sp* %19, %struct.mlxsw_sp** %7, align 8
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @MLXSW_REG_MPAT_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MLXSW_REG_MPAT_SPAN_TYPE_REMOTE_ETH, align 4
  %33 = call i32 @mlxsw_reg_mpat_pack(i8* %26, i32 %30, i32 %31, i32 1, i32 %32)
  %34 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mlxsw_reg_mpat_eth_rspan_pack(i8* %26, i32 %35)
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @mpat, align 4
  %41 = call i32 @MLXSW_REG(i32 %40)
  %42 = call i32 @mlxsw_reg_write(i32 %39, i32 %41, i8* %26)
  %43 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %43)
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_mpat_pack(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_mpat_eth_rspan_pack(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
