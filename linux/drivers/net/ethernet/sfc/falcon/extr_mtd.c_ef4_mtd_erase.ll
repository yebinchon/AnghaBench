; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mtd.c_ef4_mtd_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mtd.c_ef4_mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.ef4_nic* }
%struct.ef4_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mtd_info*, i32, i32)* }
%struct.erase_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @ef4_mtd_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_mtd_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.erase_info*, align 8
  %5 = alloca %struct.ef4_nic*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.erase_info* %1, %struct.erase_info** %4, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  store %struct.ef4_nic* %8, %struct.ef4_nic** %5, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.mtd_info*, i32, i32)*, i32 (%struct.mtd_info*, i32, i32)** %12, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %15 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %16 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %19 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %13(%struct.mtd_info* %14, i32 %17, i32 %20)
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
