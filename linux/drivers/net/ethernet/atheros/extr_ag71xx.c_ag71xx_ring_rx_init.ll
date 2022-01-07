; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.net_device*, %struct.ag71xx_ring }
%struct.net_device = type { i32 }
%struct.ag71xx_ring = type { i64, i64, i32*, i64, i32 }
%struct.ag71xx_desc = type { i32, i64 }

@AG71XX_DESC_SIZE = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"RX desc at %p, next is %08x\0A\00", align 1
@netdev_alloc_frag = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_ring_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_ring_rx_init(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ag71xx_desc*, align 8
  %10 = alloca %struct.ag71xx_desc*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %11, i32 0, i32 2
  store %struct.ag71xx_ring* %12, %struct.ag71xx_ring** %3, align 8
  %13 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %14 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %17 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BIT(i32 %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %22 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BIT(i32 %23)
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %54, %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %30, i32 %31)
  store %struct.ag71xx_desc* %32, %struct.ag71xx_desc** %9, align 8
  %33 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %34 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %38, %39
  %41 = mul i32 %36, %40
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %35, %42
  %44 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %9, align 8
  %45 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %47 = load i32, i32* @rx_status, align 4
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %9, align 8
  %50 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %9, align 8
  %51 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @netif_dbg(%struct.ag71xx* %46, i32 %47, %struct.net_device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.ag71xx_desc* %49, i64 %52)
  br label %54

54:                                               ; preds = %29
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %25

57:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %86, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %63, i32 %64)
  store %struct.ag71xx_desc* %65, %struct.ag71xx_desc** %10, align 8
  %66 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %67 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %68 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %74 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @netdev_alloc_frag, align 4
  %77 = call i32 @ag71xx_fill_rx_buf(%struct.ag71xx* %66, i32* %72, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %62
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %89

82:                                               ; preds = %62
  %83 = load i32, i32* @DESC_EMPTY, align 4
  %84 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %85 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %58

89:                                               ; preds = %79, %58
  %90 = call i32 (...) @wmb()
  %91 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %92 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %94 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @netif_dbg(%struct.ag71xx*, i32, %struct.net_device*, i8*, %struct.ag71xx_desc*, i64) #1

declare dso_local i32 @ag71xx_fill_rx_buf(%struct.ag71xx*, i32*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
