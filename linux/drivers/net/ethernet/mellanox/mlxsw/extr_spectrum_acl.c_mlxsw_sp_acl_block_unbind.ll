; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_block_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_block_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_acl_block_binding = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_block_unbind(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_port* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_acl_block_binding*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %7, align 8
  store %struct.mlxsw_sp_port* %2, %struct.mlxsw_sp_port** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.mlxsw_sp_acl_block_binding* @mlxsw_sp_acl_block_lookup(%struct.mlxsw_sp_acl_block* %11, %struct.mlxsw_sp_port* %12, i32 %13)
  store %struct.mlxsw_sp_acl_block_binding* %14, %struct.mlxsw_sp_acl_block_binding** %10, align 8
  %15 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %10, align 8
  %16 = icmp ne %struct.mlxsw_sp_acl_block_binding* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %35

20:                                               ; preds = %4
  %21 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %10, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_block_binding, %struct.mlxsw_sp_acl_block_binding* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %25 = call i64 @mlxsw_sp_acl_ruleset_block_bound(%struct.mlxsw_sp_acl_block* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %29 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %30 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %10, align 8
  %31 = call i32 @mlxsw_sp_acl_ruleset_unbind(%struct.mlxsw_sp* %28, %struct.mlxsw_sp_acl_block* %29, %struct.mlxsw_sp_acl_block_binding* %30)
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %10, align 8
  %34 = call i32 @kfree(%struct.mlxsw_sp_acl_block_binding* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %17
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.mlxsw_sp_acl_block_binding* @mlxsw_sp_acl_block_lookup(%struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @mlxsw_sp_acl_ruleset_block_bound(%struct.mlxsw_sp_acl_block*) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_unbind(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block_binding*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_block_binding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
