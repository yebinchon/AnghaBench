; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_verify_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_verify_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@watchdog = common dso_local global i64 0, align 8
@TX_TIMEO = common dso_local global i64 0, align 8
@buf_sz = common dso_local global i64 0, align 8
@DEFAULT_BUFSIZE = common dso_local global i64 0, align 8
@BUF_SIZE_16KiB = common dso_local global i64 0, align 8
@flow_ctrl = common dso_local global i32 0, align 4
@FLOW_AUTO = common dso_local global i32 0, align 4
@FLOW_OFF = common dso_local global i32 0, align 4
@pause = common dso_local global i32 0, align 4
@PAUSE_TIME = common dso_local global i32 0, align 4
@eee_timer = common dso_local global i64 0, align 8
@STMMAC_DEFAULT_LPI_TIMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stmmac_verify_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_verify_args() #0 {
  %1 = load i64, i64* @watchdog, align 8
  %2 = icmp slt i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i64 @unlikely(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @TX_TIMEO, align 8
  store i64 %7, i64* @watchdog, align 8
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i64, i64* @buf_sz, align 8
  %10 = load i64, i64* @DEFAULT_BUFSIZE, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* @buf_sz, align 8
  %14 = load i64, i64* @BUF_SIZE_16KiB, align 8
  %15 = icmp sgt i64 %13, %14
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ true, %8 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* @DEFAULT_BUFSIZE, align 8
  store i64 %22, i64* @buf_sz, align 8
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* @flow_ctrl, align 4
  %25 = icmp sgt i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @FLOW_AUTO, align 4
  store i32 %30, i32* @flow_ctrl, align 4
  br label %40

31:                                               ; preds = %23
  %32 = load i32, i32* @flow_ctrl, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @FLOW_OFF, align 4
  store i32 %38, i32* @flow_ctrl, align 4
  br label %39

39:                                               ; preds = %37, %31
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* @pause, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @pause, align 4
  %45 = icmp sgt i32 %44, 65535
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ true, %40 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @PAUSE_TIME, align 4
  store i32 %52, i32* @pause, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i64, i64* @eee_timer, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* @STMMAC_DEFAULT_LPI_TIMER, align 8
  store i64 %57, i64* @eee_timer, align 8
  br label %58

58:                                               ; preds = %56, %53
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
