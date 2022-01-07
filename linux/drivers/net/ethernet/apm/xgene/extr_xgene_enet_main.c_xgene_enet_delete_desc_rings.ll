; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_delete_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_delete_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i32, %struct.xgene_enet_desc_ring**, %struct.TYPE_2__*, %struct.xgene_enet_desc_ring**, i64 }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_pdata*, %struct.xgene_enet_desc_ring*)* }
%struct.xgene_enet_desc_ring = type { %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_enet_delete_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_delete_desc_rings(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca %struct.xgene_enet_desc_ring*, align 8
  %4 = alloca %struct.xgene_enet_desc_ring*, align 8
  %5 = alloca %struct.xgene_enet_desc_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %51, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %10 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %7
  %14 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %15 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %14, i32 0, i32 4
  %16 = load %struct.xgene_enet_desc_ring**, %struct.xgene_enet_desc_ring*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %16, i64 %18
  %20 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %19, align 8
  store %struct.xgene_enet_desc_ring* %20, %struct.xgene_enet_desc_ring** %5, align 8
  %21 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %22 = icmp ne %struct.xgene_enet_desc_ring* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %13
  %24 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %25 = call i32 @xgene_enet_delete_ring(%struct.xgene_enet_desc_ring* %24)
  %26 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %27 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.xgene_enet_pdata*, %struct.xgene_enet_desc_ring*)*, i32 (%struct.xgene_enet_pdata*, %struct.xgene_enet_desc_ring*)** %29, align 8
  %31 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %32 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %33 = call i32 %30(%struct.xgene_enet_pdata* %31, %struct.xgene_enet_desc_ring* %32)
  %34 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %35 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %40 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %39, i32 0, i32 2
  %41 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %40, align 8
  %42 = call i32 @xgene_enet_delete_ring(%struct.xgene_enet_desc_ring* %41)
  br label %43

43:                                               ; preds = %38, %23
  %44 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %45 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %44, i32 0, i32 4
  %46 = load %struct.xgene_enet_desc_ring**, %struct.xgene_enet_desc_ring*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %46, i64 %48
  store %struct.xgene_enet_desc_ring* null, %struct.xgene_enet_desc_ring** %49, align 8
  br label %50

50:                                               ; preds = %43, %13
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %7

54:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %115, %54
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %58 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %118

61:                                               ; preds = %55
  %62 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %63 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %62, i32 0, i32 2
  %64 = load %struct.xgene_enet_desc_ring**, %struct.xgene_enet_desc_ring*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %64, i64 %66
  %68 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %67, align 8
  store %struct.xgene_enet_desc_ring* %68, %struct.xgene_enet_desc_ring** %5, align 8
  %69 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %70 = icmp ne %struct.xgene_enet_desc_ring* %69, null
  br i1 %70, label %71, label %114

71:                                               ; preds = %61
  %72 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %73 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %72, i32 0, i32 1
  %74 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %73, align 8
  store %struct.xgene_enet_desc_ring* %74, %struct.xgene_enet_desc_ring** %4, align 8
  %75 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %76 = icmp ne %struct.xgene_enet_desc_ring* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %79 = call i32 @xgene_enet_delete_pagepool(%struct.xgene_enet_desc_ring* %78)
  %80 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %81 = call i32 @xgene_enet_delete_ring(%struct.xgene_enet_desc_ring* %80)
  %82 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %83 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.xgene_enet_pdata*, %struct.xgene_enet_desc_ring*)*, i32 (%struct.xgene_enet_pdata*, %struct.xgene_enet_desc_ring*)** %85, align 8
  %87 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %88 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %89 = call i32 %86(%struct.xgene_enet_pdata* %87, %struct.xgene_enet_desc_ring* %88)
  br label %90

90:                                               ; preds = %77, %71
  %91 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %92 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %91, i32 0, i32 0
  %93 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %92, align 8
  store %struct.xgene_enet_desc_ring* %93, %struct.xgene_enet_desc_ring** %3, align 8
  %94 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %95 = call i32 @xgene_enet_delete_bufpool(%struct.xgene_enet_desc_ring* %94)
  %96 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %97 = call i32 @xgene_enet_delete_ring(%struct.xgene_enet_desc_ring* %96)
  %98 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %99 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %98, i32 0, i32 3
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.xgene_enet_pdata*, %struct.xgene_enet_desc_ring*)*, i32 (%struct.xgene_enet_pdata*, %struct.xgene_enet_desc_ring*)** %101, align 8
  %103 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %104 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %105 = call i32 %102(%struct.xgene_enet_pdata* %103, %struct.xgene_enet_desc_ring* %104)
  %106 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %107 = call i32 @xgene_enet_delete_ring(%struct.xgene_enet_desc_ring* %106)
  %108 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %109 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %108, i32 0, i32 2
  %110 = load %struct.xgene_enet_desc_ring**, %struct.xgene_enet_desc_ring*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %110, i64 %112
  store %struct.xgene_enet_desc_ring* null, %struct.xgene_enet_desc_ring** %113, align 8
  br label %114

114:                                              ; preds = %90, %61
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %55

118:                                              ; preds = %55
  ret void
}

declare dso_local i32 @xgene_enet_delete_ring(%struct.xgene_enet_desc_ring*) #1

declare dso_local i32 @xgene_enet_delete_pagepool(%struct.xgene_enet_desc_ring*) #1

declare dso_local i32 @xgene_enet_delete_bufpool(%struct.xgene_enet_desc_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
