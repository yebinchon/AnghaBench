; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, %struct.ice_ring**, i32, i32, i32*, %struct.ice_ring**, i32, i32*, %struct.ice_pf* }
%struct.ice_ring = type { i32, i32, i32, i32*, i32, %struct.ice_vsi*, i32 }
%struct.ice_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_vsi_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_alloc_rings(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_ring*, align 8
  %7 = alloca %struct.ice_ring*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %8 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %8, i32 0, i32 9
  %10 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  store %struct.ice_pf* %10, %struct.ice_pf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %59, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %11
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ice_ring* @kzalloc(i32 48, i32 %18)
  store %struct.ice_ring* %19, %struct.ice_ring** %6, align 8
  %20 = load %struct.ice_ring*, %struct.ice_ring** %6, align 8
  %21 = icmp ne %struct.ice_ring* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %120

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ice_ring*, %struct.ice_ring** %6, align 8
  %26 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ice_ring*, %struct.ice_ring** %6, align 8
  %35 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ice_ring*, %struct.ice_ring** %6, align 8
  %37 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %39 = load %struct.ice_ring*, %struct.ice_ring** %6, align 8
  %40 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %39, i32 0, i32 5
  store %struct.ice_vsi* %38, %struct.ice_vsi** %40, align 8
  %41 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %42 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.ice_ring*, %struct.ice_ring** %6, align 8
  %46 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %48 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ice_ring*, %struct.ice_ring** %6, align 8
  %51 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ice_ring*, %struct.ice_ring** %6, align 8
  %53 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %54 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %53, i32 0, i32 6
  %55 = load %struct.ice_ring**, %struct.ice_ring*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ice_ring*, %struct.ice_ring** %55, i64 %57
  store %struct.ice_ring* %52, %struct.ice_ring** %58, align 8
  br label %59

59:                                               ; preds = %23
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %11

62:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %116, %62
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %66 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %119

69:                                               ; preds = %63
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.ice_ring* @kzalloc(i32 48, i32 %70)
  store %struct.ice_ring* %71, %struct.ice_ring** %7, align 8
  %72 = load %struct.ice_ring*, %struct.ice_ring** %7, align 8
  %73 = icmp ne %struct.ice_ring* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %120

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.ice_ring*, %struct.ice_ring** %7, align 8
  %78 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %80 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ice_ring*, %struct.ice_ring** %7, align 8
  %87 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ice_ring*, %struct.ice_ring** %7, align 8
  %89 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %91 = load %struct.ice_ring*, %struct.ice_ring** %7, align 8
  %92 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %91, i32 0, i32 5
  store %struct.ice_vsi* %90, %struct.ice_vsi** %92, align 8
  %93 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %94 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ice_ring*, %struct.ice_ring** %7, align 8
  %97 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %99 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load %struct.ice_ring*, %struct.ice_ring** %7, align 8
  %103 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %102, i32 0, i32 3
  store i32* %101, i32** %103, align 8
  %104 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %105 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ice_ring*, %struct.ice_ring** %7, align 8
  %108 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ice_ring*, %struct.ice_ring** %7, align 8
  %110 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %111 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %110, i32 0, i32 2
  %112 = load %struct.ice_ring**, %struct.ice_ring*** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ice_ring*, %struct.ice_ring** %112, i64 %114
  store %struct.ice_ring* %109, %struct.ice_ring** %115, align 8
  br label %116

116:                                              ; preds = %75
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %63

119:                                              ; preds = %63
  store i32 0, i32* %2, align 4
  br label %125

120:                                              ; preds = %74, %22
  %121 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %122 = call i32 @ice_vsi_clear_rings(%struct.ice_vsi* %121)
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %120, %119
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.ice_ring* @kzalloc(i32, i32) #1

declare dso_local i32 @ice_vsi_clear_rings(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
