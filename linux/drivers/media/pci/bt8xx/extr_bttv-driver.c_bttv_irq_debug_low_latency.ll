; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq_debug_low_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq_debug_low_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i64 }

@.str = private unnamed_addr constant [64 x i8] c"%d: irq: skipped frame [main=%lx,o_vbi=%lx,o_field=%lx,rc=%lx]\0A\00", align 1
@RISC_SLOT_O_VBI = common dso_local global i32 0, align 4
@RISC_SLOT_O_FIELD = common dso_local global i32 0, align 4
@BT848_DSTATUS = common dso_local global i32 0, align 4
@BT848_DSTATUS_HLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"%d: Oh, there (temporarily?) is no input signal. Ok, then this is harmless, don't worry ;)\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"%d: Uhm. Looks like we have unusual high IRQ latencies\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%d: Lets try to catch the culprit red-handed ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, i64)* @bttv_irq_debug_low_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_irq_debug_low_latency(%struct.bttv* %0, i64 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i64, align 8
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.bttv*, %struct.bttv** %3, align 8
  %6 = getelementptr inbounds %struct.bttv, %struct.bttv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.bttv*, %struct.bttv** %3, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.bttv*, %struct.bttv** %3, align 8
  %14 = getelementptr inbounds %struct.bttv, %struct.bttv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @RISC_SLOT_O_VBI, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  %23 = load %struct.bttv*, %struct.bttv** %3, align 8
  %24 = getelementptr inbounds %struct.bttv, %struct.bttv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @RISC_SLOT_O_FIELD, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %12, i64 %22, i64 %32, i64 %33)
  %35 = load i32, i32* @BT848_DSTATUS, align 4
  %36 = call i32 @btread(i32 %35)
  %37 = load i32, i32* @BT848_DSTATUS_HLOC, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 0, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load %struct.bttv*, %struct.bttv** %3, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pr_notice(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %58

46:                                               ; preds = %2
  %47 = load %struct.bttv*, %struct.bttv** %3, align 8
  %48 = getelementptr inbounds %struct.bttv, %struct.bttv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pr_notice(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.bttv*, %struct.bttv** %3, align 8
  %53 = getelementptr inbounds %struct.bttv, %struct.bttv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pr_notice(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = call i32 (...) @dump_stack()
  br label %58

58:                                               ; preds = %46, %40
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32, i64, i64, i64, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
