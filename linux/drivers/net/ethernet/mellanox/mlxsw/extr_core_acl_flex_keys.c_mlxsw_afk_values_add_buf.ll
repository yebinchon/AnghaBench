; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_values_add_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_values_add_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk_element_info = type { i64, %struct.mlxsw_item }
%struct.mlxsw_item = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_afk_element_values = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@mlxsw_afk_element_infos = common dso_local global %struct.mlxsw_afk_element_info* null, align 8
@MLXSW_AFK_ELEMENT_TYPE_BUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_afk_values_add_buf(%struct.mlxsw_afk_element_values* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.mlxsw_afk_element_values*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_afk_element_info*, align 8
  %12 = alloca %struct.mlxsw_item*, align 8
  store %struct.mlxsw_afk_element_values* %0, %struct.mlxsw_afk_element_values** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** @mlxsw_afk_element_infos, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %13, i64 %15
  store %struct.mlxsw_afk_element_info* %16, %struct.mlxsw_afk_element_info** %11, align 8
  %17 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %11, align 8
  %18 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %17, i32 0, i32 1
  store %struct.mlxsw_item* %18, %struct.mlxsw_item** %12, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @memchr_inv(i8* %19, i32 0, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %64

24:                                               ; preds = %5
  %25 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %11, align 8
  %26 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MLXSW_AFK_ELEMENT_TYPE_BUF, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %24
  %34 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %11, align 8
  %35 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %24
  br label %64

45:                                               ; preds = %33
  %46 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %6, align 8
  %47 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.mlxsw_item*, %struct.mlxsw_item** %12, align 8
  %52 = call i32 @__mlxsw_item_memcpy_to(i32 %49, i8* %50, %struct.mlxsw_item* %51, i32 0)
  %53 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %6, align 8
  %54 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.mlxsw_item*, %struct.mlxsw_item** %12, align 8
  %59 = call i32 @__mlxsw_item_memcpy_to(i32 %56, i8* %57, %struct.mlxsw_item* %58, i32 0)
  %60 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %6, align 8
  %61 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @mlxsw_afk_element_usage_add(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %45, %44, %23
  ret void
}

declare dso_local i32 @memchr_inv(i8*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__mlxsw_item_memcpy_to(i32, i8*, %struct.mlxsw_item*, i32) #1

declare dso_local i32 @mlxsw_afk_element_usage_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
