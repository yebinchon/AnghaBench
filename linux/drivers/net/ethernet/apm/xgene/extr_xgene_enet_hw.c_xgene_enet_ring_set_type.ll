; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_ring_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_ring_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32*, i32 }

@RING_BUFPOOL = common dso_local global i32 0, align 4
@RING_REGULAR = common dso_local global i32 0, align 4
@RINGTYPE_POS = common dso_local global i32 0, align 4
@RINGTYPE_LEN = common dso_local global i32 0, align 4
@BUFPOOL_MODE = common dso_local global i32 0, align 4
@RINGMODE_POS = common dso_local global i32 0, align 4
@RINGMODE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_desc_ring*)* @xgene_enet_ring_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_ring_set_type(%struct.xgene_enet_desc_ring* %0) #0 {
  %2 = alloca %struct.xgene_enet_desc_ring*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %2, align 8
  %6 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %7 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %10 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @xgene_enet_is_bufpool(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @RING_BUFPOOL, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @RING_REGULAR, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RINGTYPE_POS, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @RINGTYPE_POS, align 4
  %25 = load i32, i32* @RINGTYPE_LEN, align 4
  %26 = call i32 @CREATE_MASK(i32 %24, i32 %25)
  %27 = and i32 %23, %26
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %19
  %35 = load i32, i32* @BUFPOOL_MODE, align 4
  %36 = load i32, i32* @RINGMODE_POS, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @RINGMODE_POS, align 4
  %39 = load i32, i32* @RINGMODE_LEN, align 4
  %40 = call i32 @CREATE_MASK(i32 %38, i32 %39)
  %41 = and i32 %37, %40
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %34, %19
  ret void
}

declare dso_local i32 @xgene_enet_is_bufpool(i32) #1

declare dso_local i32 @CREATE_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
