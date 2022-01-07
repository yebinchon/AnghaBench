; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_hwinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_hwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dump_tl = type { i32 }
%struct.nfp_dump_state = type { %struct.nfp_dump_tl* }

@NFP_DUMPSPEC_TYPE_HWINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, %struct.nfp_dump_state*)* @nfp_dump_hwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_dump_hwinfo(%struct.nfp_pf* %0, %struct.nfp_dump_tl* %1, %struct.nfp_dump_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca %struct.nfp_dump_tl*, align 8
  %7 = alloca %struct.nfp_dump_state*, align 8
  %8 = alloca %struct.nfp_dump_tl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store %struct.nfp_dump_tl* %1, %struct.nfp_dump_tl** %6, align 8
  store %struct.nfp_dump_state* %2, %struct.nfp_dump_state** %7, align 8
  %13 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %14 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %13, i32 0, i32 0
  %15 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %14, align 8
  store %struct.nfp_dump_tl* %15, %struct.nfp_dump_tl** %8, align 8
  %16 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %17 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @nfp_hwinfo_get_packed_strings(i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nfp_hwinfo_get_packed_str_size(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @ALIGN8(i64 %24)
  %26 = add i64 4, %25
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* @NFP_DUMPSPEC_TYPE_HWINFO, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %30 = call i32 @nfp_add_tlv(i32 %27, i64 %28, %struct.nfp_dump_state* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %42

35:                                               ; preds = %3
  %36 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %8, align 8
  %37 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @memcpy(i32 %38, i8* %39, i64 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %33
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i8* @nfp_hwinfo_get_packed_strings(i32) #1

declare dso_local i64 @nfp_hwinfo_get_packed_str_size(i32) #1

declare dso_local i64 @ALIGN8(i64) #1

declare dso_local i32 @nfp_add_tlv(i32, i64, %struct.nfp_dump_state*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
