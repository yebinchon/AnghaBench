; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_counter_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_counter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_counter = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlxsw_afa_block = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_afa_counter_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afa_counter* (%struct.mlxsw_afa_block*)* @mlxsw_afa_counter_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afa_counter* @mlxsw_afa_counter_create(%struct.mlxsw_afa_block* %0) #0 {
  %2 = alloca %struct.mlxsw_afa_counter*, align 8
  %3 = alloca %struct.mlxsw_afa_block*, align 8
  %4 = alloca %struct.mlxsw_afa_counter*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlxsw_afa_counter* @kzalloc(i32 8, i32 %6)
  store %struct.mlxsw_afa_counter* %7, %struct.mlxsw_afa_counter** %4, align 8
  %8 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %4, align 8
  %9 = icmp ne %struct.mlxsw_afa_counter* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.mlxsw_afa_counter* @ERR_PTR(i32 %12)
  store %struct.mlxsw_afa_counter* %13, %struct.mlxsw_afa_counter** %2, align 8
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32*)*, i32 (i32, i32*)** %20, align 8
  %22 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_afa_counter, %struct.mlxsw_afa_counter* %27, i32 0, i32 1
  %29 = call i32 %21(i32 %26, i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  br label %43

33:                                               ; preds = %14
  %34 = load i32, i32* @mlxsw_afa_counter_destructor, align 4
  %35 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %4, align 8
  %36 = getelementptr inbounds %struct.mlxsw_afa_counter, %struct.mlxsw_afa_counter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %39 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %4, align 8
  %40 = getelementptr inbounds %struct.mlxsw_afa_counter, %struct.mlxsw_afa_counter* %39, i32 0, i32 0
  %41 = call i32 @mlxsw_afa_resource_add(%struct.mlxsw_afa_block* %38, %struct.TYPE_6__* %40)
  %42 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %4, align 8
  store %struct.mlxsw_afa_counter* %42, %struct.mlxsw_afa_counter** %2, align 8
  br label %48

43:                                               ; preds = %32
  %44 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %4, align 8
  %45 = call i32 @kfree(%struct.mlxsw_afa_counter* %44)
  %46 = load i32, i32* %5, align 4
  %47 = call %struct.mlxsw_afa_counter* @ERR_PTR(i32 %46)
  store %struct.mlxsw_afa_counter* %47, %struct.mlxsw_afa_counter** %2, align 8
  br label %48

48:                                               ; preds = %43, %33, %10
  %49 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %2, align 8
  ret %struct.mlxsw_afa_counter* %49
}

declare dso_local %struct.mlxsw_afa_counter* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_afa_counter* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_afa_resource_add(%struct.mlxsw_afa_block*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mlxsw_afa_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
