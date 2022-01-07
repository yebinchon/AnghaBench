; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_choose_gc_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_choose_gc_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32 }

@FAILING = common dso_local global i32 0, align 4
@CLEAN = common dso_local global i32 0, align 4
@DIRTY = common dso_local global i32 0, align 4
@MTDSWAP_FAILING = common dso_local global i32 0, align 4
@MTDSWAP_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, i32)* @mtdswap_choose_gc_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_choose_gc_tree(%struct.mtdswap_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtdswap_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %8 = load i32, i32* @FAILING, align 4
  %9 = call i64 @TREE_NONEMPTY(%struct.mtdswap_dev* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %16 = load i32, i32* @CLEAN, align 4
  %17 = call i64 @TREE_EMPTY(%struct.mtdswap_dev* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %21 = load i32, i32* @DIRTY, align 4
  %22 = call i64 @TREE_EMPTY(%struct.mtdswap_dev* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %11
  %25 = load i32, i32* @MTDSWAP_FAILING, align 4
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %19, %14, %2
  %27 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %28 = call i32 @mtdswap_choose_wl_tree(%struct.mtdswap_dev* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MTDSWAP_CLEAN, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %36 = call i32 @__mtdswap_choose_gc_tree(%struct.mtdswap_dev* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %32, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @TREE_NONEMPTY(%struct.mtdswap_dev*, i32) #1

declare dso_local i64 @TREE_EMPTY(%struct.mtdswap_dev*, i32) #1

declare dso_local i32 @mtdswap_choose_wl_tree(%struct.mtdswap_dev*) #1

declare dso_local i32 @__mtdswap_choose_gc_tree(%struct.mtdswap_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
