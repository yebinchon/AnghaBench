; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_bnx2_resc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_bnx2_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.TYPE_2__, %struct.kwqe** }
%struct.TYPE_2__ = type { i64 }
%struct.kwqe = type { i32 }

@KWQ_PAGE_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_alloc_bnx2_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_bnx2_resc(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 0
  %8 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  store %struct.cnic_local* %8, %struct.cnic_local** %4, align 8
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %10 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %11 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %10, i32 0, i32 1
  %12 = load i32, i32* @KWQ_PAGE_CNT, align 4
  %13 = call i32 @cnic_alloc_dma(%struct.cnic_dev* %9, %struct.TYPE_2__* %11, i32 %12, i32 1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %19 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.kwqe**
  %23 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %24 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %23, i32 0, i32 2
  store %struct.kwqe** %22, %struct.kwqe*** %24, align 8
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %26 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %27 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %26, i32 0, i32 0
  %28 = call i32 @cnic_alloc_kcq(%struct.cnic_dev* %25, i32* %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %51

32:                                               ; preds = %17
  %33 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %34 = call i32 @cnic_alloc_context(%struct.cnic_dev* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %51

38:                                               ; preds = %32
  %39 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %40 = call i32 @cnic_alloc_uio_rings(%struct.cnic_dev* %39, i32 2)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %51

44:                                               ; preds = %38
  %45 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %46 = call i32 @cnic_init_uio(%struct.cnic_dev* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %51

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %55

51:                                               ; preds = %49, %43, %37, %31, %16
  %52 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %53 = call i32 @cnic_free_resc(%struct.cnic_dev* %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %50
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @cnic_alloc_dma(%struct.cnic_dev*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @cnic_alloc_kcq(%struct.cnic_dev*, i32*, i32) #1

declare dso_local i32 @cnic_alloc_context(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_alloc_uio_rings(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_init_uio(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_free_resc(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
