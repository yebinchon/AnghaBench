; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_reg_access_emad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_reg_access_emad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_reg_info = type { i32 }
%struct.list_head = type { i32 }
%struct.mlxsw_reg_trans = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, %struct.mlxsw_reg_info*, i8*, i32, %struct.list_head*, i32*, i64)* @mlxsw_core_reg_access_emad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_core_reg_access_emad(%struct.mlxsw_core* %0, %struct.mlxsw_reg_info* %1, i8* %2, i32 %3, %struct.list_head* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_core*, align 8
  %10 = alloca %struct.mlxsw_reg_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlxsw_reg_trans*, align 8
  %18 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %9, align 8
  store %struct.mlxsw_reg_info* %1, %struct.mlxsw_reg_info** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.list_head* %4, %struct.list_head** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %struct.mlxsw_core*, %struct.mlxsw_core** %9, align 8
  %20 = call i32 @mlxsw_core_tid_get(%struct.mlxsw_core* %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mlxsw_reg_trans* @kzalloc(i32 4, i32 %21)
  store %struct.mlxsw_reg_trans* %22, %struct.mlxsw_reg_trans** %17, align 8
  %23 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %17, align 8
  %24 = icmp ne %struct.mlxsw_reg_trans* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %46

28:                                               ; preds = %7
  %29 = load %struct.mlxsw_core*, %struct.mlxsw_core** %9, align 8
  %30 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %17, align 8
  %34 = load %struct.list_head*, %struct.list_head** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @mlxsw_emad_reg_access(%struct.mlxsw_core* %29, %struct.mlxsw_reg_info* %30, i8* %31, i32 %32, %struct.mlxsw_reg_trans* %33, %struct.list_head* %34, i32* %35, i64 %36, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %17, align 8
  %43 = call i32 @kfree(%struct.mlxsw_reg_trans* %42)
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %8, align 4
  br label %46

45:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %41, %25
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @mlxsw_core_tid_get(%struct.mlxsw_core*) #1

declare dso_local %struct.mlxsw_reg_trans* @kzalloc(i32, i32) #1

declare dso_local i32 @mlxsw_emad_reg_access(%struct.mlxsw_core*, %struct.mlxsw_reg_info*, i8*, i32, %struct.mlxsw_reg_trans*, %struct.list_head*, i32*, i64, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_reg_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
