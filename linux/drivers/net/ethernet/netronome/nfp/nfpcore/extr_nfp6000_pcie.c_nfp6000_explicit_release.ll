; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_explicit_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_explicit_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_explicit = type { i32 }
%struct.nfp6000_explicit_priv = type { %struct.TYPE_6__, %struct.nfp6000_pcie* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.nfp6000_pcie = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_cpp_explicit*)* @nfp6000_explicit_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp6000_explicit_release(%struct.nfp_cpp_explicit* %0) #0 {
  %2 = alloca %struct.nfp_cpp_explicit*, align 8
  %3 = alloca %struct.nfp6000_explicit_priv*, align 8
  %4 = alloca %struct.nfp6000_pcie*, align 8
  store %struct.nfp_cpp_explicit* %0, %struct.nfp_cpp_explicit** %2, align 8
  %5 = load %struct.nfp_cpp_explicit*, %struct.nfp_cpp_explicit** %2, align 8
  %6 = call %struct.nfp6000_explicit_priv* @nfp_cpp_explicit_priv(%struct.nfp_cpp_explicit* %5)
  store %struct.nfp6000_explicit_priv* %6, %struct.nfp6000_explicit_priv** %3, align 8
  %7 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %7, i32 0, i32 1
  %9 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %8, align 8
  store %struct.nfp6000_pcie* %9, %struct.nfp6000_pcie** %4, align 8
  %10 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %11 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %15 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %3, align 8
  %19 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %3, align 8
  %26 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32 1, i32* %29, align 4
  %30 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %31 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local %struct.nfp6000_explicit_priv* @nfp_cpp_explicit_priv(%struct.nfp_cpp_explicit*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
