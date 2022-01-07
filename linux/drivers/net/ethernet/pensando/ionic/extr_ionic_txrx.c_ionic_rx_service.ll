; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_cq = type { i32, %struct.ionic_queue* }
%struct.ionic_queue = type { %struct.ionic_desc_info*, %struct.TYPE_2__* }
%struct.ionic_desc_info = type { i64, i32*, i32*, %struct.ionic_desc_info* }
%struct.TYPE_2__ = type { i64 }
%struct.ionic_cq_info = type { %struct.ionic_rxq_comp* }
%struct.ionic_rxq_comp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_cq*, %struct.ionic_cq_info*)* @ionic_rx_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_rx_service(%struct.ionic_cq* %0, %struct.ionic_cq_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ionic_cq*, align 8
  %5 = alloca %struct.ionic_cq_info*, align 8
  %6 = alloca %struct.ionic_rxq_comp*, align 8
  %7 = alloca %struct.ionic_queue*, align 8
  %8 = alloca %struct.ionic_desc_info*, align 8
  store %struct.ionic_cq* %0, %struct.ionic_cq** %4, align 8
  store %struct.ionic_cq_info* %1, %struct.ionic_cq_info** %5, align 8
  %9 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %5, align 8
  %10 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %9, i32 0, i32 0
  %11 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %10, align 8
  store %struct.ionic_rxq_comp* %11, %struct.ionic_rxq_comp** %6, align 8
  %12 = load %struct.ionic_cq*, %struct.ionic_cq** %4, align 8
  %13 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %12, i32 0, i32 1
  %14 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  store %struct.ionic_queue* %14, %struct.ionic_queue** %7, align 8
  %15 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %6, align 8
  %16 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ionic_cq*, %struct.ionic_cq** %4, align 8
  %19 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @color_match(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.ionic_queue*, %struct.ionic_queue** %7, align 8
  %26 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %25, i32 0, i32 0
  %27 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %26, align 8
  %28 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ionic_queue*, %struct.ionic_queue** %7, align 8
  %31 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %67

37:                                               ; preds = %24
  %38 = load %struct.ionic_queue*, %struct.ionic_queue** %7, align 8
  %39 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %38, i32 0, i32 0
  %40 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %39, align 8
  store %struct.ionic_desc_info* %40, %struct.ionic_desc_info** %8, align 8
  %41 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %8, align 8
  %42 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %6, align 8
  %45 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %67

50:                                               ; preds = %37
  %51 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %8, align 8
  %52 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %51, i32 0, i32 3
  %53 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %52, align 8
  %54 = load %struct.ionic_queue*, %struct.ionic_queue** %7, align 8
  %55 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %54, i32 0, i32 0
  store %struct.ionic_desc_info* %53, %struct.ionic_desc_info** %55, align 8
  %56 = load %struct.ionic_queue*, %struct.ionic_queue** %7, align 8
  %57 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %8, align 8
  %58 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %5, align 8
  %59 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %8, align 8
  %60 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @ionic_rx_clean(%struct.ionic_queue* %56, %struct.ionic_desc_info* %57, %struct.ionic_cq_info* %58, i32* %61)
  %63 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %8, align 8
  %64 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %8, align 8
  %66 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %50, %49, %36, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @color_match(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ionic_rx_clean(%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
