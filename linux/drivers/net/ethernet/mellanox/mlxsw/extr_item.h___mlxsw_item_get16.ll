; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_get16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_get16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_item = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mlxsw_item*, i16)* @__mlxsw_item_get16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_item_get16(i8* %0, %struct.mlxsw_item* %1, i16 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlxsw_item*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.mlxsw_item* %1, %struct.mlxsw_item** %5, align 8
  store i16 %2, i16* %6, align 2
  %10 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %11 = load i16, i16* %6, align 2
  %12 = call i32 @__mlxsw_item_offset(%struct.mlxsw_item* %10, i16 zeroext %11, i32 4)
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be16_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %27 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @GENMASK(i64 %30, i32 0)
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %35 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %40 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %3
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @__mlxsw_item_offset(%struct.mlxsw_item*, i16 zeroext, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
