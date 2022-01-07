; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_fdb_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_fdb_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32, i32, i32 }

@MLXSW_REG_SFDF_LEN = common dso_local global i32 0, align 4
@sfdf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_bridge_port*, i32)* @mlxsw_sp_bridge_port_fdb_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_bridge_port_fdb_flush(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_bridge_port* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @MLXSW_REG_SFDF_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %5, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %23, %20 ], [ %27, %24 ]
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mlxsw_sp_fdb_flush_type(i32 %30)
  %32 = call i32 @mlxsw_reg_sfdf_pack(i8* %17, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @mlxsw_reg_sfdf_fid_set(i8* %17, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mlxsw_reg_sfdf_port_fid_system_port_set(i8* %17, i32 %35)
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @sfdf, align 4
  %41 = call i32 @MLXSW_REG(i32 %40)
  %42 = call i32 @mlxsw_reg_write(i32 %39, i32 %41, i8* %17)
  %43 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %43)
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_sfdf_pack(i8*, i32) #2

declare dso_local i32 @mlxsw_sp_fdb_flush_type(i32) #2

declare dso_local i32 @mlxsw_reg_sfdf_fid_set(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_sfdf_port_fid_system_port_set(i8*, i32) #2

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
