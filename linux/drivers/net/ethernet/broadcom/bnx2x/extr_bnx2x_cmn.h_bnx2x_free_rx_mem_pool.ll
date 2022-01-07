; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_free_rx_mem_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_free_rx_mem_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_alloc_pool = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_alloc_pool*)* @bnx2x_free_rx_mem_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_free_rx_mem_pool(%struct.bnx2x* %0, %struct.bnx2x_alloc_pool* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_alloc_pool*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_alloc_pool* %1, %struct.bnx2x_alloc_pool** %4, align 8
  %5 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %4, align 8
  %6 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %17

10:                                               ; preds = %2
  %11 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @put_page(i32* %13)
  %15 = load %struct.bnx2x_alloc_pool*, %struct.bnx2x_alloc_pool** %4, align 8
  %16 = getelementptr inbounds %struct.bnx2x_alloc_pool, %struct.bnx2x_alloc_pool* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
