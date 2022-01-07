; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_pause_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_pause_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32 }

@MLXSW_REG_PFCC_LEN = common dso_local global i32 0, align 4
@pfcc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.ethtool_pauseparam*)* @mlxsw_sp_port_pause_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_pause_set(%struct.mlxsw_sp_port* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load i32, i32* @MLXSW_REG_PFCC_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mlxsw_reg_pfcc_pack(i8* %10, i32 %13)
  %15 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mlxsw_reg_pfcc_pprx_set(i8* %10, i32 %17)
  %19 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mlxsw_reg_pfcc_pptx_set(i8* %10, i32 %21)
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @pfcc, align 4
  %29 = call i32 @MLXSW_REG(i32 %28)
  %30 = call i32 @mlxsw_reg_write(i32 %27, i32 %29, i8* %10)
  %31 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %31)
  ret i32 %30
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_pfcc_pack(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_pfcc_pprx_set(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_pfcc_pptx_set(i8*, i32) #2

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
