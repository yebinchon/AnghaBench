; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_bufs_get_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_bufs_get_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mvpp2 = type { i64 }
%struct.mvpp2_bm_pool = type { i32 }

@MVPP2_BM_VIRT_ALLOC_REG = common dso_local global i32 0, align 4
@MVPP22 = common dso_local global i64 0, align 8
@MVPP22_BM_ADDR_HIGH_ALLOC = common dso_local global i32 0, align 4
@MVPP22_BM_ADDR_HIGH_PHYS_MASK = common dso_local global i32 0, align 4
@MVPP22_BM_ADDR_HIGH_VIRT_MASK = common dso_local global i32 0, align 4
@MVPP22_BM_ADDR_HIGH_VIRT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.mvpp2*, %struct.mvpp2_bm_pool*, i32*, i32*)* @mvpp2_bm_bufs_get_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_bm_bufs_get_addrs(%struct.device* %0, %struct.mvpp2* %1, %struct.mvpp2_bm_pool* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mvpp2*, align 8
  %8 = alloca %struct.mvpp2_bm_pool*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %7, align 8
  store %struct.mvpp2_bm_pool* %2, %struct.mvpp2_bm_pool** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %16 = call i32 (...) @get_cpu()
  %17 = call i32 @mvpp2_cpu_to_thread(%struct.mvpp2* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %21 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MVPP2_BM_PHY_ALLOC_REG(i32 %22)
  %24 = call i8* @mvpp2_thread_read(%struct.mvpp2* %18, i32 %19, i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MVPP2_BM_VIRT_ALLOC_REG, align 4
  %30 = call i8* @mvpp2_thread_read(%struct.mvpp2* %27, i32 %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %34 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MVPP22, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %5
  %39 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @MVPP22_BM_ADDR_HIGH_ALLOC, align 4
  %42 = call i8* @mvpp2_thread_read(%struct.mvpp2* %39, i32 %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @MVPP22_BM_ADDR_HIGH_PHYS_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @MVPP22_BM_ADDR_HIGH_VIRT_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @MVPP22_BM_ADDR_HIGH_VIRT_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %38, %5
  %53 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @mvpp2_cpu_to_thread(%struct.mvpp2*, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i8* @mvpp2_thread_read(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP2_BM_PHY_ALLOC_REG(i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
