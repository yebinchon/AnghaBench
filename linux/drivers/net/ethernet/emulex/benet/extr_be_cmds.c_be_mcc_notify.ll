; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_mcc_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_mcc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i32 }

@BE_ERROR_ANY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DB_MCCQ_RING_ID_MASK = common dso_local global i32 0, align 4
@DB_MCCQ_NUM_POSTED_SHIFT = common dso_local global i32 0, align 4
@DB_MCCQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_mcc_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mcc_notify(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_queue_info*, align 8
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.be_queue_info* %8, %struct.be_queue_info** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = load i32, i32* @BE_ERROR_ANY, align 4
  %11 = call i64 @be_check_error(%struct.be_adapter* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %18 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DB_MCCQ_RING_ID_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @DB_MCCQ_NUM_POSTED_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = call i32 (...) @wmb()
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DB_MCCQ_OFFSET, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32(i32 %29, i64 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %16, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @be_check_error(%struct.be_adapter*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
