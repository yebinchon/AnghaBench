; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.tx_ring_info* }
%struct.tx_ring_info = type { i32 }

@ifup = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Initialize TXC\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Initialize TX channels\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Initialize RX channels\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Initialize classifier\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Initialize ZCP\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Initialize IPP\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Initialize MAC\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Uninit IPP\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Uninit RX channels\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Uninit TX channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_hw(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  %7 = load %struct.niu*, %struct.niu** %3, align 8
  %8 = load i32, i32* @ifup, align 4
  %9 = load i32, i32* @KERN_DEBUG, align 4
  %10 = load %struct.niu*, %struct.niu** %3, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @netif_printk(%struct.niu* %7, i32 %8, i32 %9, i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.niu*, %struct.niu** %3, align 8
  %15 = call i32 @niu_txc_enable_port(%struct.niu* %14, i32 1)
  %16 = load %struct.niu*, %struct.niu** %3, align 8
  %17 = call i32 @niu_txc_port_dma_enable(%struct.niu* %16, i32 1)
  %18 = load %struct.niu*, %struct.niu** %3, align 8
  %19 = call i32 @niu_txc_set_imask(%struct.niu* %18, i32 0)
  %20 = load %struct.niu*, %struct.niu** %3, align 8
  %21 = load i32, i32* @ifup, align 4
  %22 = load i32, i32* @KERN_DEBUG, align 4
  %23 = load %struct.niu*, %struct.niu** %3, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_printk(%struct.niu* %20, i32 %21, i32 %22, i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %48, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.niu*, %struct.niu** %3, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.niu*, %struct.niu** %3, align 8
  %35 = getelementptr inbounds %struct.niu, %struct.niu* %34, i32 0, i32 2
  %36 = load %struct.tx_ring_info*, %struct.tx_ring_info** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %36, i64 %38
  store %struct.tx_ring_info* %39, %struct.tx_ring_info** %6, align 8
  %40 = load %struct.niu*, %struct.niu** %3, align 8
  %41 = load %struct.tx_ring_info*, %struct.tx_ring_info** %6, align 8
  %42 = call i32 @niu_init_one_tx_channel(%struct.niu* %40, %struct.tx_ring_info* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %152

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.niu*, %struct.niu** %3, align 8
  %53 = load i32, i32* @ifup, align 4
  %54 = load i32, i32* @KERN_DEBUG, align 4
  %55 = load %struct.niu*, %struct.niu** %3, align 8
  %56 = getelementptr inbounds %struct.niu, %struct.niu* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @netif_printk(%struct.niu* %52, i32 %53, i32 %54, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.niu*, %struct.niu** %3, align 8
  %60 = call i32 @niu_init_rx_channels(%struct.niu* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %139

64:                                               ; preds = %51
  %65 = load %struct.niu*, %struct.niu** %3, align 8
  %66 = load i32, i32* @ifup, align 4
  %67 = load i32, i32* @KERN_DEBUG, align 4
  %68 = load %struct.niu*, %struct.niu** %3, align 8
  %69 = getelementptr inbounds %struct.niu, %struct.niu* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @netif_printk(%struct.niu* %65, i32 %66, i32 %67, i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.niu*, %struct.niu** %3, align 8
  %73 = call i32 @niu_init_classifier_hw(%struct.niu* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %127

77:                                               ; preds = %64
  %78 = load %struct.niu*, %struct.niu** %3, align 8
  %79 = load i32, i32* @ifup, align 4
  %80 = load i32, i32* @KERN_DEBUG, align 4
  %81 = load %struct.niu*, %struct.niu** %3, align 8
  %82 = getelementptr inbounds %struct.niu, %struct.niu* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @netif_printk(%struct.niu* %78, i32 %79, i32 %80, i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.niu*, %struct.niu** %3, align 8
  %86 = call i32 @niu_init_zcp(%struct.niu* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %127

90:                                               ; preds = %77
  %91 = load %struct.niu*, %struct.niu** %3, align 8
  %92 = load i32, i32* @ifup, align 4
  %93 = load i32, i32* @KERN_DEBUG, align 4
  %94 = load %struct.niu*, %struct.niu** %3, align 8
  %95 = getelementptr inbounds %struct.niu, %struct.niu* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @netif_printk(%struct.niu* %91, i32 %92, i32 %93, i32 %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %98 = load %struct.niu*, %struct.niu** %3, align 8
  %99 = call i32 @niu_init_ipp(%struct.niu* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %127

103:                                              ; preds = %90
  %104 = load %struct.niu*, %struct.niu** %3, align 8
  %105 = load i32, i32* @ifup, align 4
  %106 = load i32, i32* @KERN_DEBUG, align 4
  %107 = load %struct.niu*, %struct.niu** %3, align 8
  %108 = getelementptr inbounds %struct.niu, %struct.niu* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @netif_printk(%struct.niu* %104, i32 %105, i32 %106, i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %111 = load %struct.niu*, %struct.niu** %3, align 8
  %112 = call i32 @niu_init_mac(%struct.niu* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %117

116:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %152

117:                                              ; preds = %115
  %118 = load %struct.niu*, %struct.niu** %3, align 8
  %119 = load i32, i32* @ifup, align 4
  %120 = load i32, i32* @KERN_DEBUG, align 4
  %121 = load %struct.niu*, %struct.niu** %3, align 8
  %122 = getelementptr inbounds %struct.niu, %struct.niu* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @netif_printk(%struct.niu* %118, i32 %119, i32 %120, i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %125 = load %struct.niu*, %struct.niu** %3, align 8
  %126 = call i32 @niu_disable_ipp(%struct.niu* %125)
  br label %127

127:                                              ; preds = %117, %102, %89, %76
  %128 = load %struct.niu*, %struct.niu** %3, align 8
  %129 = load i32, i32* @ifup, align 4
  %130 = load i32, i32* @KERN_DEBUG, align 4
  %131 = load %struct.niu*, %struct.niu** %3, align 8
  %132 = getelementptr inbounds %struct.niu, %struct.niu* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @netif_printk(%struct.niu* %128, i32 %129, i32 %130, i32 %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %135 = load %struct.niu*, %struct.niu** %3, align 8
  %136 = call i32 @niu_stop_rx_channels(%struct.niu* %135)
  %137 = load %struct.niu*, %struct.niu** %3, align 8
  %138 = call i32 @niu_reset_rx_channels(%struct.niu* %137)
  br label %139

139:                                              ; preds = %127, %63
  %140 = load %struct.niu*, %struct.niu** %3, align 8
  %141 = load i32, i32* @ifup, align 4
  %142 = load i32, i32* @KERN_DEBUG, align 4
  %143 = load %struct.niu*, %struct.niu** %3, align 8
  %144 = getelementptr inbounds %struct.niu, %struct.niu* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @netif_printk(%struct.niu* %140, i32 %141, i32 %142, i32 %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %147 = load %struct.niu*, %struct.niu** %3, align 8
  %148 = call i32 @niu_stop_tx_channels(%struct.niu* %147)
  %149 = load %struct.niu*, %struct.niu** %3, align 8
  %150 = call i32 @niu_reset_tx_channels(%struct.niu* %149)
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %139, %116, %45
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @netif_printk(%struct.niu*, i32, i32, i32, i8*) #1

declare dso_local i32 @niu_txc_enable_port(%struct.niu*, i32) #1

declare dso_local i32 @niu_txc_port_dma_enable(%struct.niu*, i32) #1

declare dso_local i32 @niu_txc_set_imask(%struct.niu*, i32) #1

declare dso_local i32 @niu_init_one_tx_channel(%struct.niu*, %struct.tx_ring_info*) #1

declare dso_local i32 @niu_init_rx_channels(%struct.niu*) #1

declare dso_local i32 @niu_init_classifier_hw(%struct.niu*) #1

declare dso_local i32 @niu_init_zcp(%struct.niu*) #1

declare dso_local i32 @niu_init_ipp(%struct.niu*) #1

declare dso_local i32 @niu_init_mac(%struct.niu*) #1

declare dso_local i32 @niu_disable_ipp(%struct.niu*) #1

declare dso_local i32 @niu_stop_rx_channels(%struct.niu*) #1

declare dso_local i32 @niu_reset_rx_channels(%struct.niu*) #1

declare dso_local i32 @niu_stop_tx_channels(%struct.niu*) #1

declare dso_local i32 @niu_reset_tx_channels(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
