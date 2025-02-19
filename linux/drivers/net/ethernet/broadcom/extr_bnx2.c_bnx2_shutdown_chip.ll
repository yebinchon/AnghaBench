; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_shutdown_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_shutdown_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i64 }

@BNX2_FLAG_NO_WOL = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_UNLOAD_LNK_DN = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_SUSPEND_WOL = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_SUSPEND_NO_WOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_shutdown_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_shutdown_chip(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %4 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @BNX2_FLAG_NO_WOL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @BNX2_DRV_MSG_CODE_UNLOAD_LNK_DN, align 4
  store i32 %11, i32* %3, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @BNX2_DRV_MSG_CODE_SUSPEND_WOL, align 4
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @BNX2_DRV_MSG_CODE_SUSPEND_NO_WOL, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %10
  %23 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @bnx2_reset_chip(%struct.bnx2* %23, i32 %24)
  ret i32 %25
}

declare dso_local i32 @bnx2_reset_chip(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
