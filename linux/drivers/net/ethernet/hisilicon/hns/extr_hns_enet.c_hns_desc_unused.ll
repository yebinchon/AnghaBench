; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_desc_unused.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_desc_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_ring*)* @hns_desc_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_desc_unused(%struct.hnae_ring* %0) #0 {
  %2 = alloca %struct.hnae_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hnae_ring* %0, %struct.hnae_ring** %2, align 8
  %5 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %6 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %9 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.hnae_ring*, %struct.hnae_ring** %2, align 8
  %17 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ 0, %14 ], [ %18, %15 ]
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
