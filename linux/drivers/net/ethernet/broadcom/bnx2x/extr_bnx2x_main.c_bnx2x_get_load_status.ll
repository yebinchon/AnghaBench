; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_get_load_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_get_load_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_PATH1_LOAD_CNT_MASK = common dso_local global i32 0, align 4
@BNX2X_PATH0_LOAD_CNT_MASK = common dso_local global i32 0, align 4
@BNX2X_PATH1_LOAD_CNT_SHIFT = common dso_local global i32 0, align 4
@BNX2X_PATH0_LOAD_CNT_SHIFT = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_GLOB_REG = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"GLOB_REG=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"load mask for engine %d = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32)* @bnx2x_get_load_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_load_status(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @BNX2X_PATH1_LOAD_CNT_MASK, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @BNX2X_PATH0_LOAD_CNT_MASK, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @BNX2X_PATH1_LOAD_CNT_SHIFT, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @BNX2X_PATH0_LOAD_CNT_SHIFT, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %6, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = load i32, i32* @BNX2X_RECOVERY_GLOB_REG, align 4
  %26 = call i32 @REG_RD(%struct.bnx2x* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @NETIF_MSG_HW, align 4
  %28 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32, i8*, i32, ...) @DP(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @NETIF_MSG_HW, align 4
  %38 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, i32, ...) @DP(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
