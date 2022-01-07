; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_add_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_add_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_dump_state = type { i64, i64, %struct.nfp_dump_tl* }
%struct.nfp_dump_tl = type { i8*, i8* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.nfp_dump_state*)* @nfp_add_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_add_tlv(i64 %0, i64 %1, %struct.nfp_dump_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfp_dump_state*, align 8
  %8 = alloca %struct.nfp_dump_tl*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nfp_dump_state* %2, %struct.nfp_dump_state** %7, align 8
  %9 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %10 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %9, i32 0, i32 2
  %11 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %10, align 8
  store %struct.nfp_dump_tl* %11, %struct.nfp_dump_tl** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %14 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %53

20:                                               ; preds = %3
  %21 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %22 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %27 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %53

33:                                               ; preds = %20
  %34 = load i64, i64* %5, align 8
  %35 = call i8* @cpu_to_be32(i64 %34)
  %36 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %8, align 8
  %37 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, 16
  %40 = call i8* @cpu_to_be32(i64 %39)
  %41 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %8, align 8
  %42 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %45 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %50 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %49, i32 0, i32 2
  %51 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %50, align 8
  %52 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %51, i64 %48
  store %struct.nfp_dump_tl* %52, %struct.nfp_dump_tl** %50, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %33, %30, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i8* @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
