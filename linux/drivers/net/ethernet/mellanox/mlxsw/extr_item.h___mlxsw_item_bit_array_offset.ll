; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_bit_array_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_bit_array_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_item = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"mlxsw: item bug (name=%s,offset=%x,element_size=%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_item*, i32, i32*)* @__mlxsw_item_bit_array_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_item_bit_array_offset(%struct.mlxsw_item* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlxsw_item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_item* %0, %struct.mlxsw_item** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ false, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = urem i64 %26, 4
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @BITS_PER_BYTE, align 4
  %31 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %32 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29, %19
  %37 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %38 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %41 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %44 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45)
  %47 = call i32 (...) @BUG()
  br label %48

48:                                               ; preds = %36, %29
  %49 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %50 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 3
  %54 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %55 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %53, %56
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %64 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = ashr i32 %66, 3
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @BITS_PER_BYTE, align 4
  %70 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %71 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %69, %72
  %74 = srem i32 %68, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %77 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %82 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %83, %84
  ret i32 %85
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
