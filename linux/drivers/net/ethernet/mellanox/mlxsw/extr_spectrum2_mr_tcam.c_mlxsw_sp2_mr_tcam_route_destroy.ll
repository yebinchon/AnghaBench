; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_route_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_route_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { i32 }
%struct.mlxsw_sp2_mr_tcam = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp_acl_rule = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i8*, i8*, %struct.mlxsw_sp_mr_route_key*)* @mlxsw_sp2_mr_tcam_route_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp2_mr_tcam_route_destroy(%struct.mlxsw_sp* %0, i8* %1, i8* %2, %struct.mlxsw_sp_mr_route_key* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %9 = alloca %struct.mlxsw_sp2_mr_tcam*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %11 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.mlxsw_sp_mr_route_key* %3, %struct.mlxsw_sp_mr_route_key** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mlxsw_sp2_mr_tcam*
  store %struct.mlxsw_sp2_mr_tcam* %13, %struct.mlxsw_sp2_mr_tcam** %9, align 8
  %14 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %9, align 8
  %15 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %8, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp2_mr_tcam_proto_ruleset(%struct.mlxsw_sp2_mr_tcam* %14, i32 %17)
  store %struct.mlxsw_sp_acl_ruleset* %18, %struct.mlxsw_sp_acl_ruleset** %10, align 8
  %19 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %10, align 8
  %20 = icmp ne %struct.mlxsw_sp_acl_ruleset* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %46

26:                                               ; preds = %4
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %28 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = call %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_lookup(%struct.mlxsw_sp* %27, %struct.mlxsw_sp_acl_ruleset* %28, i64 %30)
  store %struct.mlxsw_sp_acl_rule* %31, %struct.mlxsw_sp_acl_rule** %11, align 8
  %32 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %11, align 8
  %33 = icmp ne %struct.mlxsw_sp_acl_rule* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %46

39:                                               ; preds = %26
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %41 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %11, align 8
  %42 = call i32 @mlxsw_sp_acl_rule_del(%struct.mlxsw_sp* %40, %struct.mlxsw_sp_acl_rule* %41)
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %44 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %11, align 8
  %45 = call i32 @mlxsw_sp_acl_rule_destroy(%struct.mlxsw_sp* %43, %struct.mlxsw_sp_acl_rule* %44)
  br label %46

46:                                               ; preds = %39, %38, %25
  ret void
}

declare dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp2_mr_tcam_proto_ruleset(%struct.mlxsw_sp2_mr_tcam*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_lookup(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*, i64) #1

declare dso_local i32 @mlxsw_sp_acl_rule_del(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @mlxsw_sp_acl_rule_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
