; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_napi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_napi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i32, i32, %struct.TYPE_5__**, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.napi_struct }
%struct.napi_struct = type { i32 }
%struct.TYPE_6__ = type { %struct.napi_struct }

@xgene_enet_napi = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_enet_napi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_napi_add(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %8 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %13 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %12, i32 0, i32 4
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.napi_struct* %19, %struct.napi_struct** %3, align 8
  %20 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %21 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %24 = load i32, i32* @xgene_enet_napi, align 4
  %25 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %26 = call i32 @netif_napi_add(i32 %22, %struct.napi_struct* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %5

30:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %34 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %39 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %40, i64 %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.napi_struct* %47, %struct.napi_struct** %3, align 8
  %48 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %49 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %52 = load i32, i32* @xgene_enet_napi, align 4
  %53 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %54 = call i32 @netif_napi_add(i32 %50, %struct.napi_struct* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %37
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %31

58:                                               ; preds = %31
  ret void
}

declare dso_local i32 @netif_napi_add(i32, %struct.napi_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
