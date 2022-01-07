; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_chk_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_chk_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32 }
%struct.ring_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: Out of memory in Rx Intr!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*, %struct.ring_info*)* @s2io_chk_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_chk_rx_buffers(%struct.s2io_nic* %0, %struct.ring_info* %1) #0 {
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca %struct.ring_info*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store %struct.ring_info* %1, %struct.ring_info** %4, align 8
  %5 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %6 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %7 = call i32 @fill_rx_buffers(%struct.s2io_nic* %5, %struct.ring_info* %6, i32 0)
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @INFO_DBG, align 4
  %13 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %14 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DBG_PRINT(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %11, %2
  ret i32 0
}

declare dso_local i32 @fill_rx_buffers(%struct.s2io_nic*, %struct.ring_info*, i32) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
