; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_acl_tcam.c_mlxsw_sp1_acl_ctcam_region_catchall_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_acl_tcam.c_mlxsw_sp1_acl_ctcam_region_catchall_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp1_acl_tcam_region = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_sp_acl_rule_info*, i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

@MLXSW_SP_ACL_TCAM_CATCHALL_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp1_acl_tcam_region*)* @mlxsw_sp1_acl_ctcam_region_catchall_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_acl_ctcam_region_catchall_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp1_acl_tcam_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp1_acl_tcam_region*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp1_acl_tcam_region* %1, %struct.mlxsw_sp1_acl_tcam_region** %5, align 8
  %8 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %5, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %8, i32 0, i32 1
  %10 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* @MLXSW_SP_ACL_TCAM_CATCHALL_PRIO, align 4
  %14 = call i32 @mlxsw_sp_acl_ctcam_chunk_init(i32* %9, i32* %12, i32 %13)
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rulei_create(i32 %17, i32* null)
  store %struct.mlxsw_sp_acl_rule_info* %18, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %19 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %20 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_rule_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_rule_info* %23)
  store i32 %24, i32* %7, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %27 = call i32 @mlxsw_sp_acl_rulei_act_continue(%struct.mlxsw_sp_acl_rule_info* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %60

32:                                               ; preds = %25
  %33 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %34 = call i32 @mlxsw_sp_acl_rulei_commit(%struct.mlxsw_sp_acl_rule_info* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %59

38:                                               ; preds = %32
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %40 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %5, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %40, i32 0, i32 1
  %42 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %5, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %5, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %49 = call i32 @mlxsw_sp_acl_ctcam_entry_add(%struct.mlxsw_sp* %39, i32* %41, i32* %44, i32* %47, %struct.mlxsw_sp_acl_rule_info* %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %58

53:                                               ; preds = %38
  %54 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %55 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %5, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store %struct.mlxsw_sp_acl_rule_info* %54, %struct.mlxsw_sp_acl_rule_info** %57, align 8
  store i32 0, i32* %3, align 4
  br label %69

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %37
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %6, align 8
  %62 = call i32 @mlxsw_sp_acl_rulei_destroy(%struct.mlxsw_sp_acl_rule_info* %61)
  br label %63

63:                                               ; preds = %60, %22
  %64 = load %struct.mlxsw_sp1_acl_tcam_region*, %struct.mlxsw_sp1_acl_tcam_region** %5, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, %struct.mlxsw_sp1_acl_tcam_region* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @mlxsw_sp_acl_ctcam_chunk_fini(i32* %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %53
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mlxsw_sp_acl_ctcam_chunk_init(i32*, i32*, i32) #1

declare dso_local %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rulei_create(i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_act_continue(%struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_commit(%struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_entry_add(%struct.mlxsw_sp*, i32*, i32*, i32*, %struct.mlxsw_sp_acl_rule_info*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_destroy(%struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_chunk_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
