; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_bufsize_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_bufsize_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_bm_pool = type { i32, i32 }

@MVPP2_POOL_BUF_SIZE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*, %struct.mvpp2_bm_pool*, i32)* @mvpp2_bm_pool_bufsize_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_bm_pool_bufsize_set(%struct.mvpp2* %0, %struct.mvpp2_bm_pool* %1, i32 %2) #0 {
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca %struct.mvpp2_bm_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %4, align 8
  store %struct.mvpp2_bm_pool* %1, %struct.mvpp2_bm_pool** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %5, align 8
  %10 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MVPP2_POOL_BUF_SIZE_OFFSET, align 4
  %13 = shl i32 1, %12
  %14 = call i32 @ALIGN(i32 %11, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %16 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %5, align 8
  %17 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MVPP2_POOL_BUF_SIZE_REG(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mvpp2_write(%struct.mvpp2* %15, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP2_POOL_BUF_SIZE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
