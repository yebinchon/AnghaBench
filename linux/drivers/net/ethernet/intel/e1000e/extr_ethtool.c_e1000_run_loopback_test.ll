; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_run_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_run_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw, %struct.pci_dev*, %struct.e1000_ring, %struct.e1000_ring }
%struct.e1000_hw = type { i32 }
%struct.pci_dev = type { i32 }
%struct.e1000_ring = type { i32, %struct.e1000_buffer* }
%struct.e1000_buffer = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_run_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_run_loopback_test(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_ring*, align 8
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca %struct.e1000_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 3
  store %struct.e1000_ring* %17, %struct.e1000_ring** %3, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 2
  store %struct.e1000_ring* %19, %struct.e1000_ring** %4, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %5, align 8
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 0
  store %struct.e1000_hw* %24, %struct.e1000_hw** %6, align 8
  store i32 0, i32* %14, align 4
  %25 = call i32 @RDT(i32 0)
  %26 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @ew32(i32 %25, i32 %29)
  %31 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 64
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %52

45:                                               ; preds = %1
  %46 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %47 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 64
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %45, %38
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %158, %52
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %161

57:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %91, %57
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 64
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %62, i32 0, i32 1
  %64 = load %struct.e1000_buffer*, %struct.e1000_buffer** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %64, i64 %66
  store %struct.e1000_buffer* %67, %struct.e1000_buffer** %7, align 8
  %68 = load %struct.e1000_buffer*, %struct.e1000_buffer** %7, align 8
  %69 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @e1000_create_lbtest_frame(i32 %70, i32 1024)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load %struct.e1000_buffer*, %struct.e1000_buffer** %7, align 8
  %75 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.e1000_buffer*, %struct.e1000_buffer** %7, align 8
  %78 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  %81 = call i32 @dma_sync_single_for_device(i32* %73, i32 %76, i32 %79, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %61
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %58

94:                                               ; preds = %58
  %95 = call i32 @TDT(i32 0)
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @ew32(i32 %95, i32 %96)
  %98 = call i32 (...) @e1e_flush()
  %99 = call i32 @msleep(i32 200)
  %100 = load i64, i64* @jiffies, align 8
  store i64 %100, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %144, %94
  %102 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %103 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %102, i32 0, i32 1
  %104 = load %struct.e1000_buffer*, %struct.e1000_buffer** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %104, i64 %106
  store %struct.e1000_buffer* %107, %struct.e1000_buffer** %7, align 8
  %108 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load %struct.e1000_buffer*, %struct.e1000_buffer** %7, align 8
  %111 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %114 = call i32 @dma_sync_single_for_cpu(i32* %109, i32 %112, i32 2048, i32 %113)
  %115 = load %struct.e1000_buffer*, %struct.e1000_buffer** %7, align 8
  %116 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @e1000_check_lbtest_frame(i32 %117, i32 1024)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %101
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %121, %101
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %129 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %132, %124
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %135, 64
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i64, i64* @jiffies, align 8
  %139 = load i64, i64* %15, align 8
  %140 = add i64 %139, 20
  %141 = call i64 @time_after(i64 %138, i64 %140)
  %142 = icmp ne i64 %141, 0
  %143 = xor i1 %142, true
  br label %144

144:                                              ; preds = %137, %134
  %145 = phi i1 [ false, %134 ], [ %143, %137 ]
  br i1 %145, label %101, label %146

146:                                              ; preds = %144
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 64
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 13, i32* %14, align 4
  br label %161

150:                                              ; preds = %146
  %151 = load i64, i64* @jiffies, align 8
  %152 = load i64, i64* %15, align 8
  %153 = add i64 %152, 20
  %154 = call i64 @time_after(i64 %151, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 14, i32* %14, align 4
  br label %161

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %53

161:                                              ; preds = %156, %149, %53
  %162 = load i32, i32* %14, align 4
  ret i32 %162
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @RDT(i32) #1

declare dso_local i32 @e1000_create_lbtest_frame(i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @TDT(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @e1000_check_lbtest_frame(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
