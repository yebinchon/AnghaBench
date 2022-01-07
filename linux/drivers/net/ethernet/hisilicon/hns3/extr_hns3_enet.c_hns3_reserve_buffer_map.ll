; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reserve_buffer_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_reserve_buffer_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32 }
%struct.hns3_desc_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, %struct.hns3_desc_cb*)* @hns3_reserve_buffer_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_reserve_buffer_map(%struct.hns3_enet_ring* %0, %struct.hns3_desc_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns3_enet_ring*, align 8
  %5 = alloca %struct.hns3_desc_cb*, align 8
  %6 = alloca i32, align 4
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %4, align 8
  store %struct.hns3_desc_cb* %1, %struct.hns3_desc_cb** %5, align 8
  %7 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %8 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %5, align 8
  %9 = call i32 @hns3_alloc_buffer(%struct.hns3_enet_ring* %7, %struct.hns3_desc_cb* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %15 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %5, align 8
  %16 = call i32 @hns3_map_buffer(%struct.hns3_enet_ring* %14, %struct.hns3_desc_cb* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %27

21:                                               ; preds = %19
  %22 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %23 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %5, align 8
  %24 = call i32 @hns3_free_buffer(%struct.hns3_enet_ring* %22, %struct.hns3_desc_cb* %23)
  br label %25

25:                                               ; preds = %21, %12
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @hns3_alloc_buffer(%struct.hns3_enet_ring*, %struct.hns3_desc_cb*) #1

declare dso_local i32 @hns3_map_buffer(%struct.hns3_enet_ring*, %struct.hns3_desc_cb*) #1

declare dso_local i32 @hns3_free_buffer(%struct.hns3_enet_ring*, %struct.hns3_desc_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
