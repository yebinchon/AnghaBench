; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_nic.h_ef4_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_nic.h_ef4_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ef4_channel*, i32)* @ef4_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ef4_event(%struct.ef4_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ef4_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_channel* %0, %struct.ef4_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %6 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %11, %14
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %10, i64 %16
  ret i32* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
