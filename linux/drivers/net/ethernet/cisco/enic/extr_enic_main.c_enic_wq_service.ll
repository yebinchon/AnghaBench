; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_wq_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_wq_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.cq_desc = type { i32 }
%struct.enic = type { i32*, i32, i32* }

@enic_wq_free_buf = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@ENIC_DESC_MAX_SPLITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, %struct.cq_desc*, i32, i64, i64, i8*)* @enic_wq_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_wq_service(%struct.vnic_dev* %0, %struct.cq_desc* %1, i32 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.vnic_dev*, align 8
  %8 = alloca %struct.cq_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.enic*, align 8
  store %struct.vnic_dev* %0, %struct.vnic_dev** %7, align 8
  store %struct.cq_desc* %1, %struct.cq_desc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %15 = call %struct.enic* @vnic_dev_priv(%struct.vnic_dev* %14)
  store %struct.enic* %15, %struct.enic** %13, align 8
  %16 = load %struct.enic*, %struct.enic** %13, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.enic*, %struct.enic** %13, align 8
  %23 = getelementptr inbounds %struct.enic, %struct.enic* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load %struct.cq_desc*, %struct.cq_desc** %8, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* @enic_wq_free_buf, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @vnic_wq_service(i32* %26, %struct.cq_desc* %27, i64 %28, i32 %29, i8* %30)
  %32 = load %struct.enic*, %struct.enic** %13, align 8
  %33 = getelementptr inbounds %struct.enic, %struct.enic* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @netdev_get_tx_queue(i32 %34, i64 %35)
  %37 = call i64 @netif_tx_queue_stopped(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %6
  %40 = load %struct.enic*, %struct.enic** %13, align 8
  %41 = getelementptr inbounds %struct.enic, %struct.enic* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i64 @vnic_wq_desc_avail(i32* %44)
  %46 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %47 = load i64, i64* @ENIC_DESC_MAX_SPLITS, align 8
  %48 = add nsw i64 %46, %47
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.enic*, %struct.enic** %13, align 8
  %52 = getelementptr inbounds %struct.enic, %struct.enic* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @netif_wake_subqueue(i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %39, %6
  %57 = load %struct.enic*, %struct.enic** %13, align 8
  %58 = getelementptr inbounds %struct.enic, %struct.enic* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = call i32 @spin_unlock(i32* %61)
  ret i32 0
}

declare dso_local %struct.enic* @vnic_dev_priv(%struct.vnic_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vnic_wq_service(i32*, %struct.cq_desc*, i64, i32, i8*) #1

declare dso_local i64 @netif_tx_queue_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i64) #1

declare dso_local i64 @vnic_wq_desc_avail(i32*) #1

declare dso_local i32 @netif_wake_subqueue(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
