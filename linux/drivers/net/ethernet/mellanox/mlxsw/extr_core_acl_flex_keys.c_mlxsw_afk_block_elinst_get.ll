; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_block_elinst_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_block_elinst_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk_element_inst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_afk_block = type { i32, %struct.mlxsw_afk_element_inst* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afk_element_inst* (%struct.mlxsw_afk_block*, i32)* @mlxsw_afk_block_elinst_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afk_element_inst* @mlxsw_afk_block_elinst_get(%struct.mlxsw_afk_block* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_afk_element_inst*, align 8
  %4 = alloca %struct.mlxsw_afk_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_afk_element_inst*, align 8
  store %struct.mlxsw_afk_block* %0, %struct.mlxsw_afk_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %17, i64 %19
  store %struct.mlxsw_afk_element_inst* %20, %struct.mlxsw_afk_element_inst** %7, align 8
  %21 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %7, align 8
  %22 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %7, align 8
  store %struct.mlxsw_afk_element_inst* %29, %struct.mlxsw_afk_element_inst** %3, align 8
  br label %35

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %8

34:                                               ; preds = %8
  store %struct.mlxsw_afk_element_inst* null, %struct.mlxsw_afk_element_inst** %3, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %3, align 8
  ret %struct.mlxsw_afk_element_inst* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
