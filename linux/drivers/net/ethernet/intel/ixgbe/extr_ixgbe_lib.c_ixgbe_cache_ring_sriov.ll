; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_lib.c_ixgbe_cache_ring_sriov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_lib.c_ixgbe_cache_ring_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.TYPE_4__**, i32*, %struct.TYPE_3__**, %struct.ixgbe_ring_feature* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.ixgbe_ring_feature = type { i32, i32, i32 }

@RING_F_VMDQ = common dso_local global i64 0, align 8
@RING_F_RSS = common dso_local global i64 0, align 8
@IXGBE_FLAG_VMDQ_ENABLED = common dso_local global i32 0, align 4
@RING_F_FCOE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_cache_ring_sriov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_cache_ring_sriov(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring_feature*, align 8
  %5 = alloca %struct.ixgbe_ring_feature*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 6
  %11 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %10, align 8
  %12 = load i64, i64* @RING_F_VMDQ, align 8
  %13 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %11, i64 %12
  store %struct.ixgbe_ring_feature* %13, %struct.ixgbe_ring_feature** %4, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 6
  %16 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %15, align 8
  %17 = load i64, i64* @RING_F_RSS, align 8
  %18 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %16, i64 %17
  store %struct.ixgbe_ring_feature* %18, %struct.ixgbe_ring_feature** %5, align 8
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IXGBE_FLAG_VMDQ_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %143

26:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %27 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %28 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @__ALIGN_MASK(i32 1, i32 %33)
  %35 = mul nsw i32 %29, %34
  store i32 %35, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %89, %26
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %45 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %5, align 8
  %50 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %58 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, -1
  %61 = call i32 @__ALIGN_MASK(i32 %56, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %53, %42
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %64, i32 0, i32 5
  %66 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %66, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %63, i32* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %79

75:                                               ; preds = %62
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  br label %79

79:                                               ; preds = %75, %74
  %80 = phi i32* [ null, %74 ], [ %78, %75 ]
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %81, i32 0, i32 5
  %83 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %83, i64 %85
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32* %80, i32** %88, align 8
  br label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %36

94:                                               ; preds = %36
  %95 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %96 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %99 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, -1
  %102 = call i32 @__ALIGN_MASK(i32 1, i32 %101)
  %103 = mul nsw i32 %97, %102
  store i32 %103, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %137, %94
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %5, align 8
  %113 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %111, %114
  %116 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %5, align 8
  %117 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %115, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %4, align 8
  %123 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %124, -1
  %126 = call i32 @__ALIGN_MASK(i32 %121, i32 %125)
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %120, %110
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %129, i32 0, i32 3
  %131 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %131, i64 %133
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %128, i32* %136, align 4
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %104

142:                                              ; preds = %104
  store i32 1, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %25
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @__ALIGN_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
