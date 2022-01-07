; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa = type { i32, i32, i8*, %struct.mlxsw_afa_ops*, i32 }
%struct.mlxsw_afa_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_afa_set_ht_params = common dso_local global i32 0, align 4
@mlxsw_afa_fwd_entry_ht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_afa* @mlxsw_afa_create(i32 %0, %struct.mlxsw_afa_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_afa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_afa_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_afa*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mlxsw_afa_ops* %1, %struct.mlxsw_afa_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mlxsw_afa* @kzalloc(i32 32, i32 %10)
  store %struct.mlxsw_afa* %11, %struct.mlxsw_afa** %8, align 8
  %12 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %8, align 8
  %13 = icmp ne %struct.mlxsw_afa* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.mlxsw_afa* @ERR_PTR(i32 %16)
  store %struct.mlxsw_afa* %17, %struct.mlxsw_afa** %4, align 8
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %8, align 8
  %20 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %19, i32 0, i32 1
  %21 = call i32 @rhashtable_init(i32* %20, i32* @mlxsw_afa_set_ht_params)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %47

25:                                               ; preds = %18
  %26 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %8, align 8
  %27 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %26, i32 0, i32 4
  %28 = call i32 @rhashtable_init(i32* %27, i32* @mlxsw_afa_fwd_entry_ht_params)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %43

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %8, align 8
  %35 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mlxsw_afa_ops*, %struct.mlxsw_afa_ops** %6, align 8
  %37 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %8, align 8
  %38 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %37, i32 0, i32 3
  store %struct.mlxsw_afa_ops* %36, %struct.mlxsw_afa_ops** %38, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %8, align 8
  %41 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %8, align 8
  store %struct.mlxsw_afa* %42, %struct.mlxsw_afa** %4, align 8
  br label %52

43:                                               ; preds = %31
  %44 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %8, align 8
  %45 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %44, i32 0, i32 1
  %46 = call i32 @rhashtable_destroy(i32* %45)
  br label %47

47:                                               ; preds = %43, %24
  %48 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %8, align 8
  %49 = call i32 @kfree(%struct.mlxsw_afa* %48)
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.mlxsw_afa* @ERR_PTR(i32 %50)
  store %struct.mlxsw_afa* %51, %struct.mlxsw_afa** %4, align 8
  br label %52

52:                                               ; preds = %47, %32, %14
  %53 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  ret %struct.mlxsw_afa* %53
}

declare dso_local %struct.mlxsw_afa* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_afa* @ERR_PTR(i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_afa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
