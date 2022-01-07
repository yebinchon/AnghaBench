; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_rule = type { i64, i32, %struct.mlxsw_sp_acl_ruleset* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_acl_profile_ops* }
%struct.mlxsw_sp_acl_profile_ops = type { i64 }
%struct.mlxsw_afa_block = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_ruleset* %1, i64 %2, %struct.mlxsw_afa_block* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlxsw_afa_block*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %13 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp_acl_ruleset* %1, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.mlxsw_afa_block* %3, %struct.mlxsw_afa_block** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %15 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %17, align 8
  store %struct.mlxsw_sp_acl_profile_ops* %18, %struct.mlxsw_sp_acl_profile_ops** %12, align 8
  %19 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %20 = call i32 @mlxsw_sp_acl_ruleset_ref_inc(%struct.mlxsw_sp_acl_ruleset* %19)
  %21 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %12, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 24, %23
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlxsw_sp_acl_rule* @kzalloc(i64 %24, i32 %25)
  store %struct.mlxsw_sp_acl_rule* %26, %struct.mlxsw_sp_acl_rule** %13, align 8
  %27 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  %28 = icmp ne %struct.mlxsw_sp_acl_rule* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  br label %61

32:                                               ; preds = %5
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %37 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %37, i32 0, i32 2
  store %struct.mlxsw_sp_acl_ruleset* %36, %struct.mlxsw_sp_acl_ruleset** %38, align 8
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %10, align 8
  %43 = call i32 @mlxsw_sp_acl_rulei_create(i32 %41, %struct.mlxsw_afa_block* %42)
  %44 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %32
  %52 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %14, align 4
  br label %58

56:                                               ; preds = %32
  %57 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  store %struct.mlxsw_sp_acl_rule* %57, %struct.mlxsw_sp_acl_rule** %6, align 8
  br label %67

58:                                               ; preds = %51
  %59 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %13, align 8
  %60 = call i32 @kfree(%struct.mlxsw_sp_acl_rule* %59)
  br label %61

61:                                               ; preds = %58, %29
  %62 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %63 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %64 = call i32 @mlxsw_sp_acl_ruleset_ref_dec(%struct.mlxsw_sp* %62, %struct.mlxsw_sp_acl_ruleset* %63)
  %65 = load i32, i32* %14, align 4
  %66 = call %struct.mlxsw_sp_acl_rule* @ERR_PTR(i32 %65)
  store %struct.mlxsw_sp_acl_rule* %66, %struct.mlxsw_sp_acl_rule** %6, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %6, align 8
  ret %struct.mlxsw_sp_acl_rule* %68
}

declare dso_local i32 @mlxsw_sp_acl_ruleset_ref_inc(%struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local %struct.mlxsw_sp_acl_rule* @kzalloc(i64, i32) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_create(i32, %struct.mlxsw_afa_block*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_ref_dec(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local %struct.mlxsw_sp_acl_rule* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
