; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_alloc_ring_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_alloc_ring_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i64, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*)* @hns3_alloc_ring_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_alloc_ring_memory(%struct.hns3_enet_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns3_enet_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %3, align 8
  %5 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %6 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %11 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %66

17:                                               ; preds = %9
  %18 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %19 = call i32 @ring_to_dev(%struct.hns3_enet_ring* %18)
  %20 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %21 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @devm_kcalloc(i32 %19, i64 %22, i32 4, i32 %23)
  %25 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %26 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %28 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %17
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %17
  %35 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %36 = call i32 @hns3_alloc_desc(%struct.hns3_enet_ring* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %55

40:                                               ; preds = %34
  %41 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %42 = call i32 @HNAE3_IS_TX_RING(%struct.hns3_enet_ring* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %46 = call i32 @hns3_alloc_ring_buffers(%struct.hns3_enet_ring* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %52

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %40
  store i32 0, i32* %2, align 4
  br label %66

52:                                               ; preds = %49
  %53 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %54 = call i32 @hns3_free_desc(%struct.hns3_enet_ring* %53)
  br label %55

55:                                               ; preds = %52, %39
  %56 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %57 = call i32 @ring_to_dev(%struct.hns3_enet_ring* %56)
  %58 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %59 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @devm_kfree(i32 %57, i32* %60)
  %62 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %63 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %55, %31
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %51, %14
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32* @devm_kcalloc(i32, i64, i32, i32) #1

declare dso_local i32 @ring_to_dev(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_alloc_desc(%struct.hns3_enet_ring*) #1

declare dso_local i32 @HNAE3_IS_TX_RING(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_alloc_ring_buffers(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_free_desc(%struct.hns3_enet_ring*) #1

declare dso_local i32 @devm_kfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
