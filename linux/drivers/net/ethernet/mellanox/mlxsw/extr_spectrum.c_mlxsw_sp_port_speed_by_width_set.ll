; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_speed_by_width_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_speed_by_width_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_2__, i32, %struct.mlxsw_sp* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp = type { i32, %struct.mlxsw_sp_port_type_speed_ops* }
%struct.mlxsw_sp_port_type_speed_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32*)*, i32 (%struct.mlxsw_sp.1*, i32)*, i32 (%struct.mlxsw_sp.2*, i8*, i32, i32, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp.1 = type opaque
%struct.mlxsw_sp.2 = type opaque

@MLXSW_REG_PTYS_LEN = common dso_local global i32 0, align 4
@ptys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, i32)* @mlxsw_sp_port_speed_by_width_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_speed_by_width_set(%struct.mlxsw_sp_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_port_type_speed_ops*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %15, i32 0, i32 2
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %16, align 8
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %6, align 8
  %18 = load i32, i32* @MLXSW_REG_PTYS_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 1
  %24 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %23, align 8
  store %struct.mlxsw_sp_port_type_speed_ops* %24, %struct.mlxsw_sp_port_type_speed_ops** %7, align 8
  %25 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.mlxsw_sp.0*, i32, i32*)*, i32 (%struct.mlxsw_sp.0*, i32, i32*)** %26, align 8
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %29 = bitcast %struct.mlxsw_sp* %28 to %struct.mlxsw_sp.0*
  %30 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %27(%struct.mlxsw_sp.0* %29, i32 %32, i32* %12)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %69

38:                                               ; preds = %2
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %7, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %42, i32 0, i32 1
  %44 = load i32 (%struct.mlxsw_sp.1*, i32)*, i32 (%struct.mlxsw_sp.1*, i32)** %43, align 8
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %46 = bitcast %struct.mlxsw_sp* %45 to %struct.mlxsw_sp.1*
  %47 = load i32, i32* %11, align 4
  %48 = call i32 %44(%struct.mlxsw_sp.1* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.mlxsw_sp_port_type_speed_ops*, %struct.mlxsw_sp_port_type_speed_ops** %7, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, %struct.mlxsw_sp_port_type_speed_ops* %49, i32 0, i32 2
  %51 = load i32 (%struct.mlxsw_sp.2*, i8*, i32, i32, i32)*, i32 (%struct.mlxsw_sp.2*, i8*, i32, i32, i32)** %50, align 8
  %52 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %53 = bitcast %struct.mlxsw_sp* %52 to %struct.mlxsw_sp.2*
  %54 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %51(%struct.mlxsw_sp.2* %53, i8* %21, i32 %56, i32 %57, i32 %61)
  %63 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ptys, align 4
  %67 = call i32 @MLXSW_REG(i32 %66)
  %68 = call i32 @mlxsw_reg_write(i32 %65, i32 %67, i8* %21)
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %69

69:                                               ; preds = %38, %36
  %70 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

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
