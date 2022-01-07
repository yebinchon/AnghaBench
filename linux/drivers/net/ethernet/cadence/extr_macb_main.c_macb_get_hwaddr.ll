; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_hwaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SA1B = common dso_local global i64 0, align 8
@SA1T = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"invalid hw address, using random\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @macb_get_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_get_hwaddr(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %59, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %62

10:                                               ; preds = %7
  %11 = load %struct.macb*, %struct.macb** %2, align 8
  %12 = load i64, i64* @SA1B, align 8
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @macb_or_gem_readl(%struct.macb* %11, i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.macb*, %struct.macb** %2, align 8
  %19 = load i64, i64* @SA1T, align 8
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @macb_or_gem_readl(%struct.macb* %18, i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %3, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 24
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 %41, i32* %42, align 16
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %48 = call i64 @is_valid_ether_addr(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %10
  %51 = load %struct.macb*, %struct.macb** %2, align 8
  %52 = getelementptr inbounds %struct.macb, %struct.macb* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %57 = call i32 @memcpy(i32 %55, i32* %56, i32 24)
  br label %72

58:                                               ; preds = %10
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %7

62:                                               ; preds = %7
  %63 = load %struct.macb*, %struct.macb** %2, align 8
  %64 = getelementptr inbounds %struct.macb, %struct.macb* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.macb*, %struct.macb** %2, align 8
  %69 = getelementptr inbounds %struct.macb, %struct.macb* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 @eth_hw_addr_random(%struct.TYPE_4__* %70)
  br label %72

72:                                               ; preds = %62, %50
  ret void
}

declare dso_local i32 @macb_or_gem_readl(%struct.macb*, i64) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
