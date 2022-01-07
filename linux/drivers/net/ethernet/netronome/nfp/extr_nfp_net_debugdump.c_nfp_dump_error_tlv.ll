; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_error_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_error_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_dump_tl = type { i32 }
%struct.nfp_dump_state = type { %struct.nfp_dump_error* }
%struct.nfp_dump_error = type { i32, i32 }

@NFP_DUMPSPEC_TYPE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_dump_tl*, i32, %struct.nfp_dump_state*)* @nfp_dump_error_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_dump_error_tlv(%struct.nfp_dump_tl* %0, i32 %1, %struct.nfp_dump_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_dump_tl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_dump_state*, align 8
  %8 = alloca %struct.nfp_dump_error*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_dump_tl* %0, %struct.nfp_dump_tl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfp_dump_state* %2, %struct.nfp_dump_state** %7, align 8
  %12 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %13 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %12, i32 0, i32 0
  %14 = load %struct.nfp_dump_error*, %struct.nfp_dump_error** %13, align 8
  store %struct.nfp_dump_error* %14, %struct.nfp_dump_error** %8, align 8
  %15 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %16 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @be32_to_cpu(i32 %17)
  %19 = add i64 4, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add i64 8, %20
  %22 = call i64 @ALIGN8(i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* @NFP_DUMPSPEC_TYPE_ERROR, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %26 = call i32 @nfp_add_tlv(i32 %23, i64 %24, %struct.nfp_dump_state* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %42

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cpu_to_be32(i32 %32)
  %34 = load %struct.nfp_dump_error*, %struct.nfp_dump_error** %8, align 8
  %35 = getelementptr inbounds %struct.nfp_dump_error, %struct.nfp_dump_error* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nfp_dump_error*, %struct.nfp_dump_error** %8, align 8
  %37 = getelementptr inbounds %struct.nfp_dump_error, %struct.nfp_dump_error* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @memcpy(i32 %38, %struct.nfp_dump_tl* %39, i64 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %31, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @ALIGN8(i64) #1

declare dso_local i32 @nfp_add_tlv(i32, i64, %struct.nfp_dump_state*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, %struct.nfp_dump_tl*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
