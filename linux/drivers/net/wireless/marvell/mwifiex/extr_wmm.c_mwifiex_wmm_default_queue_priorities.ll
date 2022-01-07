; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_default_queue_priorities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_default_queue_priorities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@WMM_AC_VO = common dso_local global i32 0, align 4
@WMM_AC_VI = common dso_local global i32 0, align 4
@WMM_AC_BE = common dso_local global i32 0, align 4
@WMM_AC_BK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*)* @mwifiex_wmm_default_queue_priorities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_wmm_default_queue_priorities(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %3 = load i32, i32* @WMM_AC_VO, align 4
  %4 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @WMM_AC_VI, align 4
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @WMM_AC_BE, align 4
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %15, i32* %20, align 4
  %21 = load i32, i32* @WMM_AC_BK, align 4
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  store i32 %21, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
