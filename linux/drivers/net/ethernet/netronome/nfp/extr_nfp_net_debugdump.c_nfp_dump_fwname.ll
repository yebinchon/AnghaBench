; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_fwname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_fwname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dump_state = type { %struct.nfp_dump_tl* }
%struct.nfp_dump_tl = type { i32 }

@NFP_DUMPSPEC_TYPE_FWNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.nfp_dump_state*)* @nfp_dump_fwname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_dump_fwname(%struct.nfp_pf* %0, %struct.nfp_dump_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_pf*, align 8
  %5 = alloca %struct.nfp_dump_state*, align 8
  %6 = alloca %struct.nfp_dump_tl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %4, align 8
  store %struct.nfp_dump_state* %1, %struct.nfp_dump_state** %5, align 8
  %11 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %11, i32 0, i32 0
  %13 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %12, align 8
  store %struct.nfp_dump_tl* %13, %struct.nfp_dump_tl** %6, align 8
  %14 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %15 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @nfp_mip_name(i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i64 @ALIGN8(i64 %21)
  %23 = add i64 4, %22
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* @NFP_DUMPSPEC_TYPE_FWNAME, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %5, align 8
  %27 = call i32 @nfp_add_tlv(i32 %24, i64 %25, %struct.nfp_dump_state* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %34 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @memcpy(i32 %35, i8* %36, i64 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i8* @nfp_mip_name(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ALIGN8(i64) #1

declare dso_local i32 @nfp_add_tlv(i32, i64, %struct.nfp_dump_state*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
