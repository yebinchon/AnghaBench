; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_net_dump_calculate_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_net_dump_calculate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dumpspec = type { i32, i32 }
%struct.nfp_level_size = type { i32, i32 }

@nfp_calc_specific_level_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_net_dump_calculate_size(%struct.nfp_pf* %0, %struct.nfp_dumpspec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca %struct.nfp_dumpspec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_level_size, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store %struct.nfp_dumpspec* %1, %struct.nfp_dumpspec** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @cpu_to_be32(i32 %10)
  %12 = getelementptr inbounds %struct.nfp_level_size, %struct.nfp_level_size* %8, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = call i32 @ALIGN8(i32 4)
  %14 = getelementptr inbounds %struct.nfp_level_size, %struct.nfp_level_size* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %16 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_dumpspec, %struct.nfp_dumpspec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %6, align 8
  %20 = getelementptr inbounds %struct.nfp_dumpspec, %struct.nfp_dumpspec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @nfp_calc_specific_level_size, align 4
  %23 = call i32 @nfp_traverse_tlvs(%struct.nfp_pf* %15, i32 %18, i32 %21, %struct.nfp_level_size* %8, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.nfp_level_size, %struct.nfp_level_size* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ALIGN8(i32) #1

declare dso_local i32 @nfp_traverse_tlvs(%struct.nfp_pf*, i32, i32, %struct.nfp_level_size*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
