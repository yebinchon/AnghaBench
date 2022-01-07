; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_after_afex_vif_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_after_afex_vif_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%union.event_ring_elem = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@VIF_LIST_RULE_GET = common dso_local global i64 0, align 8
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"afex: ramrod completed VIF LIST_GET, addrs 0x%x\0A\00", align 1
@DRV_MSG_CODE_AFEX_LISTGET_ACK = common dso_local global i32 0, align 4
@VIF_LIST_RULE_SET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"afex: ramrod completed VIF LIST_SET\0A\00", align 1
@DRV_MSG_CODE_AFEX_LISTSET_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %union.event_ring_elem*)* @bnx2x_after_afex_vif_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_after_afex_vif_lists(%struct.bnx2x* %0, %union.event_ring_elem* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %union.event_ring_elem*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %union.event_ring_elem* %1, %union.event_ring_elem** %4, align 8
  %5 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %6 = bitcast %union.event_ring_elem* %5 to %struct.TYPE_5__*
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VIF_LIST_RULE_GET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @BNX2X_MSG_SP, align 4
  %15 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %16 = bitcast %union.event_ring_elem* %15 to %struct.TYPE_5__*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @DP(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = load i32, i32* @DRV_MSG_CODE_AFEX_LISTGET_ACK, align 4
  %24 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %25 = bitcast %union.event_ring_elem* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bnx2x_fw_command(%struct.bnx2x* %22, i32 %23, i32 %29)
  br label %47

31:                                               ; preds = %2
  %32 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %33 = bitcast %union.event_ring_elem* %32 to %struct.TYPE_5__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VIF_LIST_RULE_SET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* @BNX2X_MSG_SP, align 4
  %42 = call i32 (i32, i8*, ...) @DP(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = load i32, i32* @DRV_MSG_CODE_AFEX_LISTSET_ACK, align 4
  %45 = call i32 @bnx2x_fw_command(%struct.bnx2x* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %40, %31
  br label %47

47:                                               ; preds = %46, %13
  ret void
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
