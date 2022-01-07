; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fza_private = type { i64, i32**, i64*, i32, i32, %struct.TYPE_2__*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s: queue stopped\0A\00", align 1
@FZA_STATE_UNINITIALIZED = common dso_local global i64 0, align 8
@FZA_CONTROL_A_SHUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: SHUT timed out!, state %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: SHUT failed!, state %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: SHUT: %lums elapsed\0A\00", align 1
@FZA_RING_RX_SIZE = common dso_local global i32 0, align 4
@FZA_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fza_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fza_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fza_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.fza_private* @netdev_priv(%struct.net_device* %9)
  store %struct.fza_private* %10, %struct.fza_private** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %14 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %18 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %17, i32 0, i32 9
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %21 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %20, i32 0, i32 7
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i64, i64* @FZA_STATE_UNINITIALIZED, align 8
  %25 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %26 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %25, i32 0, i32 8
  store i64 %24, i64* %26, align 8
  %27 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %28 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @FZA_CONTROL_A_SHUT, align 4
  %30 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %31 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @writew_o(i32 %29, i32* %33)
  %35 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %36 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @readw_o(i32* %38)
  %40 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %41 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %40, i32 0, i32 7
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %45 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %48 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 15, %50
  %52 = call i64 @wait_event_timeout(i32 %46, i64 %49, i32 %51)
  store i64 %52, i64* %7, align 8
  %53 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %54 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @readw_o(i32* %56)
  %58 = call i64 @FZA_STATUS_GET_STATE(i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %60 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %1
  %64 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %65 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %66, i64 %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %149

71:                                               ; preds = %1
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @FZA_STATE_UNINITIALIZED, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %77 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %78, i64 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %149

83:                                               ; preds = %71
  %84 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %85 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @HZ, align 4
  %88 = mul nsw i32 15, %87
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %7, align 8
  %91 = sub nsw i64 %89, %90
  %92 = mul nsw i64 %91, 1000
  %93 = load i32, i32* @HZ, align 4
  %94 = sext i32 %93 to i64
  %95 = sdiv i64 %92, %94
  %96 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %86, i64 %95)
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %145, %83
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @FZA_RING_RX_SIZE, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %148

101:                                              ; preds = %97
  %102 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %103 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %102, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %144

110:                                              ; preds = %101
  %111 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %112 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %115 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @FZA_RX_BUFFER_SIZE, align 4
  %122 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %123 = call i32 @dma_unmap_single(i32 %113, i64 %120, i32 %121, i32 %122)
  %124 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %125 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %124, i32 0, i32 1
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @dev_kfree_skb(i32* %130)
  %132 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %133 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 0, i64* %137, align 8
  %138 = load %struct.fza_private*, %struct.fza_private** %4, align 8
  %139 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %110, %101
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %97

148:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %75, %63
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.fza_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writew_o(i32, i32*) #1

declare dso_local i32 @readw_o(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i64 @FZA_STATUS_GET_STATE(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
