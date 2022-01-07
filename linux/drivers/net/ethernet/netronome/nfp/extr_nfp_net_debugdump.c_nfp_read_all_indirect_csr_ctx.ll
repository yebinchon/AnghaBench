; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_read_all_indirect_csr_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_read_all_indirect_csr_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_dumpspec_csr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NFP_IND_NUM_CONTEXTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp*, %struct.nfp_dumpspec_csr*, i32, i32, i8*)* @nfp_read_all_indirect_csr_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_read_all_indirect_csr_ctx(%struct.nfp_cpp* %0, %struct.nfp_dumpspec_csr* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_cpp*, align 8
  %8 = alloca %struct.nfp_dumpspec_csr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %7, align 8
  store %struct.nfp_dumpspec_csr* %1, %struct.nfp_dumpspec_csr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %39, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @NFP_IND_NUM_CONTEXTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %20 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %8, align 8
  %21 = getelementptr inbounds %struct.nfp_dumpspec_csr, %struct.nfp_dumpspec_csr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %27, i64 %31
  %33 = call i32 @nfp_read_indirect_csr(%struct.nfp_cpp* %19, i32 %23, i32 %24, i32 %25, i32 %26, i8* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %43

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %14

42:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @nfp_read_indirect_csr(%struct.nfp_cpp*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
