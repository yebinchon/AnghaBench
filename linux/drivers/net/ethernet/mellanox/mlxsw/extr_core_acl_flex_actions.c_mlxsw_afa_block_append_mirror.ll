; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_afa_mirror = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Cannot create mirror action\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot append mirror action\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_afa_block_append_mirror(%struct.mlxsw_afa_block* %0, i32 %1, %struct.net_device* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_afa_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mlxsw_afa_mirror*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.mlxsw_afa_mirror* @mlxsw_afa_mirror_create(%struct.mlxsw_afa_block* %14, i32 %15, %struct.net_device* %16, i32 %17)
  store %struct.mlxsw_afa_mirror* %18, %struct.mlxsw_afa_mirror** %12, align 8
  %19 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %12, align 8
  %20 = call i64 @IS_ERR(%struct.mlxsw_afa_mirror* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %24 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %12, align 8
  %26 = call i32 @PTR_ERR(%struct.mlxsw_afa_mirror* %25)
  store i32 %26, i32* %6, align 4
  br label %44

27:                                               ; preds = %5
  %28 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %7, align 8
  %29 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %12, align 8
  %30 = getelementptr inbounds %struct.mlxsw_afa_mirror, %struct.mlxsw_afa_mirror* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlxsw_afa_block_append_allocated_mirror(%struct.mlxsw_afa_block* %28, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %37 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %39

38:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %44

39:                                               ; preds = %35
  %40 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %7, align 8
  %41 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %12, align 8
  %42 = call i32 @mlxsw_afa_mirror_destroy(%struct.mlxsw_afa_block* %40, %struct.mlxsw_afa_mirror* %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %38, %22
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.mlxsw_afa_mirror* @mlxsw_afa_mirror_create(%struct.mlxsw_afa_block*, i32, %struct.net_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_afa_mirror*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_afa_mirror*) #1

declare dso_local i32 @mlxsw_afa_block_append_allocated_mirror(%struct.mlxsw_afa_block*, i32) #1

declare dso_local i32 @mlxsw_afa_mirror_destroy(%struct.mlxsw_afa_block*, %struct.mlxsw_afa_mirror*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
