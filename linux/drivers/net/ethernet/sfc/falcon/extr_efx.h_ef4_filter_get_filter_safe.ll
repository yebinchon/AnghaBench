; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.h_ef4_filter_get_filter_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.h_ef4_filter_get_filter_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ef4_nic*, i32, i32, %struct.ef4_filter_spec*)* }
%struct.ef4_filter_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*, i32, i32, %struct.ef4_filter_spec*)* @ef4_filter_get_filter_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_filter_get_filter_safe(%struct.ef4_nic* %0, i32 %1, i32 %2, %struct.ef4_filter_spec* %3) #0 {
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ef4_filter_spec*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ef4_filter_spec* %3, %struct.ef4_filter_spec** %8, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ef4_nic*, i32, i32, %struct.ef4_filter_spec*)*, i32 (%struct.ef4_nic*, i32, i32, %struct.ef4_filter_spec*)** %12, align 8
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %8, align 8
  %18 = call i32 %13(%struct.ef4_nic* %14, i32 %15, i32 %16, %struct.ef4_filter_spec* %17)
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
