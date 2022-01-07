; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_uninit_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_uninit_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { i32, %struct.hns3_enet_tqp_vector* }
%struct.hns3_enet_tqp_vector = type { i64, i32 }

@HNS3_VECTOR_INITED = common dso_local global i64 0, align 8
@HNS3_VECTOR_NOT_INITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_nic_priv*)* @hns3_nic_uninit_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_nic_uninit_irq(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca %struct.hns3_nic_priv*, align 8
  %3 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %4 = alloca i32, align 4
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %37, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %8 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %5
  %12 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %13 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %12, i32 0, i32 1
  %14 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %14, i64 %16
  store %struct.hns3_enet_tqp_vector* %17, %struct.hns3_enet_tqp_vector** %3, align 8
  %18 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %19 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HNS3_VECTOR_INITED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %37

24:                                               ; preds = %11
  %25 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %26 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @irq_set_affinity_hint(i32 %27, i32* null)
  %29 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %30 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %33 = call i32 @free_irq(i32 %31, %struct.hns3_enet_tqp_vector* %32)
  %34 = load i64, i64* @HNS3_VECTOR_NOT_INITED, align 8
  %35 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %36 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %24, %23
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %5

40:                                               ; preds = %5
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.hns3_enet_tqp_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
