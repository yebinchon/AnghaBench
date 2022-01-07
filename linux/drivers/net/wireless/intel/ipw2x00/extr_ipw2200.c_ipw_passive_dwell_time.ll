; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_passive_dwell_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_passive_dwell_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_passive_dwell_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_passive_dwell_time(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  %4 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %5 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 10
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 10
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %10, %1
  store i32 120, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
