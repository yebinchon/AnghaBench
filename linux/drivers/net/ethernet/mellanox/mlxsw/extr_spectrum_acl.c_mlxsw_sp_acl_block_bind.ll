; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_block_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_block_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32, i64 }
%struct.mlxsw_sp_port = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_acl_block_binding = type { i32, i32, %struct.mlxsw_sp_port* }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Block cannot be bound to egress because it contains unsupported rules\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_block_bind(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_port* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %9 = alloca %struct.mlxsw_sp_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mlxsw_sp_acl_block_binding*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %8, align 8
  store %struct.mlxsw_sp_port* %2, %struct.mlxsw_sp_port** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @mlxsw_sp_acl_block_lookup(%struct.mlxsw_sp_acl_block* %14, %struct.mlxsw_sp_port* %15, i32 %16)
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EEXIST, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %73

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %33 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %32, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %73

36:                                               ; preds = %26, %23
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.mlxsw_sp_acl_block_binding* @kzalloc(i32 16, i32 %37)
  store %struct.mlxsw_sp_acl_block_binding* %38, %struct.mlxsw_sp_acl_block_binding** %12, align 8
  %39 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %12, align 8
  %40 = icmp ne %struct.mlxsw_sp_acl_block_binding* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %73

44:                                               ; preds = %36
  %45 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %46 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %12, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_block_binding, %struct.mlxsw_sp_acl_block_binding* %46, i32 0, i32 2
  store %struct.mlxsw_sp_port* %45, %struct.mlxsw_sp_port** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %12, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_acl_block_binding, %struct.mlxsw_sp_acl_block_binding* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %52 = call i64 @mlxsw_sp_acl_ruleset_block_bound(%struct.mlxsw_sp_acl_block* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %44
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %56 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %57 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %12, align 8
  %58 = call i32 @mlxsw_sp_acl_ruleset_bind(%struct.mlxsw_sp* %55, %struct.mlxsw_sp_acl_block* %56, %struct.mlxsw_sp_acl_block_binding* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %69

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %12, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_acl_block_binding, %struct.mlxsw_sp_acl_block_binding* %64, i32 0, i32 1
  %66 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %66, i32 0, i32 0
  %68 = call i32 @list_add(i32* %65, i32* %67)
  store i32 0, i32* %6, align 4
  br label %73

69:                                               ; preds = %61
  %70 = load %struct.mlxsw_sp_acl_block_binding*, %struct.mlxsw_sp_acl_block_binding** %12, align 8
  %71 = call i32 @kfree(%struct.mlxsw_sp_acl_block_binding* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %63, %41, %31, %20
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_acl_block_lookup(%struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.mlxsw_sp_acl_block_binding* @kzalloc(i32, i32) #1

declare dso_local i64 @mlxsw_sp_acl_ruleset_block_bound(%struct.mlxsw_sp_acl_block*) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_bind(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block_binding*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_block_binding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
