; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_dbw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_dbw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32 }

@DBWDEF = common dso_local global i32 0, align 4
@DCFG1 = common dso_local global i32 0, align 4
@DBW = common dso_local global i32 0, align 4
@GEM_DBW128 = common dso_local global i32 0, align 4
@GEM_DBW64 = common dso_local global i32 0, align 4
@GEM_DBW32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb*)* @macb_dbw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_dbw(%struct.macb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macb*, align 8
  store %struct.macb* %0, %struct.macb** %3, align 8
  %4 = load %struct.macb*, %struct.macb** %3, align 8
  %5 = call i32 @macb_is_gem(%struct.macb* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

8:                                                ; preds = %1
  %9 = load i32, i32* @DBWDEF, align 4
  %10 = load %struct.macb*, %struct.macb** %3, align 8
  %11 = load i32, i32* @DCFG1, align 4
  %12 = call i32 @gem_readl(%struct.macb* %10, i32 %11)
  %13 = call i32 @GEM_BFEXT(i32 %9, i32 %12)
  switch i32 %13, label %23 [
    i32 4, label %14
    i32 2, label %18
    i32 1, label %22
  ]

14:                                               ; preds = %8
  %15 = load i32, i32* @DBW, align 4
  %16 = load i32, i32* @GEM_DBW128, align 4
  %17 = call i32 @GEM_BF(i32 %15, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %8
  %19 = load i32, i32* @DBW, align 4
  %20 = load i32, i32* @GEM_DBW64, align 4
  %21 = call i32 @GEM_BF(i32 %19, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %8, %22
  %24 = load i32, i32* @DBW, align 4
  %25 = load i32, i32* @GEM_DBW32, align 4
  %26 = call i32 @GEM_BF(i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %18, %14, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @macb_is_gem(%struct.macb*) #1

declare dso_local i32 @GEM_BFEXT(i32, i32) #1

declare dso_local i32 @gem_readl(%struct.macb*, i32) #1

declare dso_local i32 @GEM_BF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
