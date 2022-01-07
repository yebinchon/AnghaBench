; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp2_kvdl = type { %struct.mlxsw_sp2_kvdl_part** }
%struct.mlxsw_sp2_kvdl_part = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i8*, i32, i32, i32)* @mlxsw_sp2_kvdl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp2_kvdl_free(%struct.mlxsw_sp* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp2_kvdl*, align 8
  %13 = alloca %struct.mlxsw_sp2_kvdl_part*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @mlxsw_sp_kvdl_entry_size(i32 %15)
  %17 = mul i32 %14, %16
  store i32 %17, i32* %11, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.mlxsw_sp2_kvdl*
  store %struct.mlxsw_sp2_kvdl* %19, %struct.mlxsw_sp2_kvdl** %12, align 8
  %20 = load %struct.mlxsw_sp2_kvdl*, %struct.mlxsw_sp2_kvdl** %12, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp2_kvdl, %struct.mlxsw_sp2_kvdl* %20, i32 0, i32 0
  %22 = load %struct.mlxsw_sp2_kvdl_part**, %struct.mlxsw_sp2_kvdl_part*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %22, i64 %24
  %26 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %25, align 8
  store %struct.mlxsw_sp2_kvdl_part* %26, %struct.mlxsw_sp2_kvdl_part** %13, align 8
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %28 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %13, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  call void @mlxsw_sp2_kvdl_part_free(%struct.mlxsw_sp* %27, %struct.mlxsw_sp2_kvdl_part* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @mlxsw_sp_kvdl_entry_size(i32) #1

declare dso_local void @mlxsw_sp2_kvdl_part_free(%struct.mlxsw_sp*, %struct.mlxsw_sp2_kvdl_part*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
