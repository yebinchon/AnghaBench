; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_enqueue_mbx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_enqueue_mbx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_mailbox* }
%struct.qlcnic_mailbox = type { i64, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { i64, i32, i32, i32, i32 }

@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@QLC_83XX_MBX_RESPONSE_WAIT = common dso_local global i32 0, align 4
@QLC_83XX_MBX_RESPONSE_UNKNOWN = common dso_local global i32 0, align 4
@QLC_83XX_MBX_TIMEOUT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*, i64*)* @qlcnic_83xx_enqueue_mbx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_enqueue_mbx_cmd(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_cmd_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.qlcnic_mailbox*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %12, align 8
  store %struct.qlcnic_mailbox* %13, %struct.qlcnic_mailbox** %8, align 8
  %14 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %15 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %8, align 8
  %16 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %15, i32 0, i32 5
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %3
  %20 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %21 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %20, i32 0, i32 4
  %22 = load i32, i32* @QLC_83XX_MBX_RESPONSE_WAIT, align 4
  %23 = call i32 @atomic_set(i32* %21, i32 %22)
  %24 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %24, i32 0, i32 3
  %26 = call i32 @init_completion(i32* %25)
  %27 = load i32, i32* @QLC_83XX_MBX_RESPONSE_UNKNOWN, align 4
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %8, align 8
  %31 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %33, i32 0, i32 1
  %35 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %8, align 8
  %36 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %35, i32 0, i32 4
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %8, align 8
  %39 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %8, align 8
  %43 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %46 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @QLC_83XX_MBX_TIMEOUT, align 8
  %51 = mul i64 %49, %50
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  %53 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %8, align 8
  %54 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %8, align 8
  %57 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %56, i32 0, i32 2
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  %59 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %8, align 8
  %60 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock_bh(i32* %60)
  store i32 0, i32* %4, align 4
  br label %65

62:                                               ; preds = %3
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
