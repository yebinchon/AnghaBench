; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_tngcr_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_tngcr_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tngcr = common dso_local global i32 0, align 4
@MLXSW_REG_TNGCR_FL_NO_COPY = common dso_local global i32 0, align 4
@MLXSW_REG_TNGCR_UDP_SPORT_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @mlxsw_reg_tngcr_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_tngcr_pack(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @tngcr, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @MLXSW_REG_ZERO(i32 %9, i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @mlxsw_reg_tngcr_type_set(i8* %12, i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @mlxsw_reg_tngcr_nve_valid_set(i8* %15, i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @mlxsw_reg_tngcr_nve_ttl_uc_set(i8* %18, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @mlxsw_reg_tngcr_nve_ttl_mc_set(i8* %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @MLXSW_REG_TNGCR_FL_NO_COPY, align 4
  %26 = call i32 @mlxsw_reg_tngcr_nve_flc_set(i8* %24, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @mlxsw_reg_tngcr_nve_flh_set(i8* %27, i32 0)
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @MLXSW_REG_TNGCR_UDP_SPORT_HASH, align 4
  %31 = call i32 @mlxsw_reg_tngcr_nve_udp_sport_type_set(i8* %29, i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @mlxsw_reg_tngcr_nve_udp_sport_prefix_set(i8* %32, i32 0)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @mlxsw_reg_tngcr_nve_group_size_mc_set(i8* %34, i32 1)
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @mlxsw_reg_tngcr_nve_group_size_flood_set(i8* %36, i32 1)
  ret void
}

declare dso_local i32 @MLXSW_REG_ZERO(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_tngcr_type_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_valid_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_ttl_uc_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_ttl_mc_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_flc_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_flh_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_udp_sport_type_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_udp_sport_prefix_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_group_size_mc_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_tngcr_nve_group_size_flood_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
