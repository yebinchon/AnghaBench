; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_set32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_set32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_item = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlxsw_item*, i16, i32)* @__mlxsw_item_set32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlxsw_item_set32(i8* %0, %struct.mlxsw_item* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlxsw_item*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.mlxsw_item* %1, %struct.mlxsw_item** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mlxsw_item*, %struct.mlxsw_item** %6, align 8
  %14 = load i16, i16* %7, align 2
  %15 = call i32 @__mlxsw_item_offset(%struct.mlxsw_item* %13, i16 zeroext %14, i32 4)
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load %struct.mlxsw_item*, %struct.mlxsw_item** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @GENMASK(i64 %22, i32 0)
  %24 = load %struct.mlxsw_item*, %struct.mlxsw_item** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %23, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.mlxsw_item*, %struct.mlxsw_item** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %4
  %33 = load %struct.mlxsw_item*, %struct.mlxsw_item** %6, align 8
  %34 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %32, %4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @cpu_to_be32(i32 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  ret void
}

declare dso_local i32 @__mlxsw_item_offset(%struct.mlxsw_item*, i16 zeroext, i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
