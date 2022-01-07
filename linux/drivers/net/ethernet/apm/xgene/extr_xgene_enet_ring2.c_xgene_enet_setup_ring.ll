; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ring2.c_xgene_enet_setup_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ring2.c_xgene_enet_setup_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i64, i32, i32, i32*, i32 }

@RING_OWNER_CPU = common dso_local global i64 0, align 8
@CSR_VMID0_INTR_MBOX = common dso_local global i64 0, align 8
@RING_BUFNUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xgene_enet_desc_ring* (%struct.xgene_enet_desc_ring*)* @xgene_enet_setup_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xgene_enet_desc_ring* @xgene_enet_setup_ring(%struct.xgene_enet_desc_ring* %0) #0 {
  %2 = alloca %struct.xgene_enet_desc_ring*, align 8
  %3 = alloca %struct.xgene_enet_desc_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %3, align 8
  %7 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %8 = call i32 @xgene_enet_clr_ring_state(%struct.xgene_enet_desc_ring* %7)
  %9 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %10 = call i32 @xgene_enet_set_ring_state(%struct.xgene_enet_desc_ring* %9)
  %11 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %12 = call i32 @xgene_enet_set_ring_id(%struct.xgene_enet_desc_ring* %11)
  %13 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %17 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @xgene_enet_get_numslots(i32 %15, i32 %18)
  %20 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %21 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @xgene_enet_is_bufpool(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %30 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @xgene_enet_ring_owner(i32 %31)
  %33 = load i64, i64* @RING_OWNER_CPU, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28, %1
  %36 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  store %struct.xgene_enet_desc_ring* %36, %struct.xgene_enet_desc_ring** %2, align 8
  br label %72

37:                                               ; preds = %28
  %38 = load i64, i64* @CSR_VMID0_INTR_MBOX, align 8
  %39 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %40 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RING_BUFNUM_MASK, align 4
  %43 = and i32 %41, %42
  %44 = mul nsw i32 4, %43
  %45 = sext i32 %44 to i64
  %46 = add i64 %38, %45
  store i64 %46, i64* %5, align 8
  %47 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %50 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 10
  %53 = call i32 @xgene_enet_ring_wr32(%struct.xgene_enet_desc_ring* %47, i64 %48, i32 %52)
  store i64 0, i64* %6, align 8
  br label %54

54:                                               ; preds = %67, %37
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %57 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %62 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32 @xgene_enet_mark_desc_slot_empty(i32* %65)
  br label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  store %struct.xgene_enet_desc_ring* %71, %struct.xgene_enet_desc_ring** %2, align 8
  br label %72

72:                                               ; preds = %70, %35
  %73 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  ret %struct.xgene_enet_desc_ring* %73
}

declare dso_local i32 @xgene_enet_clr_ring_state(%struct.xgene_enet_desc_ring*) #1

declare dso_local i32 @xgene_enet_set_ring_state(%struct.xgene_enet_desc_ring*) #1

declare dso_local i32 @xgene_enet_set_ring_id(%struct.xgene_enet_desc_ring*) #1

declare dso_local i64 @xgene_enet_get_numslots(i32, i32) #1

declare dso_local i32 @xgene_enet_is_bufpool(i32) #1

declare dso_local i64 @xgene_enet_ring_owner(i32) #1

declare dso_local i32 @xgene_enet_ring_wr32(%struct.xgene_enet_desc_ring*, i64, i32) #1

declare dso_local i32 @xgene_enet_mark_desc_slot_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
