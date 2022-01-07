; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_setup_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_setup_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i64, i64, i32, i32* }

@RING_OWNER_CPU = common dso_local global i64 0, align 8
@CSR_RING_NE_INT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xgene_enet_desc_ring* (%struct.xgene_enet_desc_ring*)* @xgene_enet_setup_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xgene_enet_desc_ring* @xgene_enet_setup_ring(%struct.xgene_enet_desc_ring* %0) #0 {
  %2 = alloca %struct.xgene_enet_desc_ring*, align 8
  %3 = alloca %struct.xgene_enet_desc_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %3, align 8
  %8 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %12 = call i32 @xgene_enet_clr_ring_state(%struct.xgene_enet_desc_ring* %11)
  %13 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %14 = call i32 @xgene_enet_set_ring_state(%struct.xgene_enet_desc_ring* %13)
  %15 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %16 = call i32 @xgene_enet_set_ring_id(%struct.xgene_enet_desc_ring* %15)
  %17 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %18 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @xgene_enet_get_numslots(i32 %19, i64 %20)
  %22 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %25 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @xgene_enet_is_bufpool(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %32 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @xgene_enet_ring_owner(i32 %33)
  %35 = load i64, i64* @RING_OWNER_CPU, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30, %1
  %38 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  store %struct.xgene_enet_desc_ring* %38, %struct.xgene_enet_desc_ring** %2, align 8
  br label %73

39:                                               ; preds = %30
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %43 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %48 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @xgene_enet_mark_desc_slot_empty(i32* %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %58 = load i32, i32* @CSR_RING_NE_INT_MODE, align 4
  %59 = call i32 @xgene_enet_ring_rd32(%struct.xgene_enet_desc_ring* %57, i32 %58, i64* %6)
  %60 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %61 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @xgene_enet_ring_bufnum(i32 %62)
  %64 = sub nsw i64 31, %63
  %65 = call i64 @BIT(i64 %64)
  %66 = load i64, i64* %6, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %69 = load i32, i32* @CSR_RING_NE_INT_MODE, align 4
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @xgene_enet_ring_wr32(%struct.xgene_enet_desc_ring* %68, i32 %69, i64 %70)
  %72 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  store %struct.xgene_enet_desc_ring* %72, %struct.xgene_enet_desc_ring** %2, align 8
  br label %73

73:                                               ; preds = %56, %37
  %74 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  ret %struct.xgene_enet_desc_ring* %74
}

declare dso_local i32 @xgene_enet_clr_ring_state(%struct.xgene_enet_desc_ring*) #1

declare dso_local i32 @xgene_enet_set_ring_state(%struct.xgene_enet_desc_ring*) #1

declare dso_local i32 @xgene_enet_set_ring_id(%struct.xgene_enet_desc_ring*) #1

declare dso_local i64 @xgene_enet_get_numslots(i32, i64) #1

declare dso_local i32 @xgene_enet_is_bufpool(i32) #1

declare dso_local i64 @xgene_enet_ring_owner(i32) #1

declare dso_local i32 @xgene_enet_mark_desc_slot_empty(i32*) #1

declare dso_local i32 @xgene_enet_ring_rd32(%struct.xgene_enet_desc_ring*, i32, i64*) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i64 @xgene_enet_ring_bufnum(i32) #1

declare dso_local i32 @xgene_enet_ring_wr32(%struct.xgene_enet_desc_ring*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
