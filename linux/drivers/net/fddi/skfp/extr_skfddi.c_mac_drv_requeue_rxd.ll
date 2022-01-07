; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_requeue_rxd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_requeue_rxd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i32, i8* }
%struct.s_smt_fp_rxd = type { %struct.TYPE_4__, %struct.s_smt_fp_rxd* }
%struct.TYPE_4__ = type { i8*, %struct.sk_buff* }
%struct.sk_buff = type { i8* }

@.str = private unnamed_addr constant [31 x i8] c"fddi: Multi-fragment requeue!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Requeue with no skb in rxd!\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Queueing invalid buffer!\0A\00", align 1
@FIRST_FRAG = common dso_local global i32 0, align 4
@LAST_FRAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_drv_requeue_rxd(%struct.s_smc* %0, %struct.s_smt_fp_rxd* %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca %struct.s_smt_fp_rxd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s_smt_fp_rxd*, align 8
  %8 = alloca %struct.s_smt_fp_rxd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store %struct.s_smt_fp_rxd* %1, %struct.s_smt_fp_rxd** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  store %struct.s_smt_fp_rxd* %22, %struct.s_smt_fp_rxd** %8, align 8
  br label %23

23:                                               ; preds = %113, %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %116

26:                                               ; preds = %23
  %27 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %8, align 8
  %28 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %27, i32 0, i32 1
  %29 = load volatile %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %28, align 8
  store %struct.s_smt_fp_rxd* %29, %struct.s_smt_fp_rxd** %7, align 8
  %30 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %31 = call %struct.s_smt_fp_rxd* @HWM_GET_CURR_RXD(%struct.s_smc* %30)
  store %struct.s_smt_fp_rxd* %31, %struct.s_smt_fp_rxd** %5, align 8
  %32 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %8, align 8
  %33 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load volatile %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = icmp eq %struct.sk_buff* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %26
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 3
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sk_buff* @alloc_skb(i32 %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %9, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  %49 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store volatile %struct.sk_buff* %47, %struct.sk_buff** %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = call i32 @skb_reserve(%struct.sk_buff* %51, i32 3)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @skb_put(%struct.sk_buff* %53, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %11, align 8
  %59 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %60 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %65 = call i8* @pci_map_single(i32* %61, i8* %62, i32 %63, i32 %64)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  %68 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store volatile i8* %66, i8** %69, align 8
  br label %83

70:                                               ; preds = %38
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  %73 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store volatile %struct.sk_buff* null, %struct.sk_buff** %74, align 8
  %75 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %76 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %11, align 8
  %79 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %80 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %12, align 8
  br label %83

83:                                               ; preds = %70, %46
  br label %103

84:                                               ; preds = %26
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  %87 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store volatile %struct.sk_buff* %85, %struct.sk_buff** %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %11, align 8
  %92 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %93 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %98 = call i8* @pci_map_single(i32* %94, i8* %95, i32 %96, i32 %97)
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %5, align 8
  %101 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store volatile i8* %99, i8** %102, align 8
  br label %103

103:                                              ; preds = %84, %83
  %104 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @FIRST_FRAG, align 4
  %109 = load i32, i32* @LAST_FRAG, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @hwm_rx_frag(%struct.s_smc* %104, i8* %105, i8* %106, i32 %107, i32 %110)
  %112 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %7, align 8
  store %struct.s_smt_fp_rxd* %112, %struct.s_smt_fp_rxd** %8, align 8
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %6, align 4
  br label %23

116:                                              ; preds = %23
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.s_smt_fp_rxd* @HWM_GET_CURR_RXD(%struct.s_smc*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @pci_map_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @hwm_rx_frag(%struct.s_smc*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
