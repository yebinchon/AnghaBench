; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2_napi = type { i64, i32, %struct.TYPE_2__, %struct.bnx2* }
%struct.TYPE_2__ = type { %struct.status_block* }
%struct.status_block = type { i64 }
%struct.bnx2 = type { i32 }

@BNX2_PCICFG_MISC_STATUS = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_STATUS_INTA_VALUE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD_MASK_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bnx2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bnx2_napi*, align 8
  %7 = alloca %struct.bnx2*, align 8
  %8 = alloca %struct.status_block*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bnx2_napi*
  store %struct.bnx2_napi* %10, %struct.bnx2_napi** %6, align 8
  %11 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %12 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %11, i32 0, i32 3
  %13 = load %struct.bnx2*, %struct.bnx2** %12, align 8
  store %struct.bnx2* %13, %struct.bnx2** %7, align 8
  %14 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %15 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.status_block*, %struct.status_block** %16, align 8
  store %struct.status_block* %17, %struct.status_block** %8, align 8
  %18 = load %struct.status_block*, %struct.status_block** %8, align 8
  %19 = getelementptr inbounds %struct.status_block, %struct.status_block* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %22 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %27 = load i32, i32* @BNX2_PCICFG_MISC_STATUS, align 4
  %28 = call i32 @BNX2_RD(%struct.bnx2* %26, i32 %27)
  %29 = load i32, i32* @BNX2_PCICFG_MISC_STATUS_INTA_VALUE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %25, %2
  %35 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %36 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %37 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD_USE_INT_HC_PARAM, align 4
  %38 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD_MASK_INT, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @BNX2_WR(%struct.bnx2* %35, i32 %36, i32 %39)
  %41 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %42 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %43 = call i32 @BNX2_RD(%struct.bnx2* %41, i32 %42)
  %44 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %45 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %44, i32 0, i32 0
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %34
  %54 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %55 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %54, i32 0, i32 1
  %56 = call i64 @napi_schedule_prep(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.status_block*, %struct.status_block** %8, align 8
  %60 = getelementptr inbounds %struct.status_block, %struct.status_block* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %63 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %65 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %64, i32 0, i32 1
  %66 = call i32 @__napi_schedule(i32* %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %51, %32
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
