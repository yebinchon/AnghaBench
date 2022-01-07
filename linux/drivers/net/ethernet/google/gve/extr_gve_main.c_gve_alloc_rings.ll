; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_priv*)* @gve_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_alloc_rings(%struct.gve_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  %7 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %8 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kvzalloc(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  %17 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %18 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %17, i32 0, i32 0
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %18, align 8
  %19 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %20 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %129

26:                                               ; preds = %1
  %27 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %28 = call i32 @gve_tx_alloc_rings(%struct.gve_priv* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %121

32:                                               ; preds = %26
  %33 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %34 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kvzalloc(i32 %39, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_6__*
  %43 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %44 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %43, i32 0, i32 1
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %46 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %118

52:                                               ; preds = %32
  %53 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %54 = call i32 @gve_rx_alloc_rings(%struct.gve_priv* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %111

58:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %81, %58
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %62 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %68 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @u64_stats_init(i32* %73)
  %75 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @gve_tx_idx_to_ntfy(%struct.gve_priv* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @gve_add_napi(%struct.gve_priv* %78, i32 %79)
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %59

84:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %107, %84
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %88 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %85
  %93 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %94 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = call i32 @u64_stats_init(i32* %99)
  %101 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @gve_rx_idx_to_ntfy(%struct.gve_priv* %101, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @gve_add_napi(%struct.gve_priv* %104, i32 %105)
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %85

110:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %129

111:                                              ; preds = %57
  %112 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %113 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call i32 @kvfree(%struct.TYPE_6__* %114)
  %116 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %117 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %116, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %117, align 8
  br label %118

118:                                              ; preds = %111, %49
  %119 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %120 = call i32 @gve_tx_free_rings(%struct.gve_priv* %119)
  br label %121

121:                                              ; preds = %118, %31
  %122 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %123 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = call i32 @kvfree(%struct.TYPE_6__* %124)
  %126 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %127 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %126, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %127, align 8
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %121, %110, %23
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @gve_tx_alloc_rings(%struct.gve_priv*) #1

declare dso_local i32 @gve_rx_alloc_rings(%struct.gve_priv*) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @gve_tx_idx_to_ntfy(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_add_napi(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_rx_idx_to_ntfy(%struct.gve_priv*, i32) #1

declare dso_local i32 @kvfree(%struct.TYPE_6__*) #1

declare dso_local i32 @gve_tx_free_rings(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
