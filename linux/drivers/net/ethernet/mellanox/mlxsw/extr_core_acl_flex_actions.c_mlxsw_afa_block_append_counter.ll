; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_afa_counter = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Cannot create count action\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot append count action\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_afa_block_append_counter(%struct.mlxsw_afa_block* %0, i32* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_afa_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_afa_counter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %12 = call %struct.mlxsw_afa_counter* @mlxsw_afa_counter_create(%struct.mlxsw_afa_block* %11)
  store %struct.mlxsw_afa_counter* %12, %struct.mlxsw_afa_counter** %8, align 8
  %13 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %8, align 8
  %14 = call i64 @IS_ERR(%struct.mlxsw_afa_counter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %18 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.mlxsw_afa_counter* %19)
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_afa_counter, %struct.mlxsw_afa_counter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @mlxsw_afa_block_append_allocated_counter(%struct.mlxsw_afa_block* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %32 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %40

33:                                               ; preds = %21
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  store i32 0, i32* %4, align 4
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %42 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %8, align 8
  %43 = call i32 @mlxsw_afa_counter_destroy(%struct.mlxsw_afa_block* %41, %struct.mlxsw_afa_counter* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %39, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.mlxsw_afa_counter* @mlxsw_afa_counter_create(%struct.mlxsw_afa_block*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_afa_counter*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_afa_counter*) #1

declare dso_local i32 @mlxsw_afa_block_append_allocated_counter(%struct.mlxsw_afa_block*, i32) #1

declare dso_local i32 @mlxsw_afa_counter_destroy(%struct.mlxsw_afa_block*, %struct.mlxsw_afa_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
