; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_update_eth_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_update_eth_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, %struct.ice_eth_stats, %struct.ice_eth_stats, i32, %struct.TYPE_2__* }
%struct.ice_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ice_hw }
%struct.ice_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_update_eth_stats(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca %struct.ice_eth_stats*, align 8
  %4 = alloca %struct.ice_eth_stats*, align 8
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %7 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %8 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ice_hw* %10, %struct.ice_hw** %5, align 8
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %15 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %14, i32 0, i32 2
  store %struct.ice_eth_stats* %15, %struct.ice_eth_stats** %3, align 8
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 1
  store %struct.ice_eth_stats* %17, %struct.ice_eth_stats** %4, align 8
  %18 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @GLV_GORCL(i32 %19)
  %21 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %22 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %25 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %24, i32 0, i32 9
  %26 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %27 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %26, i32 0, i32 9
  %28 = call i32 @ice_stat_update40(%struct.ice_hw* %18, i32 %20, i32 %23, i32* %25, i32* %27)
  %29 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @GLV_UPRCL(i32 %30)
  %32 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %33 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %36 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %35, i32 0, i32 8
  %37 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %38 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %37, i32 0, i32 8
  %39 = call i32 @ice_stat_update40(%struct.ice_hw* %29, i32 %31, i32 %34, i32* %36, i32* %38)
  %40 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @GLV_MPRCL(i32 %41)
  %43 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %44 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %47 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %46, i32 0, i32 7
  %48 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %49 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %48, i32 0, i32 7
  %50 = call i32 @ice_stat_update40(%struct.ice_hw* %40, i32 %42, i32 %45, i32* %47, i32* %49)
  %51 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @GLV_BPRCL(i32 %52)
  %54 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %55 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %58 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %57, i32 0, i32 6
  %59 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %60 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %59, i32 0, i32 6
  %61 = call i32 @ice_stat_update40(%struct.ice_hw* %51, i32 %53, i32 %56, i32* %58, i32* %60)
  %62 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @GLV_RDPC(i32 %63)
  %65 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %66 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %69 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %68, i32 0, i32 5
  %70 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %71 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %70, i32 0, i32 5
  %72 = call i32 @ice_stat_update32(%struct.ice_hw* %62, i32 %64, i32 %67, i32* %69, i32* %71)
  %73 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @GLV_GOTCL(i32 %74)
  %76 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %77 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %80 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %79, i32 0, i32 4
  %81 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %82 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %81, i32 0, i32 4
  %83 = call i32 @ice_stat_update40(%struct.ice_hw* %73, i32 %75, i32 %78, i32* %80, i32* %82)
  %84 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @GLV_UPTCL(i32 %85)
  %87 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %88 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %91 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %90, i32 0, i32 3
  %92 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %93 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %92, i32 0, i32 3
  %94 = call i32 @ice_stat_update40(%struct.ice_hw* %84, i32 %86, i32 %89, i32* %91, i32* %93)
  %95 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @GLV_MPTCL(i32 %96)
  %98 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %99 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %102 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %101, i32 0, i32 2
  %103 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %104 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %103, i32 0, i32 2
  %105 = call i32 @ice_stat_update40(%struct.ice_hw* %95, i32 %97, i32 %100, i32* %102, i32* %104)
  %106 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @GLV_BPTCL(i32 %107)
  %109 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %110 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %113 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %112, i32 0, i32 1
  %114 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %115 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %114, i32 0, i32 1
  %116 = call i32 @ice_stat_update40(%struct.ice_hw* %106, i32 %108, i32 %111, i32* %113, i32* %115)
  %117 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @GLV_TEPC(i32 %118)
  %120 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %121 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %3, align 8
  %124 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %123, i32 0, i32 0
  %125 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %126 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %125, i32 0, i32 0
  %127 = call i32 @ice_stat_update32(%struct.ice_hw* %117, i32 %119, i32 %122, i32* %124, i32* %126)
  %128 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %129 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  ret void
}

declare dso_local i32 @ice_stat_update40(%struct.ice_hw*, i32, i32, i32*, i32*) #1

declare dso_local i32 @GLV_GORCL(i32) #1

declare dso_local i32 @GLV_UPRCL(i32) #1

declare dso_local i32 @GLV_MPRCL(i32) #1

declare dso_local i32 @GLV_BPRCL(i32) #1

declare dso_local i32 @ice_stat_update32(%struct.ice_hw*, i32, i32, i32*, i32*) #1

declare dso_local i32 @GLV_RDPC(i32) #1

declare dso_local i32 @GLV_GOTCL(i32) #1

declare dso_local i32 @GLV_UPTCL(i32) #1

declare dso_local i32 @GLV_MPTCL(i32) #1

declare dso_local i32 @GLV_BPTCL(i32) #1

declare dso_local i32 @GLV_TEPC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
