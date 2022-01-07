; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.rhine_private = type { i32, i8*, i8*, i8*, i8*, i8*, i32* }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not allocate DMA memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rqRhineI = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ring(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rhine_private*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %8)
  store %struct.rhine_private* %9, %struct.rhine_private** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* @RX_RING_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = load i32, i32* @TX_RING_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %17, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call i8* @dma_alloc_coherent(%struct.device* %14, i32 %22, i8** %7, i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %92

32:                                               ; preds = %1
  %33 = load %struct.rhine_private*, %struct.rhine_private** %4, align 8
  %34 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @rqRhineI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* @PKT_BUF_SZ, align 4
  %42 = load i32, i32* @TX_RING_SIZE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load %struct.rhine_private*, %struct.rhine_private** %4, align 8
  %45 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %44, i32 0, i32 1
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i8* @dma_alloc_coherent(%struct.device* %40, i32 %43, i8** %45, i32 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.rhine_private*, %struct.rhine_private** %4, align 8
  %50 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %49, i32 0, i32 6
  store i32* %48, i32** %50, align 8
  %51 = load %struct.rhine_private*, %struct.rhine_private** %4, align 8
  %52 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %39
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* @RX_RING_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = load i32, i32* @TX_RING_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = add i64 %59, %62
  %64 = trunc i64 %63 to i32
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @dma_free_coherent(%struct.device* %56, i32 %64, i8* %65, i8* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %92

70:                                               ; preds = %39
  br label %71

71:                                               ; preds = %70, %32
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.rhine_private*, %struct.rhine_private** %4, align 8
  %74 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* @RX_RING_SIZE, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = getelementptr i8, i8* %75, i64 %78
  %80 = load %struct.rhine_private*, %struct.rhine_private** %4, align 8
  %81 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.rhine_private*, %struct.rhine_private** %4, align 8
  %84 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* @RX_RING_SIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = getelementptr i8, i8* %85, i64 %88
  %90 = load %struct.rhine_private*, %struct.rhine_private** %4, align 8
  %91 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %71, %55, %27
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i8**, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
