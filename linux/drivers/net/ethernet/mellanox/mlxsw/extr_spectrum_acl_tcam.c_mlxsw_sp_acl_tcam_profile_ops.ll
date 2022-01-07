; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_profile_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_profile_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_profile_ops = type { i32 }
%struct.mlxsw_sp = type { i32 }

@mlxsw_sp_acl_tcam_profile_ops_arr = common dso_local global %struct.mlxsw_sp_acl_profile_ops** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_acl_profile_ops* @mlxsw_sp_acl_tcam_profile_ops(%struct.mlxsw_sp* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mlxsw_sp_acl_profile_ops**, %struct.mlxsw_sp_acl_profile_ops*** @mlxsw_sp_acl_tcam_profile_ops_arr, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.mlxsw_sp_acl_profile_ops** %8)
  %10 = icmp uge i32 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.mlxsw_sp_acl_profile_ops* null, %struct.mlxsw_sp_acl_profile_ops** %3, align 8
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.mlxsw_sp_acl_profile_ops**, %struct.mlxsw_sp_acl_profile_ops*** @mlxsw_sp_acl_tcam_profile_ops_arr, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %16, i64 %18
  %20 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %19, align 8
  store %struct.mlxsw_sp_acl_profile_ops* %20, %struct.mlxsw_sp_acl_profile_ops** %6, align 8
  %21 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %6, align 8
  %22 = icmp ne %struct.mlxsw_sp_acl_profile_ops* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store %struct.mlxsw_sp_acl_profile_ops* null, %struct.mlxsw_sp_acl_profile_ops** %3, align 8
  br label %30

28:                                               ; preds = %15
  %29 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %6, align 8
  store %struct.mlxsw_sp_acl_profile_ops* %29, %struct.mlxsw_sp_acl_profile_ops** %3, align 8
  br label %30

30:                                               ; preds = %28, %27, %14
  %31 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %3, align 8
  ret %struct.mlxsw_sp_acl_profile_ops* %31
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mlxsw_sp_acl_profile_ops**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
