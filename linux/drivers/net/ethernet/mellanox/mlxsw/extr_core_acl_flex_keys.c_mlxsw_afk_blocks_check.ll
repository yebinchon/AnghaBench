; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_blocks_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_blocks_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk = type { i32, %struct.mlxsw_afk_block* }
%struct.mlxsw_afk_block = type { i32, %struct.mlxsw_afk_element_inst* }
%struct.mlxsw_afk_element_inst = type { i64, %struct.TYPE_10__*, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_afk*)* @mlxsw_afk_blocks_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_afk_blocks_check(%struct.mlxsw_afk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_afk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_afk_block*, align 8
  %7 = alloca %struct.mlxsw_afk_element_inst*, align 8
  store %struct.mlxsw_afk* %0, %struct.mlxsw_afk** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %68, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %8
  %15 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %17, i64 %19
  store %struct.mlxsw_afk_block* %20, %struct.mlxsw_afk_block** %6, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %64, %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %6, align 8
  %24 = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %28, i32 0, i32 1
  %30 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %30, i64 %32
  store %struct.mlxsw_afk_element_inst* %33, %struct.mlxsw_afk_element_inst** %7, align 8
  %34 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %7, align 8
  %35 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %7, align 8
  %38 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %36, %41
  br i1 %42, label %62, label %43

43:                                               ; preds = %27
  %44 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %7, align 8
  %45 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %7, align 8
  %50 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %7, align 8
  %55 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %53, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %48, %27
  store i32 0, i32* %2, align 4
  br label %72

63:                                               ; preds = %48, %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %21

67:                                               ; preds = %21
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %8

71:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %62
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
