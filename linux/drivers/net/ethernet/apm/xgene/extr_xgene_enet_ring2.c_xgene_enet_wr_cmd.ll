; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ring2.c_xgene_enet_wr_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ring2.c_xgene_enet_wr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32, i32 }

@RING_OWNER_CPU = common dso_local global i64 0, align 8
@X2_INTLINE = common dso_local global i32 0, align 4
@RING_BUFNUM_MASK = common dso_local global i32 0, align 4
@INTR_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_desc_ring*, i32)* @xgene_enet_wr_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_wr_cmd(%struct.xgene_enet_desc_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.xgene_enet_desc_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %7 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @xgene_enet_ring_owner(i32 %8)
  %10 = load i64, i64* @RING_OWNER_CPU, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @X2_INTLINE, align 4
  %14 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %15 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RING_BUFNUM_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @SET_VAL(i32 %13, i32 %18)
  %20 = load i32, i32* @INTR_CLEAR, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %12, %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @GENMASK(i32 16, i32 0)
  %25 = and i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %30 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iowrite32(i32 %28, i32 %31)
  ret void
}

declare dso_local i64 @xgene_enet_ring_owner(i32) #1

declare dso_local i32 @SET_VAL(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
