; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_reset_ring_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_reset_ring_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_queue = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RCB_RESET_TRY_TIMES = common dso_local global i64 0, align 8
@RCB_RING_TX_RING_FBDNUM_REG = common dso_local global i32 0, align 4
@RCB_RING_PREFETCH_EN_REG = common dso_local global i32 0, align 4
@RCB_RING_T0_BE_RST = common dso_local global i32 0, align 4
@RCB_RING_COULD_BE_RST = common dso_local global i32 0, align 4
@RCB_RESET_WAIT_TIMES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"port%d reset ring fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_rcb_reset_ring_hw(%struct.hnae_queue* %0) #0 {
  %2 = alloca %struct.hnae_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hnae_queue* %0, %struct.hnae_queue** %2, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %60, %19, %1
  %8 = load i64, i64* %4, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* @RCB_RESET_TRY_TIMES, align 8
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %7
  %13 = call i32 @usleep_range(i32 100, i32 200)
  %14 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %15 = load i32, i32* @RCB_RING_TX_RING_FBDNUM_REG, align 4
  %16 = call i64 @dsaf_read_dev(%struct.hnae_queue* %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %7

20:                                               ; preds = %12
  %21 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %22 = load i32, i32* @RCB_RING_PREFETCH_EN_REG, align 4
  %23 = call i32 @dsaf_write_dev(%struct.hnae_queue* %21, i32 %22, i32 0)
  %24 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %25 = load i32, i32* @RCB_RING_T0_BE_RST, align 4
  %26 = call i32 @dsaf_write_dev(%struct.hnae_queue* %24, i32 %25, i32 1)
  %27 = call i32 @msleep(i32 20)
  %28 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %29 = load i32, i32* @RCB_RING_COULD_BE_RST, align 4
  %30 = call i64 @dsaf_read_dev(%struct.hnae_queue* %28, i32 %29)
  store i64 %30, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %40, %20
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @RCB_RESET_WAIT_TIMES, align 8
  %37 = icmp slt i64 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %53

40:                                               ; preds = %38
  %41 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %42 = load i32, i32* @RCB_RING_T0_BE_RST, align 4
  %43 = call i32 @dsaf_write_dev(%struct.hnae_queue* %41, i32 %42, i32 0)
  %44 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %45 = load i32, i32* @RCB_RING_T0_BE_RST, align 4
  %46 = call i32 @dsaf_write_dev(%struct.hnae_queue* %44, i32 %45, i32 1)
  %47 = call i32 @msleep(i32 20)
  %48 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %49 = load i32, i32* @RCB_RING_COULD_BE_RST, align 4
  %50 = call i64 @dsaf_read_dev(%struct.hnae_queue* %48, i32 %49)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %3, align 8
  br label %31

53:                                               ; preds = %38
  %54 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %55 = load i32, i32* @RCB_RING_T0_BE_RST, align 4
  %56 = call i32 @dsaf_write_dev(%struct.hnae_queue* %54, i32 %55, i32 0)
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %53
  br label %7

61:                                               ; preds = %59, %7
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @RCB_RESET_TRY_TIMES, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %67 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %72 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.TYPE_4__* @hns_ae_get_vf_cb(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %65, %61
  ret void
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @dsaf_read_dev(%struct.hnae_queue*, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.hnae_queue*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @hns_ae_get_vf_cb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
