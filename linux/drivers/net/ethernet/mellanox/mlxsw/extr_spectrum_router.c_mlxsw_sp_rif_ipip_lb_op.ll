; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_ipip_lb_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_ipip_lb_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif_ipip_lb = type { %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif_ipip_lb_config }
%struct.mlxsw_sp_rif = type { %struct.TYPE_4__*, i32, i32, %struct.mlxsw_sp* }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif_ipip_lb_config = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLXSW_REG_RITR_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RITR_LOOPBACK_IF = common dso_local global i32 0, align 4
@MLXSW_REG_RITR_LOOPBACK_IPIP_OPTIONS_GRE_KEY_PRESET = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ritr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_rif_ipip_lb*, i32, i32, i32)* @mlxsw_sp_rif_ipip_lb_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_rif_ipip_lb_op(%struct.mlxsw_sp_rif_ipip_lb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_rif_ipip_lb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_rif_ipip_lb_config, align 4
  %11 = alloca %struct.mlxsw_sp_rif*, align 8
  %12 = alloca %struct.mlxsw_sp*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlxsw_sp_rif_ipip_lb* %0, %struct.mlxsw_sp_rif_ipip_lb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %17, i32 0, i32 1
  %19 = bitcast %struct.mlxsw_sp_rif_ipip_lb_config* %10 to i8*
  %20 = bitcast %struct.mlxsw_sp_rif_ipip_lb_config* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load %struct.mlxsw_sp_rif_ipip_lb*, %struct.mlxsw_sp_rif_ipip_lb** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb, %struct.mlxsw_sp_rif_ipip_lb* %21, i32 0, i32 0
  store %struct.mlxsw_sp_rif* %22, %struct.mlxsw_sp_rif** %11, align 8
  %23 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %23, i32 0, i32 3
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %24, align 8
  store %struct.mlxsw_sp* %25, %struct.mlxsw_sp** %12, align 8
  %26 = load i32, i32* @MLXSW_REG_RITR_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, %struct.mlxsw_sp_rif_ipip_lb_config* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %63 [
    i32 129, label %32
    i32 128, label %60
  ]

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, %struct.mlxsw_sp_rif_ipip_lb_config* %10, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MLXSW_REG_RITR_LOOPBACK_IF, align 4
  %39 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mlxsw_reg_ritr_pack(i8* %29, i32 %37, i32 %38, i32 %41, i32 %44, i32 %49)
  %51 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, %struct.mlxsw_sp_rif_ipip_lb_config* %10, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MLXSW_REG_RITR_LOOPBACK_IPIP_OPTIONS_GRE_KEY_PRESET, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %15, align 4
  %57 = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, %struct.mlxsw_sp_rif_ipip_lb_config* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mlxsw_reg_ritr_loopback_ipip4_pack(i8* %29, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %58)
  br label %63

60:                                               ; preds = %4
  %61 = load i32, i32* @EAFNOSUPPORT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %70

63:                                               ; preds = %4, %32
  %64 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ritr, align 4
  %68 = call i32 @MLXSW_REG(i32 %67)
  %69 = call i32 @mlxsw_reg_write(i32 %66, i32 %68, i8* %29)
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %70

70:                                               ; preds = %63, %60
  %71 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @be32_to_cpu(i32) #3

declare dso_local i32 @mlxsw_reg_ritr_pack(i8*, i32, i32, i32, i32, i32) #3

declare dso_local i32 @mlxsw_reg_ritr_loopback_ipip4_pack(i8*, i32, i32, i32, i32, i32, i32) #3

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #3

declare dso_local i32 @MLXSW_REG(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
