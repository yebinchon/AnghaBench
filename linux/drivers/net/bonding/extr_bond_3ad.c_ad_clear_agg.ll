; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_clear_agg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_clear_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggregator = type { i32, i32, %struct.TYPE_6__*, i64, i64, i32*, i64, i64, i64, i64, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: LAG %d was cleared\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aggregator*)* @ad_clear_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_clear_agg(%struct.aggregator* %0) #0 {
  %2 = alloca %struct.aggregator*, align 8
  store %struct.aggregator* %0, %struct.aggregator** %2, align 8
  %3 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %4 = icmp ne %struct.aggregator* %3, null
  br i1 %4, label %5, label %50

5:                                                ; preds = %1
  %6 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %7 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %9 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %8, i32 0, i32 12
  store i64 0, i64* %9, align 8
  %10 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %11 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %10, i32 0, i32 11
  store i64 0, i64* %11, align 8
  %12 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %13 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %12, i32 0, i32 10
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @eth_zero_addr(i32 %15)
  %17 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %18 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %17, i32 0, i32 9
  store i64 0, i64* %18, align 8
  %19 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %20 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %19, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %22 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %21, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %24 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %26 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %28 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %30 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %32 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %5
  %36 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %37 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %5
  br label %44

44:                                               ; preds = %43, %35
  %45 = phi i8* [ %42, %35 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %43 ]
  %46 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %47 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
