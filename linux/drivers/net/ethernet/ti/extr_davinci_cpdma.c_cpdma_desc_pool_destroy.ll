; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_cpdma.c_cpdma_desc_pool_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_cpdma.c_cpdma_desc_pool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpdma_ctlr = type { i32, %struct.cpdma_desc_pool* }
%struct.cpdma_desc_pool = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"cpdma_desc_pool size %zd != avail %zd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpdma_ctlr*)* @cpdma_desc_pool_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpdma_desc_pool_destroy(%struct.cpdma_ctlr* %0) #0 {
  %2 = alloca %struct.cpdma_ctlr*, align 8
  %3 = alloca %struct.cpdma_desc_pool*, align 8
  store %struct.cpdma_ctlr* %0, %struct.cpdma_ctlr** %2, align 8
  %4 = load %struct.cpdma_ctlr*, %struct.cpdma_ctlr** %2, align 8
  %5 = getelementptr inbounds %struct.cpdma_ctlr, %struct.cpdma_ctlr* %4, i32 0, i32 1
  %6 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %5, align 8
  store %struct.cpdma_desc_pool* %6, %struct.cpdma_desc_pool** %3, align 8
  %7 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %3, align 8
  %8 = icmp ne %struct.cpdma_desc_pool* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %3, align 8
  %12 = getelementptr inbounds %struct.cpdma_desc_pool, %struct.cpdma_desc_pool* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @gen_pool_size(i32 %13)
  %15 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %3, align 8
  %16 = getelementptr inbounds %struct.cpdma_desc_pool, %struct.cpdma_desc_pool* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @gen_pool_avail(i32 %17)
  %19 = icmp ne i64 %14, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %3, align 8
  %22 = getelementptr inbounds %struct.cpdma_desc_pool, %struct.cpdma_desc_pool* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @gen_pool_size(i32 %23)
  %25 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %3, align 8
  %26 = getelementptr inbounds %struct.cpdma_desc_pool, %struct.cpdma_desc_pool* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @gen_pool_avail(i32 %27)
  %29 = call i32 @WARN(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %28)
  %30 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %3, align 8
  %31 = getelementptr inbounds %struct.cpdma_desc_pool, %struct.cpdma_desc_pool* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %10
  %35 = load %struct.cpdma_ctlr*, %struct.cpdma_ctlr** %2, align 8
  %36 = getelementptr inbounds %struct.cpdma_ctlr, %struct.cpdma_ctlr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %3, align 8
  %39 = getelementptr inbounds %struct.cpdma_desc_pool, %struct.cpdma_desc_pool* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %3, align 8
  %42 = getelementptr inbounds %struct.cpdma_desc_pool, %struct.cpdma_desc_pool* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cpdma_desc_pool*, %struct.cpdma_desc_pool** %3, align 8
  %45 = getelementptr inbounds %struct.cpdma_desc_pool, %struct.cpdma_desc_pool* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dma_free_coherent(i32 %37, i32 %40, i64 %43, i32 %46)
  br label %48

48:                                               ; preds = %9, %34, %10
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i64, i64) #1

declare dso_local i64 @gen_pool_size(i32) #1

declare dso_local i64 @gen_pool_avail(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
