; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_route_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_route_create.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i8*, %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_afa_block*, i32)* @mlxsw_sp2_mr_tcam_route_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_mr_tcam_route_create(%struct.mlxsw_sp* %0, i8* %1, i8* %2, %struct.mlxsw_sp_mr_route_key* %3, %struct.mlxsw_afa_block* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %12 = alloca %struct.mlxsw_afa_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlxsw_sp2_mr_route*, align 8
  %15 = alloca %struct.mlxsw_sp2_mr_tcam*, align 8
  %16 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %17 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %18 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.mlxsw_sp_mr_route_key* %3, %struct.mlxsw_sp_mr_route_key** %11, align 8
  store %struct.mlxsw_afa_block* %4, %struct.mlxsw_afa_block** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.mlxsw_sp2_mr_route*
  store %struct.mlxsw_sp2_mr_route* %20, %struct.mlxsw_sp2_mr_route** %14, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.mlxsw_sp2_mr_tcam*
  store %struct.mlxsw_sp2_mr_tcam* %22, %struct.mlxsw_sp2_mr_tcam** %15, align 8
  %23 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %15, align 8
  %24 = load %struct.mlxsw_sp2_mr_route*, %struct.mlxsw_sp2_mr_route** %14, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp2_mr_route, %struct.mlxsw_sp2_mr_route* %24, i32 0, i32 0
  store %struct.mlxsw_sp2_mr_tcam* %23, %struct.mlxsw_sp2_mr_tcam** %25, align 8
  %26 = load %struct.mlxsw_sp2_mr_tcam*, %struct.mlxsw_sp2_mr_tcam** %15, align 8
  %27 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %11, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp2_mr_tcam_proto_ruleset(%struct.mlxsw_sp2_mr_tcam* %26, i32 %29)
  store %struct.mlxsw_sp_acl_ruleset* %30, %struct.mlxsw_sp_acl_ruleset** %16, align 8
  %31 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %16, align 8
  %32 = icmp ne %struct.mlxsw_sp_acl_ruleset* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %70

40:                                               ; preds = %6
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %42 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %16, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %12, align 8
  %46 = call %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_create(%struct.mlxsw_sp* %41, %struct.mlxsw_sp_acl_ruleset* %42, i64 %44, %struct.mlxsw_afa_block* %45, i32* null)
  store %struct.mlxsw_sp_acl_rule* %46, %struct.mlxsw_sp_acl_rule** %17, align 8
  %47 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %17, align 8
  %48 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_rule* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %17, align 8
  %52 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_rule* %51)
  store i32 %52, i32* %7, align 4
  br label %70

53:                                               ; preds = %40
  %54 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %17, align 8
  %55 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @mlxsw_sp2_mr_tcam_rule_parse(%struct.mlxsw_sp_acl_rule* %54, %struct.mlxsw_sp_mr_route_key* %55, i32 %56)
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %59 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %17, align 8
  %60 = call i32 @mlxsw_sp_acl_rule_add(%struct.mlxsw_sp* %58, %struct.mlxsw_sp_acl_rule* %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %65

64:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %70

65:                                               ; preds = %63
  %66 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %67 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %17, align 8
  %68 = call i32 @mlxsw_sp_acl_rule_destroy(%struct.mlxsw_sp* %66, %struct.mlxsw_sp_acl_rule* %67)
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %65, %64, %50, %37
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp2_mr_tcam_proto_ruleset(%struct.mlxsw_sp2_mr_tcam*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*, i64, %struct.mlxsw_afa_block*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @mlxsw_sp2_mr_tcam_rule_parse(%struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_mr_route_key*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_rule_add(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @mlxsw_sp_acl_rule_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
