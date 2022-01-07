; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i64, i32, %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue*, %struct.vmxnet3_intr, %struct.TYPE_4__* }
%struct.vmxnet3_rx_queue = type { i8*, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vmxnet3_intr = type { i64, i8*, i32, i32, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@vmxnet3_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to request irq (intr type:%d), error %d\0A\00", align 1
@UPT1_IML_ADAPTIVE = common dso_local global i32 0, align 4
@VMXNET3_IT_MSIX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"intr type %u, mode %u, %u vectors allocated\0A\00", align 1
@VMXNET3_INTR_BUDDYSHARE = common dso_local global i64 0, align 8
@VMXNET3_INTR_TXSHARE = common dso_local global i64 0, align 8
@VMXNET3_IT_MSI = common dso_local global i64 0, align 8
@vmxnet3_msix_event = common dso_local global i32 0, align 4
@vmxnet3_msix_rx = common dso_local global i32 0, align 4
@vmxnet3_msix_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_adapter*)* @vmxnet3_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_request_irqs(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca %struct.vmxnet3_adapter*, align 8
  %3 = alloca %struct.vmxnet3_intr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmxnet3_rx_queue*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %2, align 8
  %8 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %8, i32 0, i32 6
  store %struct.vmxnet3_intr* %9, %struct.vmxnet3_intr** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %10, i32 0, i32 2
  store i32 1, i32* %11, align 8
  %12 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %12, i32 0, i32 7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @vmxnet3_intr, align 4
  %18 = load i32, i32* @IRQF_SHARED, align 4
  %19 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %19, i32 0, i32 3
  %21 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %20, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %24, i32 0, i32 3
  %26 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %25, align 8
  %27 = call i32 @request_irq(i32 %16, i32 %17, i32 %18, i8* %23, %struct.vmxnet3_rx_queue* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %35, i32 0, i32 3
  %37 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %36, align 8
  %38 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @netdev_err(%struct.vmxnet3_rx_queue* %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %41)
  br label %146

43:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %75, %43
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %44
  %51 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %51, i32 0, i32 4
  %53 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %53, i64 %55
  store %struct.vmxnet3_rx_queue* %56, %struct.vmxnet3_rx_queue** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %7, align 8
  %59 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %60, %63
  %65 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %7, align 8
  %66 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 2, %70
  %72 = add nsw i32 %67, %71
  %73 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %7, align 8
  %74 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %50
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %44

78:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %82 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load i32, i32* @UPT1_IML_ADAPTIVE, align 4
  %87 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %88 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %79

96:                                               ; preds = %79
  %97 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @VMXNET3_IT_MSIX, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %96
  %104 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %105, i32 0, i32 2
  store i32 0, i32* %106, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %122, %103
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %114, i32 0, i32 5
  %116 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %116, i64 %118
  %120 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %107

125:                                              ; preds = %107
  %126 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %127 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %126, i32 0, i32 4
  %128 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %127, align 8
  %129 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %128, i64 0
  %130 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %96
  %133 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %134 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %133, i32 0, i32 3
  %135 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %134, align 8
  %136 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %137 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %140 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %143 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @netdev_info(%struct.vmxnet3_rx_queue* %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %138, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %132, %34
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.vmxnet3_rx_queue*) #1

declare dso_local i32 @netdev_err(%struct.vmxnet3_rx_queue*, i8*, i64, i32) #1

declare dso_local i32 @netdev_info(%struct.vmxnet3_rx_queue*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
