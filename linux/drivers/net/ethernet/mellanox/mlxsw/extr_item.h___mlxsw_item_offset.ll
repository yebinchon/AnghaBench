; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_item.h___mlxsw_item_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_item = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [76 x i8] c"mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_item*, i16, i64)* @__mlxsw_item_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_item_offset(%struct.mlxsw_item* %0, i16 zeroext %1, i64 %2) #0 {
  %4 = alloca %struct.mlxsw_item*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  store %struct.mlxsw_item* %0, %struct.mlxsw_item** %4, align 8
  store i16 %1, i16* %5, align 2
  store i64 %2, i64* %6, align 8
  %7 = load i16, i16* %5, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i1 [ false, %3 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = urem i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %16
  %27 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = urem i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %35 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = urem i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33, %26, %16
  %41 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %42 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %45 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %48 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %51 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %46, i64 %49, i64 %52, i64 %53)
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %40, %33
  %57 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %58 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %61 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i16, i16* %5, align 2
  %64 = zext i16 %63 to i64
  %65 = mul i64 %62, %64
  %66 = add i64 %59, %65
  %67 = load %struct.mlxsw_item*, %struct.mlxsw_item** %4, align 8
  %68 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  %71 = load i64, i64* %6, align 8
  %72 = udiv i64 %70, %71
  %73 = trunc i64 %72 to i32
  ret i32 %73
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
