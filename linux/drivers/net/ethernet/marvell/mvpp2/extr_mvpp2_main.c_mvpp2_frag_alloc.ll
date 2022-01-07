; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_frag_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_frag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_bm_pool = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mvpp2_bm_pool*)* @mvpp2_frag_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mvpp2_frag_alloc(%struct.mvpp2_bm_pool* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mvpp2_bm_pool*, align 8
  store %struct.mvpp2_bm_pool* %0, %struct.mvpp2_bm_pool** %3, align 8
  %4 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %3, align 8
  %5 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PAGE_SIZE, align 8
  %8 = icmp sle i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %3, align 8
  %14 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i8* @netdev_alloc_frag(i64 %15)
  store i8* %16, i8** %2, align 8
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %3, align 8
  %19 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i8* @kmalloc(i64 %20, i32 %21)
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %17, %12
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @netdev_alloc_frag(i64) #1

declare dso_local i8* @kmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
