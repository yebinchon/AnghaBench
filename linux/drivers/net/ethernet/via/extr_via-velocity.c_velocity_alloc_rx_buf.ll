; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_alloc_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_alloc_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.velocity_rd_info*, %struct.rx_desc* }
%struct.velocity_rd_info = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.rx_desc = type { i32, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.velocity_info*, i32)* @velocity_alloc_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_alloc_rx_buf(%struct.velocity_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.velocity_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_desc*, align 8
  %7 = alloca %struct.velocity_rd_info*, align 8
  store %struct.velocity_info* %0, %struct.velocity_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %9 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.rx_desc*, %struct.rx_desc** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %11, i64 %13
  store %struct.rx_desc* %14, %struct.rx_desc** %6, align 8
  %15 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %16 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %18, i64 %20
  store %struct.velocity_rd_info* %21, %struct.velocity_rd_info** %7, align 8
  %22 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %23 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %26 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 64
  %30 = call %struct.TYPE_5__* @netdev_alloc_skb(i32 %24, i32 %29)
  %31 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %7, align 8
  %32 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %31, i32 0, i32 1
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %32, align 8
  %33 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %7, align 8
  %34 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp eq %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %89

40:                                               ; preds = %2
  %41 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %7, align 8
  %42 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %7, align 8
  %45 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %48, 63
  %50 = sub i64 64, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @skb_reserve(%struct.TYPE_5__* %43, i32 %51)
  %53 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %54 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %7, align 8
  %57 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %62 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %66 = call i32 @dma_map_single(i32 %55, i64 %60, i32 %64, i32 %65)
  %67 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %7, align 8
  %68 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %70 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %69, i32 0, i32 3
  %71 = bitcast i32* %70 to i64*
  store i64 0, i64* %71, align 4
  %72 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %73 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = load i32, i32* @RX_INTEN, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %80 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.velocity_rd_info*, %struct.velocity_rd_info** %7, align 8
  %82 = getelementptr inbounds %struct.velocity_rd_info, %struct.velocity_rd_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %86 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.rx_desc*, %struct.rx_desc** %6, align 8
  %88 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %40, %37
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_5__* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
