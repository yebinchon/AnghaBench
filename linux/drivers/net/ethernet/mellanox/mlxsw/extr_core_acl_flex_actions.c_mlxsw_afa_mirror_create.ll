; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_mirror_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_mirror_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_mirror = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlxsw_afa_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, %struct.net_device*, i32, i32*)* }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_afa_mirror_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afa_mirror* (%struct.mlxsw_afa_block*, i32, %struct.net_device*, i32)* @mlxsw_afa_mirror_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afa_mirror* @mlxsw_afa_mirror_create(%struct.mlxsw_afa_block* %0, i32 %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_afa_mirror*, align 8
  %6 = alloca %struct.mlxsw_afa_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_afa_mirror*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mlxsw_afa_mirror* @kzalloc(i32 16, i32 %12)
  store %struct.mlxsw_afa_mirror* %13, %struct.mlxsw_afa_mirror** %10, align 8
  %14 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %10, align 8
  %15 = icmp ne %struct.mlxsw_afa_mirror* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.mlxsw_afa_mirror* @ERR_PTR(i32 %18)
  store %struct.mlxsw_afa_mirror* %19, %struct.mlxsw_afa_mirror** %5, align 8
  br label %63

20:                                               ; preds = %4
  %21 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32, %struct.net_device*, i32, i32*)*, i32 (i32, i32, %struct.net_device*, i32, i32*)** %26, align 8
  %28 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %10, align 8
  %37 = getelementptr inbounds %struct.mlxsw_afa_mirror, %struct.mlxsw_afa_mirror* %36, i32 0, i32 3
  %38 = call i32 %27(i32 %32, i32 %33, %struct.net_device* %34, i32 %35, i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  br label %58

42:                                               ; preds = %20
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %10, align 8
  %45 = getelementptr inbounds %struct.mlxsw_afa_mirror, %struct.mlxsw_afa_mirror* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %10, align 8
  %48 = getelementptr inbounds %struct.mlxsw_afa_mirror, %struct.mlxsw_afa_mirror* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @mlxsw_afa_mirror_destructor, align 4
  %50 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %10, align 8
  %51 = getelementptr inbounds %struct.mlxsw_afa_mirror, %struct.mlxsw_afa_mirror* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %6, align 8
  %54 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %10, align 8
  %55 = getelementptr inbounds %struct.mlxsw_afa_mirror, %struct.mlxsw_afa_mirror* %54, i32 0, i32 1
  %56 = call i32 @mlxsw_afa_resource_add(%struct.mlxsw_afa_block* %53, %struct.TYPE_6__* %55)
  %57 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %10, align 8
  store %struct.mlxsw_afa_mirror* %57, %struct.mlxsw_afa_mirror** %5, align 8
  br label %63

58:                                               ; preds = %41
  %59 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %10, align 8
  %60 = call i32 @kfree(%struct.mlxsw_afa_mirror* %59)
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.mlxsw_afa_mirror* @ERR_PTR(i32 %61)
  store %struct.mlxsw_afa_mirror* %62, %struct.mlxsw_afa_mirror** %5, align 8
  br label %63

63:                                               ; preds = %58, %42, %16
  %64 = load %struct.mlxsw_afa_mirror*, %struct.mlxsw_afa_mirror** %5, align 8
  ret %struct.mlxsw_afa_mirror* %64
}

declare dso_local %struct.mlxsw_afa_mirror* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_afa_mirror* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_afa_resource_add(%struct.mlxsw_afa_block*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mlxsw_afa_mirror*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
