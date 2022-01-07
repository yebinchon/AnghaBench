; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@CP_RING_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CP_RX_RING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cp_private*)* @cp_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_alloc_rings(%struct.cp_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cp_private*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %3, align 8
  %7 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %8 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @CP_RING_BYTES, align 4
  %13 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %14 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @dma_alloc_coherent(%struct.device* %11, i32 %12, i32* %14, i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %26 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %28 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @CP_RX_RING_SIZE, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %33 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %35 = call i32 @cp_init_rings(%struct.cp_private* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %22
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i32, i32* @CP_RING_BYTES, align 4
  %41 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %42 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %45 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dma_free_coherent(%struct.device* %39, i32 %40, i32* %43, i32 %46)
  br label %48

48:                                               ; preds = %38, %22
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @cp_init_rings(%struct.cp_private*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
