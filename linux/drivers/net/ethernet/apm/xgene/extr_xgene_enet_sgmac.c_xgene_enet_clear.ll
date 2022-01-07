; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32 }
%struct.xgene_enet_desc_ring = type { i32 }

@ENET_CFGSSQMIFPRESET_ADDR = common dso_local global i32 0, align 4
@ENET_CFGSSQMIWQRESET_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*, %struct.xgene_enet_desc_ring*)* @xgene_enet_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_clear(%struct.xgene_enet_pdata* %0, %struct.xgene_enet_desc_ring* %1) #0 {
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.xgene_enet_desc_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  store %struct.xgene_enet_desc_ring* %1, %struct.xgene_enet_desc_ring** %4, align 8
  %7 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %8 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @xgene_enet_is_bufpool(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @ENET_CFGSSQMIFPRESET_ADDR, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %15 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xgene_enet_get_fpsel(i32 %16)
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @ENET_CFGSSQMIWQRESET_ADDR, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %22 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xgene_enet_ring_bufnum(i32 %23)
  %25 = call i32 @BIT(i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %19, %12
  %27 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @xgene_enet_wr_ring_if(%struct.xgene_enet_pdata* %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i64 @xgene_enet_is_bufpool(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @xgene_enet_get_fpsel(i32) #1

declare dso_local i32 @xgene_enet_ring_bufnum(i32) #1

declare dso_local i32 @xgene_enet_wr_ring_if(%struct.xgene_enet_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
