; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32 }
%struct.net_device = type { %struct.net_device_stats, i64 }
%struct.Am79C960 = type { i16, i32 }

@CSR112 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @ariadne_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @ariadne_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.Am79C960*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.Am79C960*
  store %struct.Am79C960* %9, %struct.Am79C960** %3, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %13 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %12, i32 0, i32 0
  %14 = load volatile i16, i16* %13, align 4
  store i16 %14, i16* %4, align 2
  %15 = load i16, i16* @CSR112, align 2
  %16 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %17 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %16, i32 0, i32 0
  store volatile i16 %15, i16* %17, align 4
  %18 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %19 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %18, i32 0, i32 1
  %20 = load volatile i32, i32* %19, align 4
  %21 = call i32 @swapw(i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i16, i16* %4, align 2
  %26 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %27 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %26, i32 0, i32 0
  store volatile i16 %25, i16* %27, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @local_irq_restore(i64 %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  ret %struct.net_device_stats* %31
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @swapw(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
