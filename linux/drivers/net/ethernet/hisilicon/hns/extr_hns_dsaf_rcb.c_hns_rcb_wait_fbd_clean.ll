; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_wait_fbd_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_wait_fbd_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RCB_INT_FLAG_TX = common dso_local global i32 0, align 4
@RCB_RING_TX_RING_FBDNUM_REG = common dso_local global i32 0, align 4
@RCB_INT_FLAG_RX = common dso_local global i32 0, align 4
@RCB_RING_RX_RING_FBDNUM_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"queue(%d) wait fbd(%d) clean fail!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_rcb_wait_fbd_clean(%struct.hnae_queue** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hnae_queue**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hnae_queue** %0, %struct.hnae_queue*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %56, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = call i32 @usleep_range(i32 200, i32 300)
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @RCB_INT_FLAG_TX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.hnae_queue**, %struct.hnae_queue*** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %21, i64 %23
  %25 = load %struct.hnae_queue*, %struct.hnae_queue** %24, align 8
  %26 = load i32, i32* @RCB_RING_TX_RING_FBDNUM_REG, align 4
  %27 = call i32 @dsaf_read_dev(%struct.hnae_queue* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %20, %14
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RCB_INT_FLAG_RX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.hnae_queue**, %struct.hnae_queue*** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %36, i64 %38
  %40 = load %struct.hnae_queue*, %struct.hnae_queue** %39, align 8
  %41 = load i32, i32* @RCB_RING_RX_RING_FBDNUM_REG, align 4
  %42 = call i32 @dsaf_read_dev(%struct.hnae_queue* %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %35, %30
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 10000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %59

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %10

59:                                               ; preds = %54, %10
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.hnae_queue**, %struct.hnae_queue*** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %64, i64 %66
  %68 = load %struct.hnae_queue*, %struct.hnae_queue** %67, align 8
  %69 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %63, %59
  ret void
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dsaf_read_dev(%struct.hnae_queue*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
