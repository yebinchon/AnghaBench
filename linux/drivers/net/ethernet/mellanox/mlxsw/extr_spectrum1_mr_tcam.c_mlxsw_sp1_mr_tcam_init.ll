; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp1_mr_tcam = type { %struct.mlxsw_sp1_mr_tcam_region* }
%struct.mlxsw_sp1_mr_tcam_region = type { i32 }

@ACL_MAX_TCAM_RULES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLXSW_REG_RTAR_KEY_TYPE_IPV4_MULTICAST = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@MLXSW_REG_RTAR_KEY_TYPE_IPV6_MULTICAST = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*)* @mlxsw_sp1_mr_tcam_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_mr_tcam_init(%struct.mlxsw_sp* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlxsw_sp1_mr_tcam*, align 8
  %7 = alloca %struct.mlxsw_sp1_mr_tcam_region*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.mlxsw_sp1_mr_tcam*
  store %struct.mlxsw_sp1_mr_tcam* %11, %struct.mlxsw_sp1_mr_tcam** %6, align 8
  %12 = load %struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam, %struct.mlxsw_sp1_mr_tcam* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %13, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %14, i64 0
  store %struct.mlxsw_sp1_mr_tcam_region* %15, %struct.mlxsw_sp1_mr_tcam_region** %7, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ACL_MAX_TCAM_RULES, align 4
  %20 = call i32 @MLXSW_CORE_RES_VALID(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %2
  %26 = load i32, i32* @MLXSW_REG_RTAR_KEY_TYPE_IPV4_MULTICAST, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %28 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %7, align 8
  %29 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %28, i64 %29
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mlxsw_sp1_mr_tcam_region_init(%struct.mlxsw_sp* %27, %struct.mlxsw_sp1_mr_tcam_region* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %55

37:                                               ; preds = %25
  %38 = load i32, i32* @MLXSW_REG_RTAR_KEY_TYPE_IPV6_MULTICAST, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %40 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %7, align 8
  %41 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %40, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mlxsw_sp1_mr_tcam_region_init(%struct.mlxsw_sp* %39, %struct.mlxsw_sp1_mr_tcam_region* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %55

49:                                               ; preds = %47
  %50 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %7, align 8
  %51 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %50, i64 %51
  %53 = call i32 @mlxsw_sp1_mr_tcam_region_fini(%struct.mlxsw_sp1_mr_tcam_region* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %48, %35, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local i32 @mlxsw_sp1_mr_tcam_region_init(%struct.mlxsw_sp*, %struct.mlxsw_sp1_mr_tcam_region*, i32) #1

declare dso_local i32 @mlxsw_sp1_mr_tcam_region_fini(%struct.mlxsw_sp1_mr_tcam_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
