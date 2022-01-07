; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk = type { i32, i32, i32, %struct.mlxsw_afk_ops*, i32 }
%struct.mlxsw_afk_ops = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_afk* @mlxsw_afk_create(i32 %0, %struct.mlxsw_afk_ops* %1) #0 {
  %3 = alloca %struct.mlxsw_afk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_afk_ops*, align 8
  %6 = alloca %struct.mlxsw_afk*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.mlxsw_afk_ops* %1, %struct.mlxsw_afk_ops** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mlxsw_afk* @kzalloc(i32 32, i32 %7)
  store %struct.mlxsw_afk* %8, %struct.mlxsw_afk** %6, align 8
  %9 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %6, align 8
  %10 = icmp ne %struct.mlxsw_afk* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mlxsw_afk* null, %struct.mlxsw_afk** %3, align 8
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %13, i32 0, i32 4
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_ops** %5, align 8
  %20 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %20, i32 0, i32 3
  store %struct.mlxsw_afk_ops* %19, %struct.mlxsw_afk_ops** %21, align 8
  %22 = load %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_ops** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_afk_ops, %struct.mlxsw_afk_ops* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %6, align 8
  %26 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_ops** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_afk_ops, %struct.mlxsw_afk_ops* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %6, align 8
  %33 = call i32 @mlxsw_afk_blocks_check(%struct.mlxsw_afk* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %6, align 8
  store %struct.mlxsw_afk* %38, %struct.mlxsw_afk** %3, align 8
  br label %39

39:                                               ; preds = %12, %11
  %40 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %3, align 8
  ret %struct.mlxsw_afk* %40
}

declare dso_local %struct.mlxsw_afk* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_afk_blocks_check(%struct.mlxsw_afk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
