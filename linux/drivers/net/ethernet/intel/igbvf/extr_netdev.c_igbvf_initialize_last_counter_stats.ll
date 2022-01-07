; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_initialize_last_counter_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_initialize_last_counter_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.TYPE_2__, %struct.e1000_hw }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.e1000_hw = type { i32 }

@VFGPRC = common dso_local global i32 0, align 4
@VFGORC = common dso_local global i32 0, align 4
@VFGPTC = common dso_local global i32 0, align 4
@VFGOTC = common dso_local global i32 0, align 4
@VFMPRC = common dso_local global i32 0, align 4
@VFGOTLBC = common dso_local global i32 0, align 4
@VFGPTLBC = common dso_local global i32 0, align 4
@VFGORLBC = common dso_local global i32 0, align 4
@VFGPRLBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*)* @igbvf_initialize_last_counter_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_initialize_last_counter_stats(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %4 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %4, i32 0, i32 1
  store %struct.e1000_hw* %5, %struct.e1000_hw** %3, align 8
  %6 = load i32, i32* @VFGPRC, align 4
  %7 = call i8* @er32(i32 %6)
  %8 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 17
  store i8* %7, i8** %10, align 8
  %11 = load i32, i32* @VFGORC, align 4
  %12 = call i8* @er32(i32 %11)
  %13 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 16
  store i8* %12, i8** %15, align 8
  %16 = load i32, i32* @VFGPTC, align 4
  %17 = call i8* @er32(i32 %16)
  %18 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 15
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @VFGOTC, align 4
  %22 = call i8* @er32(i32 %21)
  %23 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 14
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @VFMPRC, align 4
  %27 = call i8* @er32(i32 %26)
  %28 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 13
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @VFGOTLBC, align 4
  %32 = call i8* @er32(i32 %31)
  %33 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 12
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @VFGPTLBC, align 4
  %37 = call i8* @er32(i32 %36)
  %38 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 11
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @VFGORLBC, align 4
  %42 = call i8* @er32(i32 %41)
  %43 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 10
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* @VFGPRLBC, align 4
  %47 = call i8* @er32(i32 %46)
  %48 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 9
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @VFGPRC, align 4
  %52 = call i8* @er32(i32 %51)
  %53 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 8
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* @VFGORC, align 4
  %57 = call i8* @er32(i32 %56)
  %58 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 7
  store i8* %57, i8** %60, align 8
  %61 = load i32, i32* @VFGPTC, align 4
  %62 = call i8* @er32(i32 %61)
  %63 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 6
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* @VFGOTC, align 4
  %67 = call i8* @er32(i32 %66)
  %68 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* @VFMPRC, align 4
  %72 = call i8* @er32(i32 %71)
  %73 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* @VFGOTLBC, align 4
  %77 = call i8* @er32(i32 %76)
  %78 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i8* %77, i8** %80, align 8
  %81 = load i32, i32* @VFGPTLBC, align 4
  %82 = call i8* @er32(i32 %81)
  %83 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  %86 = load i32, i32* @VFGORLBC, align 4
  %87 = call i8* @er32(i32 %86)
  %88 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load i32, i32* @VFGPRLBC, align 4
  %92 = call i8* @er32(i32 %91)
  %93 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  ret void
}

declare dso_local i8* @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
