; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_picker_count_hits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_picker_count_hits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk = type { i32, %struct.mlxsw_afk_block* }
%struct.mlxsw_afk_block = type { i32, %struct.mlxsw_afk_element_inst* }
%struct.mlxsw_afk_element_inst = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_afk_picker = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_afk*, %struct.mlxsw_afk_picker*, i32)* @mlxsw_afk_picker_count_hits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_afk_picker_count_hits(%struct.mlxsw_afk* %0, %struct.mlxsw_afk_picker* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_afk*, align 8
  %5 = alloca %struct.mlxsw_afk_picker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_afk_block*, align 8
  %10 = alloca %struct.mlxsw_afk_element_inst*, align 8
  store %struct.mlxsw_afk* %0, %struct.mlxsw_afk** %4, align 8
  store %struct.mlxsw_afk_picker* %1, %struct.mlxsw_afk_picker** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %69, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %11
  %18 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %18, i32 0, i32 1
  %20 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %20, i64 %22
  store %struct.mlxsw_afk_block* %23, %struct.mlxsw_afk_block** %9, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %65, %17
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %9, align 8
  %27 = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %24
  %31 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %9, align 8
  %32 = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %31, i32 0, i32 1
  %33 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %33, i64 %35
  store %struct.mlxsw_afk_element_inst* %36, %struct.mlxsw_afk_element_inst** %10, align 8
  %37 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %10, align 8
  %38 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %30
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %5, align 8
  %47 = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__set_bit(i32 %45, i32 %53)
  %55 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %5, align 8
  %56 = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %44, %30
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %24

68:                                               ; preds = %24
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %11

72:                                               ; preds = %11
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
