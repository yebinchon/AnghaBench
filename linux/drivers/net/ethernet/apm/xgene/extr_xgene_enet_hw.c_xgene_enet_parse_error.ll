; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_parse_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_parse_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgene_enet_parse_error(%struct.xgene_enet_desc_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.xgene_enet_desc_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %36 [
    i32 132, label %6
    i32 134, label %11
    i32 133, label %11
    i32 128, label %16
    i32 130, label %21
    i32 129, label %26
    i32 131, label %31
  ]

6:                                                ; preds = %2
  %7 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %8 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  br label %37

11:                                               ; preds = %2, %2
  %12 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %13 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %18 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %28 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %33 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %31, %26, %21, %16, %11, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
