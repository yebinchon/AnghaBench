; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i32, i32, i32, i32, i32 }
%struct.aq_nic_s = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aq_ring_s* (%struct.aq_ring_s*, %struct.aq_nic_s*)* @aq_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aq_ring_s* @aq_ring_alloc(%struct.aq_ring_s* %0, %struct.aq_nic_s* %1) #0 {
  %3 = alloca %struct.aq_ring_s*, align 8
  %4 = alloca %struct.aq_nic_s*, align 8
  %5 = alloca i32, align 4
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %3, align 8
  store %struct.aq_nic_s* %1, %struct.aq_nic_s** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %7 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @kcalloc(i32 %8, i32 4, i32 %9)
  %11 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %12 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %14 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %22 = call i32 @aq_nic_get_dev(%struct.aq_nic_s* %21)
  %23 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %24 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %27 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %31 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %30, i32 0, i32 3
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @dma_alloc_coherent(i32 %22, i32 %29, i32* %31, i32 %32)
  %34 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %35 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %37 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %20
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43, %40, %17
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  %49 = call i32 @aq_ring_free(%struct.aq_ring_s* %48)
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %3, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.aq_ring_s*, %struct.aq_ring_s** %3, align 8
  ret %struct.aq_ring_s* %51
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @aq_nic_get_dev(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_ring_free(%struct.aq_ring_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
