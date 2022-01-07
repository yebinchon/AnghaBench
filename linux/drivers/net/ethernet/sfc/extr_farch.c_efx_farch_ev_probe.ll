; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_ev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_ev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_farch_ev_probe(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %5 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %6 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %5, i32 0, i32 2
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %3, align 8
  %8 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 1
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @efx_alloc_special_buffer(%struct.efx_nic* %12, i32* %14, i32 %18)
  ret i32 %19
}

declare dso_local i32 @efx_alloc_special_buffer(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
