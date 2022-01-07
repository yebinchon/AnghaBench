; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_process_tx_work_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_process_tx_work_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fst_process_tx_work_q\0A\00", align 1
@fst_work_q_lock = common dso_local global i32 0, align 4
@fst_work_txq = common dso_local global i32 0, align 4
@FST_MAX_CARDS = common dso_local global i32 0, align 4
@fst_card_array = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Calling tx bh for card %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fst_process_tx_work_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_process_tx_work_q(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @DBG_TX, align 4
  %7 = call i32 (i32, i8*, ...) @dbg(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @fst_work_q_lock, i64 %8)
  %10 = load i32, i32* @fst_work_txq, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* @fst_work_txq, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_unlock_irqrestore(i32* @fst_work_q_lock, i64 %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %42, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FST_MAX_CARDS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32**, i32*** @fst_card_array, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load i32, i32* @DBG_TX, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, ...) @dbg(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32**, i32*** @fst_card_array, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @do_bottom_half_tx(i32* %36)
  br label %38

38:                                               ; preds = %28, %21
  br label %39

39:                                               ; preds = %38, %17
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %13

45:                                               ; preds = %13
  ret void
}

declare dso_local i32 @dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_bottom_half_tx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
