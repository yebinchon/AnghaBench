; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c___mtdswap_choose_gc_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c___mtdswap_choose_gc_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@CLEAN = common dso_local global i32 0, align 4
@LOW_FRAG_GC_THRESHOLD = common dso_local global i64 0, align 8
@MTDSWAP_LOWFRAG = common dso_local global i32 0, align 4
@MTDSWAP_HIFRAG = common dso_local global i32 0, align 4
@MTDSWAP_BITFLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*)* @__mtdswap_choose_gc_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mtdswap_choose_gc_tree(%struct.mtdswap_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtdswap_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %3, align 8
  %6 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %7 = load i32, i32* @CLEAN, align 4
  %8 = call i64 @TREE_COUNT(%struct.mtdswap_dev* %6, i32 %7)
  %9 = load i64, i64* @LOW_FRAG_GC_THRESHOLD, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @MTDSWAP_LOWFRAG, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @MTDSWAP_HIFRAG, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* @MTDSWAP_BITFLIP, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %35, %15
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  br label %17

38:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @TREE_COUNT(%struct.mtdswap_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
