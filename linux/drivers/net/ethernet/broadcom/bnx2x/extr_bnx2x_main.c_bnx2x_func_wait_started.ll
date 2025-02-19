; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_func_wait_started.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_func_wait_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2x_func_state_params = type { i32, i32, i32*, i32* }

@USING_MSIX_FLAG = common dso_local global i32 0, align 4
@bnx2x_wq = common dso_local global i32 0, align 4
@bnx2x_iov_wq = common dso_local global i32 0, align 4
@BNX2X_F_STATE_STARTED = common dso_local global i64 0, align 8
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Hmmm... Unexpected function state! Forcing STARTED-->TX_STOPPED-->STARTED\0A\00", align 1
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@BNX2X_F_CMD_TX_STOP = common dso_local global i32 0, align 4
@BNX2X_F_CMD_TX_START = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_func_wait_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_wait_started(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x_func_state_params, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 50, i32* %4, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @USING_MSIX_FLAG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %5, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @synchronize_irq(i32 %30)
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @synchronize_irq(i32 %37)
  br label %39

39:                                               ; preds = %32, %24
  %40 = load i32, i32* @bnx2x_wq, align 4
  %41 = call i32 @flush_workqueue(i32 %40)
  %42 = load i32, i32* @bnx2x_iov_wq, align 4
  %43 = call i32 @flush_workqueue(i32 %42)
  br label %44

44:                                               ; preds = %57, %39
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 1
  %48 = call i64 @bnx2x_func_get_state(%struct.bnx2x* %45, i32* %47)
  %49 = load i64, i64* @BNX2X_F_STATE_STARTED, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %4, align 4
  %54 = icmp ne i32 %52, 0
  br label %55

55:                                               ; preds = %51, %44
  %56 = phi i1 [ false, %44 ], [ %54, %51 ]
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = call i32 @msleep(i32 20)
  br label %44

59:                                               ; preds = %55
  %60 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %61, i32 0, i32 1
  %63 = call i64 @bnx2x_func_get_state(%struct.bnx2x* %60, i32* %62)
  %64 = load i64, i64* @BNX2X_F_STATE_STARTED, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = bitcast %struct.bnx2x_func_state_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %67, i8 0, i64 24, i1 false)
  %68 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %69 = call i32 @DP(i32 %68, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 2
  store i32* %71, i32** %72, align 8
  %73 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %74 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 1
  %75 = call i32 @__set_bit(i32 %73, i32* %74)
  %76 = load i32, i32* @BNX2X_F_CMD_TX_STOP, align 4
  %77 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %79 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %78, %struct.bnx2x_func_state_params* %6)
  %80 = load i32, i32* @BNX2X_F_CMD_TX_START, align 4
  %81 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %82, %struct.bnx2x_func_state_params* %6)
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %66, %20
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i64 @bnx2x_func_get_state(%struct.bnx2x*, i32*) #1

declare dso_local i32 @msleep(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_func_state_change(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
