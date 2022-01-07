; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_rmft2_ipv6_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_rmft2_ipv6_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@MLXSW_REG_RMFT2_TYPE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*)* @mlxsw_reg_rmft2_ipv6_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_rmft2_ipv6_pack(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10) #0 {
  %12 = alloca %struct.in6_addr, align 4
  %13 = alloca %struct.in6_addr, align 4
  %14 = alloca %struct.in6_addr, align 4
  %15 = alloca %struct.in6_addr, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  store i32 %6, i32* %23, align 4
  %24 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %13, i32 0, i32 0
  store i32 %7, i32* %24, align 4
  %25 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %14, i32 0, i32 0
  store i32 %8, i32* %25, align 4
  %26 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %15, i32 0, i32 0
  store i32 %9, i32* %26, align 4
  store i8* %0, i8** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i8* %10, i8** %22, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %21, align 4
  %33 = load i8*, i8** %22, align 8
  %34 = call i32 @mlxsw_reg_rmft2_common_pack(i8* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i8* %33)
  %35 = load i8*, i8** %16, align 8
  %36 = load i32, i32* @MLXSW_REG_RMFT2_TYPE_IPV6, align 4
  %37 = call i32 @mlxsw_reg_rmft2_type_set(i8* %35, i32 %36)
  %38 = load i8*, i8** %16, align 8
  %39 = bitcast %struct.in6_addr* %12 to i8*
  %40 = call i32 @mlxsw_reg_rmft2_dip6_memcpy_to(i8* %38, i8* %39)
  %41 = load i8*, i8** %16, align 8
  %42 = bitcast %struct.in6_addr* %13 to i8*
  %43 = call i32 @mlxsw_reg_rmft2_dip6_mask_memcpy_to(i8* %41, i8* %42)
  %44 = load i8*, i8** %16, align 8
  %45 = bitcast %struct.in6_addr* %14 to i8*
  %46 = call i32 @mlxsw_reg_rmft2_sip6_memcpy_to(i8* %44, i8* %45)
  %47 = load i8*, i8** %16, align 8
  %48 = bitcast %struct.in6_addr* %15 to i8*
  %49 = call i32 @mlxsw_reg_rmft2_sip6_mask_memcpy_to(i8* %47, i8* %48)
  ret void
}

declare dso_local i32 @mlxsw_reg_rmft2_common_pack(i8*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @mlxsw_reg_rmft2_type_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_rmft2_dip6_memcpy_to(i8*, i8*) #1

declare dso_local i32 @mlxsw_reg_rmft2_dip6_mask_memcpy_to(i8*, i8*) #1

declare dso_local i32 @mlxsw_reg_rmft2_sip6_memcpy_to(i8*, i8*) #1

declare dso_local i32 @mlxsw_reg_rmft2_sip6_mask_memcpy_to(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
