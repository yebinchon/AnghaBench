; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_free_buffer_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_free_buffer_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { %struct.hns3_desc_cb* }
%struct.hns3_desc_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*, i32)* @hns3_free_buffer_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_free_buffer_detach(%struct.hns3_enet_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.hns3_enet_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns3_desc_cb*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %7 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %6, i32 0, i32 0
  %8 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %8, i64 %10
  store %struct.hns3_desc_cb* %11, %struct.hns3_desc_cb** %5, align 8
  %12 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %13 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %12, i32 0, i32 0
  %14 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %14, i64 %16
  %18 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @hns3_buffer_detach(%struct.hns3_enet_ring* %23, i32 %24)
  %26 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %27 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %5, align 8
  %28 = call i32 @hns3_free_buffer(%struct.hns3_enet_ring* %26, %struct.hns3_desc_cb* %27)
  br label %29

29:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @hns3_buffer_detach(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @hns3_free_buffer(%struct.hns3_enet_ring*, %struct.hns3_desc_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
