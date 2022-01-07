; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_route_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_route_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { i32 }
%struct.mlxsw_afa_block = type { i32 }
%struct.mlxsw_sp2_mr_route = type { %struct.mlxsw_sp2_mr_tcam* }
%struct.mlxsw_sp2_mr_tcam = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp_acl_rule = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_afa_block*)* @mlxsw_sp2_mr_tcam_route_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_mr_tcam_route_update(%struct.mlxsw_sp* %0, i8* %1, %struct.mlxsw_sp_mr_route_key* %2, %struct.mlxsw_afa_block* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %9 = alloca %struct.mlxsw_afa_block*, align 8
  %10 = alloca %struct.mlxsw_sp2_mr_route*, align 8
  %11 = alloca %struct.mlxsw_sp2_mr_tcam*, align 8
  %12 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %13 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.mlxsw_sp_mr_route_key* %2, %struct.mlxsw_sp_mr_route_key** %8, align 8
  store %struct.mlxsw_afa_block* %3, %struct.mlxsw_afa_block** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.mlxsw_sp2_mr_route*
  store %struct.mlxsw_sp2_mr_route* %15, %struct.mlxsw_sp2_mr_route** %10, align 8
  %16 = load %struct.mlxsw_sp2_mr_route*, %struct.mlxsw_sp2_mr_route** %10, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp2_mr_route, %struct.mlxsw_sp2_mr_route* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %17, align 8
  store %struct.mlxsw_sp2_mr_tcam* %18, %struct.mlxsw_sp2_mr_tcam** %11, align 8
  %19 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %11, align 8
  %20 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp2_mr_tcam_proto_ruleset(%struct.mlxsw_sp2_mr_tcam* %19, i32 %22)
  store %struct.mlxsw_sp_acl_ruleset* %23, %struct.mlxsw_sp_acl_ruleset** %12, align 8
  %24 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %12, align 8
  %25 = icmp ne %struct.mlxsw_sp_acl_ruleset* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %53

33:                                               ; preds = %4
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %35 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %12, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = call %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_lookup(%struct.mlxsw_sp* %34, %struct.mlxsw_sp_acl_ruleset* %35, i64 %37)
  store %struct.mlxsw_sp_acl_rule* %38, %struct.mlxsw_sp_acl_rule** %13, align 8
  %39 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  %40 = icmp ne %struct.mlxsw_sp_acl_rule* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %33
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %50 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  %51 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %9, align 8
  %52 = call i32 @mlxsw_sp_acl_rule_action_replace(%struct.mlxsw_sp* %49, %struct.mlxsw_sp_acl_rule* %50, %struct.mlxsw_afa_block* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %45, %30
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp2_mr_tcam_proto_ruleset(%struct.mlxsw_sp2_mr_tcam*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_lookup(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*, i64) #1

declare dso_local i32 @mlxsw_sp_acl_rule_action_replace(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_afa_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
