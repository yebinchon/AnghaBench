; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_set_transfer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_set_transfer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }

@CB710_MMC_S2_BUSY_20 = common dso_local global i32 0, align 4
@CB710_MMC_TRANSFER_SIZE_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"set up for %zu block%s of %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cb710_slot*, i64, i64)* @cb710_mmc_set_transfer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_mmc_set_transfer_size(%struct.cb710_slot* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.cb710_slot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cb710_slot* %0, %struct.cb710_slot** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %8 = load i32, i32* @CB710_MMC_S2_BUSY_20, align 4
  %9 = call i32 @cb710_wait_while_busy(%struct.cb710_slot* %7, i32 %8)
  %10 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %11 = load i32, i32* @CB710_MMC_TRANSFER_SIZE_PORT, align 4
  %12 = load i64, i64* %5, align 8
  %13 = sub i64 %12, 1
  %14 = shl i64 %13, 16
  %15 = load i64, i64* %6, align 8
  %16 = sub i64 %15, 1
  %17 = or i64 %14, %16
  %18 = call i32 @cb710_write_port_32(%struct.cb710_slot* %10, i32 %11, i64 %17)
  %19 = load %struct.cb710_slot*, %struct.cb710_slot** %4, align 8
  %20 = call i32 @cb710_slot_dev(%struct.cb710_slot* %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @dev_vdbg(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %21, i8* %25, i64 %26)
  ret void
}

declare dso_local i32 @cb710_wait_while_busy(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_write_port_32(%struct.cb710_slot*, i32, i64) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i64, i8*, i64) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
