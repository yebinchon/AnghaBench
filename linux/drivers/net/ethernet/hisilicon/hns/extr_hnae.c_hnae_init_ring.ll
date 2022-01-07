; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hnae_ring = type { i64, i64, i32, i64, i64, i32*, i32, i32, i32, %struct.hnae_queue* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_queue*, %struct.hnae_ring*, i32)* @hnae_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hnae_init_ring(%struct.hnae_queue* %0, %struct.hnae_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae_queue*, align 8
  %6 = alloca %struct.hnae_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hnae_queue* %0, %struct.hnae_queue** %5, align 8
  store %struct.hnae_ring* %1, %struct.hnae_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %10 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %15 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %110

21:                                               ; preds = %13
  %22 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %23 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %24 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %23, i32 0, i32 9
  store %struct.hnae_queue* %22, %struct.hnae_queue** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %27 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.hnae_queue*, %struct.hnae_queue** %5, align 8
  %29 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %34 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %36 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %21
  %40 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %41 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %46 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %39, %21
  %51 = phi i1 [ false, %39 ], [ false, %21 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %55 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %61 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %67 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32* @kcalloc(i64 %68, i32 4, i32 %69)
  %71 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %72 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %71, i32 0, i32 5
  store i32* %70, i32** %72, align 8
  %73 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %74 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %50
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %108

80:                                               ; preds = %50
  %81 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %82 = call i32 @hnae_alloc_desc(%struct.hnae_ring* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %101

86:                                               ; preds = %80
  %87 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %88 = call i64 @is_rx_ring(%struct.hnae_ring* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %92 = call i32 @hnae_alloc_buffers(%struct.hnae_ring* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %98

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %86
  store i32 0, i32* %4, align 4
  br label %110

98:                                               ; preds = %95
  %99 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %100 = call i32 @hnae_free_desc(%struct.hnae_ring* %99)
  br label %101

101:                                              ; preds = %98, %85
  %102 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %103 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load %struct.hnae_ring*, %struct.hnae_ring** %6, align 8
  %107 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %106, i32 0, i32 5
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %101, %77
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %97, %18
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @hnae_alloc_desc(%struct.hnae_ring*) #1

declare dso_local i64 @is_rx_ring(%struct.hnae_ring*) #1

declare dso_local i32 @hnae_alloc_buffers(%struct.hnae_ring*) #1

declare dso_local i32 @hnae_free_desc(%struct.hnae_ring*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
