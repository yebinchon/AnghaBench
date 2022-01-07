; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rulei_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rulei_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_rule_info = type { i32, %struct.mlxsw_afa_block* }
%struct.mlxsw_sp_acl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_afa_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rulei_create(%struct.mlxsw_sp_acl* %0, %struct.mlxsw_afa_block* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %4 = alloca %struct.mlxsw_sp_acl*, align 8
  %5 = alloca %struct.mlxsw_afa_block*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_acl* %0, %struct.mlxsw_sp_acl** %4, align 8
  store %struct.mlxsw_afa_block* %1, %struct.mlxsw_afa_block** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlxsw_sp_acl_rule_info* @kzalloc(i32 16, i32 %8)
  store %struct.mlxsw_sp_acl_rule_info* %9, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %10 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %11 = icmp ne %struct.mlxsw_sp_acl_rule_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.mlxsw_sp_acl_rule_info* null, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %15 = icmp ne %struct.mlxsw_afa_block* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %18 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %18, i32 0, i32 1
  store %struct.mlxsw_afa_block* %17, %struct.mlxsw_afa_block** %19, align 8
  %20 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  store %struct.mlxsw_sp_acl_rule_info* %20, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  br label %49

21:                                               ; preds = %13
  %22 = load %struct.mlxsw_sp_acl*, %struct.mlxsw_sp_acl** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl, %struct.mlxsw_sp_acl* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.mlxsw_afa_block* @mlxsw_afa_block_create(i32 %26)
  %28 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %28, i32 0, i32 1
  store %struct.mlxsw_afa_block* %27, %struct.mlxsw_afa_block** %29, align 8
  %30 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %30, i32 0, i32 1
  %32 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %31, align 8
  %33 = call i64 @IS_ERR(%struct.mlxsw_afa_block* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %36, i32 0, i32 1
  %38 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %37, align 8
  %39 = call i32 @PTR_ERR(%struct.mlxsw_afa_block* %38)
  store i32 %39, i32* %7, align 4
  br label %44

40:                                               ; preds = %21
  %41 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  store %struct.mlxsw_sp_acl_rule_info* %43, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %46 = call i32 @kfree(%struct.mlxsw_sp_acl_rule_info* %45)
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.mlxsw_sp_acl_rule_info* @ERR_PTR(i32 %47)
  store %struct.mlxsw_sp_acl_rule_info* %48, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  br label %49

49:                                               ; preds = %44, %40, %16, %12
  %50 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  ret %struct.mlxsw_sp_acl_rule_info* %50
}

declare dso_local %struct.mlxsw_sp_acl_rule_info* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_afa_block* @mlxsw_afa_block_create(i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_afa_block*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_afa_block*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local %struct.mlxsw_sp_acl_rule_info* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
