; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_region_id_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_region_id_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_tcam = type { i64, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_tcam*, i64*)* @mlxsw_sp_acl_tcam_region_id_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_region_id_get(%struct.mlxsw_sp_acl_tcam* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_acl_tcam*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.mlxsw_sp_acl_tcam* %0, %struct.mlxsw_sp_acl_tcam** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @find_first_zero_bit(i32 %9, i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @__set_bit(i64 %20, i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64*, i64** %5, align 8
  store i64 %25, i64* %26, align 8
  store i32 0, i32* %3, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOBUFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
