; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_set_mu_locality_lsb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_set_mu_locality_lsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32*, i32 }

@NFP_CPP_TARGET_MU = common dso_local global i64 0, align 8
@NFP_IMB_TGTADDRESSMODECFG_ADDRMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp*)* @nfp_cpp_set_mu_locality_lsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_cpp_set_mu_locality_lsb(%struct.nfp_cpp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_cpp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %3, align 8
  %8 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @NFP_CPP_TARGET_MU, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @NFP_IMB_TGTADDRESSMODECFG_MODE_of(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NFP_IMB_TGTADDRESSMODECFG_ADDRMODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @nfp_cppat_mu_locality_lsb(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %33 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @NFP_IMB_TGTADDRESSMODECFG_MODE_of(i32) #1

declare dso_local i32 @nfp_cppat_mu_locality_lsb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
