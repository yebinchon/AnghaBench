; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_rx = type { i32, i64, i32, i64, i8*, %struct.TYPE_2__*, %struct.lan743x_rx_buffer_info*, i8*, %struct.lan743x_rx_descriptor* }
%struct.TYPE_2__ = type { i32 }
%struct.lan743x_rx_buffer_info = type { i32 }
%struct.lan743x_rx_descriptor = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LAN743X_RX_RING_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RX_CFG_B_RX_RING_LEN_MASK_ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_rx*)* @lan743x_rx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_rx_ring_init(%struct.lan743x_rx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_rx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.lan743x_rx* %0, %struct.lan743x_rx** %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @LAN743X_RX_RING_SIZE, align 4
  %13 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %14 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %16 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %132

22:                                               ; preds = %1
  %23 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %24 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RX_CFG_B_RX_RING_LEN_MASK_, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %132

33:                                               ; preds = %22
  %34 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %35 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i64 @ALIGN(i32 %39, i32 %40)
  store i64 %41, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %42 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %43 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %4, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i8* @pci_zalloc_consistent(i32 %46, i32 %48, i8** %5)
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %33
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %132

55:                                               ; preds = %33
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %58 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = bitcast i8* %59 to %struct.lan743x_rx_descriptor*
  %61 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %62 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %61, i32 0, i32 8
  store %struct.lan743x_rx_descriptor* %60, %struct.lan743x_rx_descriptor** %62, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %65 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %64, i32 0, i32 7
  store i8* %63, i8** %65, align 8
  %66 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %67 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kcalloc(i32 %68, i32 4, i32 %69)
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %55
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %132

76:                                               ; preds = %55
  %77 = load i8*, i8** %6, align 8
  %78 = bitcast i8* %77 to %struct.lan743x_rx_buffer_info*
  %79 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %80 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %79, i32 0, i32 6
  store %struct.lan743x_rx_buffer_info* %78, %struct.lan743x_rx_buffer_info** %80, align 8
  store i8* null, i8** %5, align 8
  %81 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %82 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @pci_zalloc_consistent(i32 %85, i32 1, i8** %5)
  store i8* %86, i8** %6, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %76
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %132

92:                                               ; preds = %76
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %95 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %99 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %101 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 3
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %132

108:                                              ; preds = %92
  %109 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %110 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %128, %108
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %114 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %111
  %118 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %119 = call %struct.sk_buff* @lan743x_rx_allocate_skb(%struct.lan743x_rx* %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %9, align 8
  %120 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = call i32 @lan743x_rx_init_ring_element(%struct.lan743x_rx* %120, i32 %121, %struct.sk_buff* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %132

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %111

131:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %136

132:                                              ; preds = %126, %105, %89, %73, %52, %30, %19
  %133 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %134 = call i32 @lan743x_rx_ring_cleanup(%struct.lan743x_rx* %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %132, %131
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i8* @pci_zalloc_consistent(i32, i32, i8**) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @lan743x_rx_allocate_skb(%struct.lan743x_rx*) #1

declare dso_local i32 @lan743x_rx_init_ring_element(%struct.lan743x_rx*, i32, %struct.sk_buff*) #1

declare dso_local i32 @lan743x_rx_ring_cleanup(%struct.lan743x_rx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
