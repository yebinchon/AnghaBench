; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_rx_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_rx_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { %struct.TYPE_9__, %struct.ipw2100_rx_packet*, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ipw2100_rx_packet = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@RX_QUEUE_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed bd_queue_allocate\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed status_queue_allocate\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"can't allocate rx packet buffer table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IPW_RX_NIC_BUFFER_LENGTH = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_rx_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_rx_allocate(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipw2100_rx_packet*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %12 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %12, i32 0, i32 0
  %14 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %15 = call i32 @bd_queue_allocate(%struct.ipw2100_priv* %11, %struct.TYPE_9__* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %157

21:                                               ; preds = %1
  %22 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %23 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %24 = call i32 @status_queue_allocate(%struct.ipw2100_priv* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 0
  %32 = call i32 @bd_queue_free(%struct.ipw2100_priv* %29, %struct.TYPE_9__* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %157

34:                                               ; preds = %21
  %35 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ipw2100_rx_packet* @kmalloc_array(i32 %35, i32 8, i32 %36)
  %38 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %39 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %38, i32 0, i32 1
  store %struct.ipw2100_rx_packet* %37, %struct.ipw2100_rx_packet** %39, align 8
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %40, i32 0, i32 1
  %42 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %41, align 8
  %43 = icmp ne %struct.ipw2100_rx_packet* %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %47 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %47, i32 0, i32 0
  %49 = call i32 @bd_queue_free(%struct.ipw2100_priv* %46, %struct.TYPE_9__* %48)
  %50 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %51 = call i32 @status_queue_free(%struct.ipw2100_priv* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %157

54:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %104, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %55
  %60 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %61 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %60, i32 0, i32 1
  %62 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %62, i64 %64
  store %struct.ipw2100_rx_packet* %65, %struct.ipw2100_rx_packet** %7, align 8
  %66 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %67 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %7, align 8
  %68 = call i32 @ipw2100_alloc_skb(%struct.ipw2100_priv* %66, %struct.ipw2100_rx_packet* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %107

75:                                               ; preds = %59
  %76 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %7, align 8
  %77 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %80 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 %78, i32* %86, align 4
  %87 = load i32, i32* @IPW_RX_NIC_BUFFER_LENGTH, align 4
  %88 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %89 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %87, i32* %95, align 4
  %96 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %97 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %75
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %55

107:                                              ; preds = %72, %55
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @RX_QUEUE_LENGTH, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %157

112:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %140, %112
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %113
  %118 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %119 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %122 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %121, i32 0, i32 1
  %123 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %123, i64 %125
  %127 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %130 = call i32 @pci_unmap_single(i32 %120, i32 %128, i32 8, i32 %129)
  %131 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %132 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %131, i32 0, i32 1
  %133 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %133, i64 %135
  %137 = getelementptr inbounds %struct.ipw2100_rx_packet, %struct.ipw2100_rx_packet* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_kfree_skb(i32 %138)
  br label %140

140:                                              ; preds = %117
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %113

143:                                              ; preds = %113
  %144 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %145 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %144, i32 0, i32 1
  %146 = load %struct.ipw2100_rx_packet*, %struct.ipw2100_rx_packet** %145, align 8
  %147 = call i32 @kfree(%struct.ipw2100_rx_packet* %146)
  %148 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %149 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %148, i32 0, i32 1
  store %struct.ipw2100_rx_packet* null, %struct.ipw2100_rx_packet** %149, align 8
  %150 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %151 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %152 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %151, i32 0, i32 0
  %153 = call i32 @bd_queue_free(%struct.ipw2100_priv* %150, %struct.TYPE_9__* %152)
  %154 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %155 = call i32 @status_queue_free(%struct.ipw2100_priv* %154)
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %143, %111, %44, %27, %18
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @bd_queue_allocate(%struct.ipw2100_priv*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @status_queue_allocate(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @bd_queue_free(%struct.ipw2100_priv*, %struct.TYPE_9__*) #1

declare dso_local %struct.ipw2100_rx_packet* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @status_queue_free(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_alloc_skb(%struct.ipw2100_priv*, %struct.ipw2100_rx_packet*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.ipw2100_rx_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
