; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_net_dump_populate_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_net_dump_populate_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dumpspec = type { i32, i32 }
%struct.ethtool_dump = type { i64, i32 }
%struct.nfp_dump_state = type { i64, i64, i8*, i32 }

@nfp_dump_specific_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_net_dump_populate_buffer(%struct.nfp_pf* %0, %struct.nfp_dumpspec* %1, %struct.ethtool_dump* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_pf*, align 8
  %7 = alloca %struct.nfp_dumpspec*, align 8
  %8 = alloca %struct.ethtool_dump*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nfp_dump_state, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %6, align 8
  store %struct.nfp_dumpspec* %1, %struct.nfp_dumpspec** %7, align 8
  store %struct.ethtool_dump* %2, %struct.ethtool_dump** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.ethtool_dump*, %struct.ethtool_dump** %8, align 8
  %13 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @cpu_to_be32(i32 %14)
  %16 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %10, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %10, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %10, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load %struct.ethtool_dump*, %struct.ethtool_dump** %8, align 8
  %21 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %10, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = call i32 @nfp_dump_populate_prolog(%struct.nfp_dump_state* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %48

29:                                               ; preds = %4
  %30 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %31 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %7, align 8
  %32 = getelementptr inbounds %struct.nfp_dumpspec, %struct.nfp_dumpspec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfp_dumpspec*, %struct.nfp_dumpspec** %7, align 8
  %35 = getelementptr inbounds %struct.nfp_dumpspec, %struct.nfp_dumpspec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @nfp_dump_specific_level, align 4
  %38 = call i32 @nfp_traverse_tlvs(%struct.nfp_pf* %30, i32 %33, i32 %36, %struct.nfp_dump_state* %10, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %10, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ethtool_dump*, %struct.ethtool_dump** %8, align 8
  %47 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %41, %27
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_dump_populate_prolog(%struct.nfp_dump_state*) #1

declare dso_local i32 @nfp_traverse_tlvs(%struct.nfp_pf*, i32, i32, %struct.nfp_dump_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
