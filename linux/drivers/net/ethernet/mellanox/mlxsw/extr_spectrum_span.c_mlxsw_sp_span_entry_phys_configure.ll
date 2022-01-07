; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_phys_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_phys_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_span_entry = type { i32 }
%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_span_parms = type { %struct.mlxsw_sp_port* }

@MLXSW_REG_MPAT_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_MPAT_SPAN_TYPE_LOCAL_ETH = common dso_local global i32 0, align 4
@mpat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_port*)* @mlxsw_sp_span_entry_phys_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_span_entry_phys_configure(%struct.mlxsw_sp_span_entry* %0, %struct.mlxsw_sp_port* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_span_parms, align 8
  %4 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %3, i32 0, i32 0
  store %struct.mlxsw_sp_port* %1, %struct.mlxsw_sp_port** %11, align 8
  store %struct.mlxsw_sp_span_entry* %0, %struct.mlxsw_sp_span_entry** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %3, i32 0, i32 0
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  store %struct.mlxsw_sp_port* %13, %struct.mlxsw_sp_port** %5, align 8
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %15, align 8
  store %struct.mlxsw_sp* %16, %struct.mlxsw_sp** %6, align 8
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @MLXSW_REG_MPAT_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MLXSW_REG_MPAT_SPAN_TYPE_LOCAL_ETH, align 4
  %30 = call i32 @mlxsw_reg_mpat_pack(i8* %23, i32 %27, i32 %28, i32 1, i32 %29)
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @mpat, align 4
  %35 = call i32 @MLXSW_REG(i32 %34)
  %36 = call i32 @mlxsw_reg_write(i32 %33, i32 %35, i8* %23)
  %37 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %37)
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_mpat_pack(i8*, i32, i32, i32, i32) #2

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
