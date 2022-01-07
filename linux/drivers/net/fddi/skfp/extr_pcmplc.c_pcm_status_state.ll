; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_pcm_status_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_pcm_status_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.s_phy* }
%struct.s_phy = type { %struct.fddi_mib_p* }
%struct.fddi_mib_p = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcm_status_state(%struct.s_smc* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.s_smc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.s_phy*, align 8
  %14 = alloca %struct.fddi_mib_p*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 0
  %17 = load %struct.s_phy*, %struct.s_phy** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %17, i64 %19
  store %struct.s_phy* %20, %struct.s_phy** %13, align 8
  %21 = load %struct.s_phy*, %struct.s_phy** %13, align 8
  %22 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %21, i32 0, i32 0
  %23 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %22, align 8
  store %struct.fddi_mib_p* %23, %struct.fddi_mib_p** %14, align 8
  %24 = load i32*, i32** %12, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %14, align 8
  %26 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %14, align 8
  %30 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %14, align 8
  %34 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %14, align 8
  %38 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %46 [
    i32 128, label %40
  ]

40:                                               ; preds = %6
  %41 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %14, align 8
  %42 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %12, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %6, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
