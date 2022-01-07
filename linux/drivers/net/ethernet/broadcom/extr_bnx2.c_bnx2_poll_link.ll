; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_poll_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_poll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }
%struct.bnx2_napi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.status_block* }
%struct.status_block = type { i32, i32 }

@STATUS_ATTN_EVENTS = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND_COAL_NOW_WO_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, %struct.bnx2_napi*)* @bnx2_poll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_poll_link(%struct.bnx2* %0, %struct.bnx2_napi* %1) #0 {
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca %struct.bnx2_napi*, align 8
  %5 = alloca %struct.status_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store %struct.bnx2_napi* %1, %struct.bnx2_napi** %4, align 8
  %8 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.status_block*, %struct.status_block** %10, align 8
  store %struct.status_block* %11, %struct.status_block** %5, align 8
  %12 = load %struct.status_block*, %struct.status_block** %5, align 8
  %13 = getelementptr inbounds %struct.status_block, %struct.status_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.status_block*, %struct.status_block** %5, align 8
  %16 = getelementptr inbounds %struct.status_block, %struct.status_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @STATUS_ATTN_EVENTS, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @STATUS_ATTN_EVENTS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %27 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %28 = call i32 @bnx2_phy_int(%struct.bnx2* %26, %struct.bnx2_napi* %27)
  %29 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %30 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %31 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BNX2_HC_COMMAND_COAL_NOW_WO_INT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @BNX2_WR(%struct.bnx2* %29, i32 %30, i32 %35)
  %37 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %38 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %39 = call i32 @BNX2_RD(%struct.bnx2* %37, i32 %38)
  br label %40

40:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @bnx2_phy_int(%struct.bnx2*, %struct.bnx2_napi*) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
