; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_csr_spec_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_csr_spec_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_dumpspec_csr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_dumpspec_csr*)* @nfp_csr_spec_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_csr_spec_valid(%struct.nfp_dumpspec_csr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_dumpspec_csr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nfp_dumpspec_csr* %0, %struct.nfp_dumpspec_csr** %3, align 8
  store i64 4, i64* %4, align 8
  %7 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be32_to_cpu(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %3, align 8
  %18 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be32_to_cpu(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 32
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 64
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi i1 [ true, %16 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
