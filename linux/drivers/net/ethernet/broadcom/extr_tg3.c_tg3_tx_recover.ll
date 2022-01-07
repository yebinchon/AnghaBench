; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_tx_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_tx_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i64, i32 }

@MBOX_WRITE_REORDER = common dso_local global i32 0, align 4
@tg3_write_indirect_mbox = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [193 x i8] c"The system may be re-ordering memory-mapped I/O cycles to the network device, attempting to recover. Please report the problem to the driver maintainer and include system chipset information.\0A\00", align 1
@TX_RECOVERY_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_tx_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_tx_recover(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %3 = load %struct.tg3*, %struct.tg3** %2, align 8
  %4 = load i32, i32* @MBOX_WRITE_REORDER, align 4
  %5 = call i64 @tg3_flag(%struct.tg3* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.tg3*, %struct.tg3** %2, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @tg3_write_indirect_mbox, align 8
  %12 = icmp eq i64 %10, %11
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ true, %1 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.tg3*, %struct.tg3** %2, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netdev_warn(i32 %19, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.tg3*, %struct.tg3** %2, align 8
  %22 = load i32, i32* @TX_RECOVERY_PENDING, align 4
  %23 = call i32 @tg3_flag_set(%struct.tg3* %21, i32 %22)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
