; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_uninit_ring_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_uninit_ring_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_priv = type { %struct.TYPE_5__*, %struct.hnae_handle* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.hnae_handle = type { i32 }

@RCB_IRQ_INITED = common dso_local global i64 0, align 8
@RCB_IRQ_NOT_INITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_nic_priv*)* @hns_nic_uninit_ring_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_uninit_ring_data(%struct.hns_nic_priv* %0) #0 {
  %2 = alloca %struct.hns_nic_priv*, align 8
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.hns_nic_priv* %0, %struct.hns_nic_priv** %2, align 8
  %5 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %6 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %5, i32 0, i32 1
  %7 = load %struct.hnae_handle*, %struct.hnae_handle** %6, align 8
  store %struct.hnae_handle* %7, %struct.hnae_handle** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %76, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %11 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 2
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %8
  %16 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %17 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = call i32 @netif_napi_del(i32* %22)
  %24 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %25 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RCB_IRQ_INITED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %15
  %37 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %38 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @irq_set_affinity_hint(i32 %46, i32* null)
  %48 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %49 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %59 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = call i32 @free_irq(i32 %57, %struct.TYPE_5__* %63)
  br label %65

65:                                               ; preds = %36, %15
  %66 = load i64, i64* @RCB_IRQ_NOT_INITED, align 8
  %67 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %68 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i64 %66, i64* %75, align 8
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %8

79:                                               ; preds = %8
  %80 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %81 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = call i32 @kfree(%struct.TYPE_5__* %82)
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
