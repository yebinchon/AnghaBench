; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_frag_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_frag_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_bm_pool = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_bm_pool*, i8*)* @mvpp2_frag_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_frag_free(%struct.mvpp2_bm_pool* %0, i8* %1) #0 {
  %3 = alloca %struct.mvpp2_bm_pool*, align 8
  %4 = alloca i8*, align 8
  store %struct.mvpp2_bm_pool* %0, %struct.mvpp2_bm_pool** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %3, align 8
  %6 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PAGE_SIZE, align 8
  %9 = icmp sle i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @skb_free_frag(i8* %14)
  br label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @kfree(i8* %17)
  br label %19

19:                                               ; preds = %16, %13
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_free_frag(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
