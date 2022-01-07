; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___get_agg_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___get_agg_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggregator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aggregator*)* @__get_agg_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_agg_bandwidth(%struct.aggregator* %0) #0 {
  %2 = alloca %struct.aggregator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aggregator* %0, %struct.aggregator** %2, align 8
  %5 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %6 = call i32 @__agg_active_ports(%struct.aggregator* %5)
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %1
  %10 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %11 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__get_link_speed(i32 %12)
  switch i32 %13, label %55 [
    i32 135, label %14
    i32 137, label %16
    i32 138, label %19
    i32 139, label %22
    i32 132, label %25
    i32 129, label %28
    i32 140, label %31
    i32 136, label %34
    i32 134, label %37
    i32 133, label %40
    i32 131, label %43
    i32 130, label %46
    i32 128, label %49
    i32 141, label %52
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %4, align 4
  br label %56

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %17, 10
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %20, 100
  store i32 %21, i32* %4, align 4
  br label %56

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, 1000
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %9
  %26 = load i32, i32* %3, align 4
  %27 = mul nsw i32 %26, 2500
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %9
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, 5000
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %9
  %32 = load i32, i32* %3, align 4
  %33 = mul nsw i32 %32, 10000
  store i32 %33, i32* %4, align 4
  br label %56

34:                                               ; preds = %9
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 %35, 14000
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %9
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 %38, 20000
  store i32 %39, i32* %4, align 4
  br label %56

40:                                               ; preds = %9
  %41 = load i32, i32* %3, align 4
  %42 = mul nsw i32 %41, 25000
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %9
  %44 = load i32, i32* %3, align 4
  %45 = mul nsw i32 %44, 40000
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %9
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 %47, 50000
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %9
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 %50, 56000
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %9
  %53 = load i32, i32* %3, align 4
  %54 = mul nsw i32 %53, 100000
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %14
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @__agg_active_ports(%struct.aggregator*) #1

declare dso_local i32 @__get_link_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
