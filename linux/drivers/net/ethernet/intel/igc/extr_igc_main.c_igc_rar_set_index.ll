; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_rar_set_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_rar_set_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { %struct.TYPE_2__*, %struct.igc_hw }
%struct.TYPE_2__ = type { i32, i64, i32* }
%struct.igc_hw = type { i32 }

@IGC_MAC_STATE_IN_USE = common dso_local global i32 0, align 4
@IGC_RAH_AV = common dso_local global i64 0, align 8
@IGC_RAH_POOL_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*, i64)* @igc_rar_set_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_rar_set_index(%struct.igc_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.igc_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %16, i32 0, i32 1
  store %struct.igc_hw* %17, %struct.igc_hw** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @le32_to_cpup(i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = call i64 @le16_to_cpup(i32* %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IGC_MAC_STATE_IN_USE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %2
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @is_valid_ether_addr(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64, i64* @IGC_RAH_AV, align 8
  %39 = load i64, i64* %8, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i64, i64* @IGC_RAH_POOL_1, align 8
  %43 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = shl i64 %42, %49
  %51 = load i64, i64* %8, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %41, %2
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @IGC_RAL(i64 %54)
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @wr32(i32 %55, i64 %56)
  %58 = call i32 (...) @wrfl()
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @IGC_RAH(i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @wr32(i32 %60, i64 %61)
  %63 = call i32 (...) @wrfl()
  ret void
}

declare dso_local i64 @le32_to_cpup(i32*) #1

declare dso_local i64 @le16_to_cpup(i32*) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i32 @IGC_RAL(i64) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @IGC_RAH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
