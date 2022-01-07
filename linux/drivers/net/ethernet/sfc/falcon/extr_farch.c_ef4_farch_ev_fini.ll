; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_ev_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_ev_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { i32, i32, %struct.ef4_nic* }
%struct.ef4_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_farch_ev_fini(%struct.ef4_channel* %0) #0 {
  %2 = alloca %struct.ef4_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_nic*, align 8
  store %struct.ef4_channel* %0, %struct.ef4_channel** %2, align 8
  %5 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %5, i32 0, i32 2
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  store %struct.ef4_nic* %7, %struct.ef4_nic** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @EF4_ZERO_OWORD(i32 %8)
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %12 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %17 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ef4_writeo_table(%struct.ef4_nic* %10, i32* %3, i32 %15, i32 %18)
  %20 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %21 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %22 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %21, i32 0, i32 0
  %23 = call i32 @ef4_fini_special_buffer(%struct.ef4_nic* %20, i32* %22)
  ret void
}

declare dso_local i32 @EF4_ZERO_OWORD(i32) #1

declare dso_local i32 @ef4_writeo_table(%struct.ef4_nic*, i32*, i32, i32) #1

declare dso_local i32 @ef4_fini_special_buffer(%struct.ef4_nic*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
