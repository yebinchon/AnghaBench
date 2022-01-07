; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_chunk_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_chunk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_tcam_chunk = type { i32, %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_vchunk* }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl_tcam_ops* }
%struct.mlxsw_sp_acl_tcam_ops = type { i32 (i32, i32, i32)*, i64 }
%struct.mlxsw_sp_acl_tcam_vchunk = type { i32 }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_tcam_chunk* (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_region*)* @mlxsw_sp_acl_tcam_chunk_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_tcam_chunk* @mlxsw_sp_acl_tcam_chunk_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vchunk* %1, %struct.mlxsw_sp_acl_tcam_region* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_acl_tcam_chunk*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_tcam_vchunk*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_tcam_ops*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_tcam_chunk*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_tcam_vchunk* %1, %struct.mlxsw_sp_acl_tcam_vchunk** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %2, %struct.mlxsw_sp_acl_tcam_region** %7, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %11, align 8
  store %struct.mlxsw_sp_acl_tcam_ops* %12, %struct.mlxsw_sp_acl_tcam_ops** %8, align 8
  %13 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %8, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add i64 24, %15
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlxsw_sp_acl_tcam_chunk* @kzalloc(i64 %16, i32 %17)
  store %struct.mlxsw_sp_acl_tcam_chunk* %18, %struct.mlxsw_sp_acl_tcam_chunk** %9, align 8
  %19 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %9, align 8
  %20 = icmp ne %struct.mlxsw_sp_acl_tcam_chunk* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.mlxsw_sp_acl_tcam_chunk* @ERR_PTR(i32 %23)
  store %struct.mlxsw_sp_acl_tcam_chunk* %24, %struct.mlxsw_sp_acl_tcam_chunk** %4, align 8
  br label %46

25:                                               ; preds = %3
  %26 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %6, align 8
  %27 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %9, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, %struct.mlxsw_sp_acl_tcam_chunk* %27, i32 0, i32 2
  store %struct.mlxsw_sp_acl_tcam_vchunk* %26, %struct.mlxsw_sp_acl_tcam_vchunk** %28, align 8
  %29 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %7, align 8
  %30 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %9, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, %struct.mlxsw_sp_acl_tcam_chunk* %30, i32 0, i32 1
  store %struct.mlxsw_sp_acl_tcam_region* %29, %struct.mlxsw_sp_acl_tcam_region** %31, align 8
  %32 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %8, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %32, i32 0, i32 0
  %34 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %33, align 8
  %35 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %7, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %9, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, %struct.mlxsw_sp_acl_tcam_chunk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %34(i32 %37, i32 %40, i32 %43)
  %45 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %9, align 8
  store %struct.mlxsw_sp_acl_tcam_chunk* %45, %struct.mlxsw_sp_acl_tcam_chunk** %4, align 8
  br label %46

46:                                               ; preds = %25, %21
  %47 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %4, align 8
  ret %struct.mlxsw_sp_acl_tcam_chunk* %47
}

declare dso_local %struct.mlxsw_sp_acl_tcam_chunk* @kzalloc(i64, i32) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_chunk* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
