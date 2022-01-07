; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_mac_learning_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_mac_learning_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx_port = type { i32, %struct.mlxsw_sx* }
%struct.mlxsw_sx = type { i32 }

@MLXSW_REG_SPMLR_LEN = common dso_local global i32 0, align 4
@spmlr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sx_port*, i32)* @mlxsw_sx_port_mac_learning_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_port_mac_learning_mode_set(%struct.mlxsw_sx_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sx_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.mlxsw_sx_port* %0, %struct.mlxsw_sx_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %8, i32 0, i32 1
  %10 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %9, align 8
  store %struct.mlxsw_sx* %10, %struct.mlxsw_sx** %5, align 8
  %11 = load i32, i32* @MLXSW_REG_SPMLR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mlxsw_reg_spmlr_pack(i8* %14, i32 %17, i32 %18)
  %20 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @spmlr, align 4
  %24 = call i32 @MLXSW_REG(i32 %23)
  %25 = call i32 @mlxsw_reg_write(i32 %22, i32 %24, i8* %14)
  %26 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %26)
  ret i32 %25
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_spmlr_pack(i8*, i32, i32) #2

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
