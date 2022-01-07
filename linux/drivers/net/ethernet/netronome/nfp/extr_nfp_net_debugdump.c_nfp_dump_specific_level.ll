; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_specific_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_specific_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dump_tl = type { i64, i32, i32 }
%struct.nfp_dump_state = type { i64 }

@nfp_dump_for_tlv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)* @nfp_dump_specific_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_dump_specific_level(%struct.nfp_pf* %0, %struct.nfp_dump_tl* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca %struct.nfp_dump_tl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfp_dump_state*, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store %struct.nfp_dump_tl* %1, %struct.nfp_dump_tl** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.nfp_dump_state*
  store %struct.nfp_dump_state* %10, %struct.nfp_dump_state** %8, align 8
  %11 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %8, align 8
  %15 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %21 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %22 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %8, align 8
  %29 = load i32, i32* @nfp_dump_for_tlv, align 4
  %30 = call i32 @nfp_traverse_tlvs(%struct.nfp_pf* %20, i32 %23, i32 %27, %struct.nfp_dump_state* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %19, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @nfp_traverse_tlvs(%struct.nfp_pf*, i32, i32, %struct.nfp_dump_state*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
