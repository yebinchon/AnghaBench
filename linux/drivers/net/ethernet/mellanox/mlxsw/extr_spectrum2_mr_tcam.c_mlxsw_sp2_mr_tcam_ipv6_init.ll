; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_ipv6_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_ipv6_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp2_mr_tcam = type { i32, i32, i32 }
%struct.mlxsw_afk_element_usage = type { i32 }

@mlxsw_sp2_mr_tcam_usage_ipv6 = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_PROFILE_MR = common dso_local global i32 0, align 4
@MLXSW_REG_PEMRBT_PROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp2_mr_tcam*)* @mlxsw_sp2_mr_tcam_ipv6_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_mr_tcam_ipv6_init(%struct.mlxsw_sp2_mr_tcam* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp2_mr_tcam*, align 8
  %4 = alloca %struct.mlxsw_afk_element_usage, align 4
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp2_mr_tcam* %0, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %6 = load i32, i32* @mlxsw_sp2_mr_tcam_usage_ipv6, align 4
  %7 = load i32, i32* @mlxsw_sp2_mr_tcam_usage_ipv6, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = call i32 @mlxsw_afk_element_usage_fill(%struct.mlxsw_afk_element_usage* %4, i32 %6, i32 %8)
  %10 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV6, align 4
  %17 = load i32, i32* @MLXSW_SP_ACL_PROFILE_MR, align 4
  %18 = call i32 @mlxsw_sp_acl_ruleset_get(i32 %12, i32 %15, i32 %16, i32 %17, %struct.mlxsw_afk_element_usage* %4)
  %19 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %53

31:                                               ; preds = %1
  %32 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MLXSW_REG_PEMRBT_PROTO_IPV6, align 4
  %36 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mlxsw_sp2_mr_tcam_bind_group(i32 %34, i32 %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %44

43:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %53

44:                                               ; preds = %42
  %45 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %3, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, %struct.mlxsw_sp2_mr_tcam* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mlxsw_sp_acl_ruleset_put(i32 %47, i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %44, %43, %26
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @mlxsw_afk_element_usage_fill(%struct.mlxsw_afk_element_usage*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_get(i32, i32, i32, i32, %struct.mlxsw_afk_element_usage*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlxsw_sp2_mr_tcam_bind_group(i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
