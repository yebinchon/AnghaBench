; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_get8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_get8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_item = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mlxsw_item*, i16)* @__mlxsw_item_get8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_item_get8(i8* %0, %struct.mlxsw_item* %1, i16 zeroext %2) #0 {
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
  store i32 %19, i32* %9, align 4
  %20 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %26 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @GENMASK(i64 %29, i32 0)
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %34 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.mlxsw_item*, %struct.mlxsw_item** %5, align 8
  %39 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %3
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @__mlxsw_item_offset(%struct.mlxsw_item*, i16 zeroext, i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
