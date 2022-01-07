; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_bufs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mvpp2 = type { i32 }
%struct.mvpp2_bm_pool = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Pool does not have so many bufs pool(%d) bufs(%d)\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.mvpp2*, %struct.mvpp2_bm_pool*, i32)* @mvpp2_bm_bufs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_bm_bufs_free(%struct.device* %0, %struct.mvpp2* %1, %struct.mvpp2_bm_pool* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca %struct.mvpp2_bm_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %6, align 8
  store %struct.mvpp2_bm_pool* %2, %struct.mvpp2_bm_pool** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %15 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %20 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %25 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %18, %4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %35 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %36 = call i32 @mvpp2_bm_bufs_get_addrs(%struct.device* %33, %struct.mvpp2* %34, %struct.mvpp2_bm_pool* %35, i32* %10, i32* %11)
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %40 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(%struct.device* %37, i32 %38, i32 %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @phys_to_virt(i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %32
  br label %57

50:                                               ; preds = %32
  %51 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @mvpp2_frag_free(%struct.mvpp2_bm_pool* %51, i8* %52)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %28

57:                                               ; preds = %49, %28
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %7, align 8
  %60 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @mvpp2_bm_bufs_get_addrs(%struct.device*, %struct.mvpp2*, %struct.mvpp2_bm_pool*, i32*, i32*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @phys_to_virt(i32) #1

declare dso_local i32 @mvpp2_frag_free(%struct.mvpp2_bm_pool*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
