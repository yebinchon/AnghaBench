; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_update_eth_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_update_eth_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.i40e_eth_stats, %struct.i40e_eth_stats, %struct.i40e_pf*, %struct.TYPE_2__ }
%struct.i40e_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_update_eth_stats(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_eth_stats*, align 8
  %7 = alloca %struct.i40e_eth_stats*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 3
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %4, align 8
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 0
  store %struct.i40e_hw* %17, %struct.i40e_hw** %5, align 8
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 2
  store %struct.i40e_eth_stats* %19, %struct.i40e_eth_stats** %7, align 8
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 1
  store %struct.i40e_eth_stats* %21, %struct.i40e_eth_stats** %6, align 8
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @I40E_GLV_TEPC(i32 %23)
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %29 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %28, i32 0, i32 10
  %30 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %31 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %30, i32 0, i32 10
  %32 = call i32 @i40e_stat_update32(%struct.i40e_hw* %22, i32 %24, i32 %27, i32* %29, i32* %31)
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @I40E_GLV_RDPC(i32 %34)
  %36 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %40 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %39, i32 0, i32 9
  %41 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %42 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %41, i32 0, i32 9
  %43 = call i32 @i40e_stat_update32(%struct.i40e_hw* %33, i32 %35, i32 %38, i32* %40, i32* %42)
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @I40E_GLV_RUPP(i32 %45)
  %47 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %48 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %51 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %50, i32 0, i32 8
  %52 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %53 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %52, i32 0, i32 8
  %54 = call i32 @i40e_stat_update32(%struct.i40e_hw* %44, i32 %46, i32 %49, i32* %51, i32* %53)
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @I40E_GLV_GORCH(i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @I40E_GLV_GORCL(i32 %58)
  %60 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %61 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %64 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %63, i32 0, i32 7
  %65 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %66 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %65, i32 0, i32 7
  %67 = call i32 @i40e_stat_update48(%struct.i40e_hw* %55, i32 %57, i32 %59, i32 %62, i32* %64, i32* %66)
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @I40E_GLV_UPRCH(i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @I40E_GLV_UPRCL(i32 %71)
  %73 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %74 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %77 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %76, i32 0, i32 6
  %78 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %79 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %78, i32 0, i32 6
  %80 = call i32 @i40e_stat_update48(%struct.i40e_hw* %68, i32 %70, i32 %72, i32 %75, i32* %77, i32* %79)
  %81 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @I40E_GLV_MPRCH(i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @I40E_GLV_MPRCL(i32 %84)
  %86 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %87 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %90 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %89, i32 0, i32 5
  %91 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %92 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %91, i32 0, i32 5
  %93 = call i32 @i40e_stat_update48(%struct.i40e_hw* %81, i32 %83, i32 %85, i32 %88, i32* %90, i32* %92)
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @I40E_GLV_BPRCH(i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @I40E_GLV_BPRCL(i32 %97)
  %99 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %100 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %103 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %102, i32 0, i32 4
  %104 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %105 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %104, i32 0, i32 4
  %106 = call i32 @i40e_stat_update48(%struct.i40e_hw* %94, i32 %96, i32 %98, i32 %101, i32* %103, i32* %105)
  %107 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @I40E_GLV_GOTCH(i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @I40E_GLV_GOTCL(i32 %110)
  %112 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %113 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %116 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %115, i32 0, i32 3
  %117 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %118 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %117, i32 0, i32 3
  %119 = call i32 @i40e_stat_update48(%struct.i40e_hw* %107, i32 %109, i32 %111, i32 %114, i32* %116, i32* %118)
  %120 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @I40E_GLV_UPTCH(i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @I40E_GLV_UPTCL(i32 %123)
  %125 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %126 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %129 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %128, i32 0, i32 2
  %130 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %131 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %130, i32 0, i32 2
  %132 = call i32 @i40e_stat_update48(%struct.i40e_hw* %120, i32 %122, i32 %124, i32 %127, i32* %129, i32* %131)
  %133 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @I40E_GLV_MPTCH(i32 %134)
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @I40E_GLV_MPTCL(i32 %136)
  %138 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %139 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %142 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %141, i32 0, i32 1
  %143 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %144 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %143, i32 0, i32 1
  %145 = call i32 @i40e_stat_update48(%struct.i40e_hw* %133, i32 %135, i32 %137, i32 %140, i32* %142, i32* %144)
  %146 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @I40E_GLV_BPTCH(i32 %147)
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @I40E_GLV_BPTCL(i32 %149)
  %151 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %152 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %155 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %154, i32 0, i32 0
  %156 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %7, align 8
  %157 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %156, i32 0, i32 0
  %158 = call i32 @i40e_stat_update48(%struct.i40e_hw* %146, i32 %148, i32 %150, i32 %153, i32* %155, i32* %157)
  %159 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %160 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i40e_stat_update32(%struct.i40e_hw*, i32, i32, i32*, i32*) #1

declare dso_local i32 @I40E_GLV_TEPC(i32) #1

declare dso_local i32 @I40E_GLV_RDPC(i32) #1

declare dso_local i32 @I40E_GLV_RUPP(i32) #1

declare dso_local i32 @i40e_stat_update48(%struct.i40e_hw*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @I40E_GLV_GORCH(i32) #1

declare dso_local i32 @I40E_GLV_GORCL(i32) #1

declare dso_local i32 @I40E_GLV_UPRCH(i32) #1

declare dso_local i32 @I40E_GLV_UPRCL(i32) #1

declare dso_local i32 @I40E_GLV_MPRCH(i32) #1

declare dso_local i32 @I40E_GLV_MPRCL(i32) #1

declare dso_local i32 @I40E_GLV_BPRCH(i32) #1

declare dso_local i32 @I40E_GLV_BPRCL(i32) #1

declare dso_local i32 @I40E_GLV_GOTCH(i32) #1

declare dso_local i32 @I40E_GLV_GOTCL(i32) #1

declare dso_local i32 @I40E_GLV_UPTCH(i32) #1

declare dso_local i32 @I40E_GLV_UPTCL(i32) #1

declare dso_local i32 @I40E_GLV_MPTCH(i32) #1

declare dso_local i32 @I40E_GLV_MPTCL(i32) #1

declare dso_local i32 @I40E_GLV_BPTCH(i32) #1

declare dso_local i32 @I40E_GLV_BPTCL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
