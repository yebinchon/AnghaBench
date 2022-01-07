; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021q_index_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021q_index_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_fid*, i8*, i64*)* @mlxsw_sp_fid_8021q_index_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fid_8021q_index_alloc(%struct.mlxsw_sp_fid* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_fid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %9 = alloca i64, align 8
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %11, align 8
  store %struct.mlxsw_sp_fid_family* %12, %struct.mlxsw_sp_fid_family** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %21
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
