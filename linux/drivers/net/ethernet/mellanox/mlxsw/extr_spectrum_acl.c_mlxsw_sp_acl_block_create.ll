; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_block_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_block_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_block = type { %struct.net*, %struct.mlxsw_sp*, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_acl_block* @mlxsw_sp_acl_block_create(%struct.mlxsw_sp* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_block*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mlxsw_sp_acl_block* @kzalloc(i32 24, i32 %7)
  store %struct.mlxsw_sp_acl_block* %8, %struct.mlxsw_sp_acl_block** %6, align 8
  %9 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %10 = icmp ne %struct.mlxsw_sp_acl_block* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mlxsw_sp_acl_block* null, %struct.mlxsw_sp_acl_block** %3, align 8
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %17 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %17, i32 0, i32 1
  store %struct.mlxsw_sp* %16, %struct.mlxsw_sp** %18, align 8
  %19 = load %struct.net*, %struct.net** %5, align 8
  %20 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %20, i32 0, i32 0
  store %struct.net* %19, %struct.net** %21, align 8
  %22 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  store %struct.mlxsw_sp_acl_block* %22, %struct.mlxsw_sp_acl_block** %3, align 8
  br label %23

23:                                               ; preds = %12, %11
  %24 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %3, align 8
  ret %struct.mlxsw_sp_acl_block* %24
}

declare dso_local %struct.mlxsw_sp_acl_block* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
