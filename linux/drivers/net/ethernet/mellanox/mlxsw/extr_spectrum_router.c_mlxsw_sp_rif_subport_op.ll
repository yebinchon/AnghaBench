; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { %struct.TYPE_2__*, i32, i32, %struct.mlxsw_sp* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif_subport = type { i32, i32, i32, i64 }

@MLXSW_REG_RITR_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RITR_SP_IF = common dso_local global i32 0, align 4
@ritr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_rif*, i32)* @mlxsw_sp_rif_subport_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_rif_subport_op(%struct.mlxsw_sp_rif* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_rif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_rif_subport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %9, i32 0, i32 3
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  store %struct.mlxsw_sp* %11, %struct.mlxsw_sp** %5, align 8
  %12 = load i32, i32* @MLXSW_REG_RITR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %17 = call %struct.mlxsw_sp_rif_subport* @mlxsw_sp_rif_subport_rif(%struct.mlxsw_sp_rif* %16)
  store %struct.mlxsw_sp_rif_subport* %17, %struct.mlxsw_sp_rif_subport** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MLXSW_REG_RITR_SP_IF, align 4
  %20 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlxsw_reg_ritr_pack(i8* %15, i32 %18, i32 %19, i32 %22, i32 %25, i32 %30)
  %32 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlxsw_reg_ritr_mac_pack(i8* %15, i32 %36)
  %38 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %6, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %6, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  br label %53

49:                                               ; preds = %2
  %50 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %6, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  %55 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %6, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @mlxsw_reg_ritr_sp_if_pack(i8* %15, i64 %40, i32 %54, i32 %57)
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ritr, align 4
  %63 = call i32 @MLXSW_REG(i32 %62)
  %64 = call i32 @mlxsw_reg_write(i32 %61, i32 %63, i8* %15)
  %65 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mlxsw_sp_rif_subport* @mlxsw_sp_rif_subport_rif(%struct.mlxsw_sp_rif*) #2

declare dso_local i32 @mlxsw_reg_ritr_pack(i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_ritr_mac_pack(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_ritr_sp_if_pack(i8*, i64, i32, i32) #2

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
