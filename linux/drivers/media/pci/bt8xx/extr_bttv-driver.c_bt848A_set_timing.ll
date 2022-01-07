; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bt848A_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bt848A_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.bttv = type { i64, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@bttv_tvnorms = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"%d: load digital timing table (table_idx=%d)\0A\00", align 1
@BT848_TGCTRL = common dso_local global i32 0, align 4
@SRAM_Table = common dso_local global i32** null, align 8
@BT848_TGLB = common dso_local global i32 0, align 4
@BT848_DVSIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @bt848A_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt848A_set_timing(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bttv_tvnorms, align 8
  %8 = load %struct.bttv*, %struct.bttv** %2, align 8
  %9 = getelementptr inbounds %struct.bttv, %struct.bttv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bttv_tvnorms, align 8
  %15 = load %struct.bttv*, %struct.bttv** %2, align 8
  %16 = getelementptr inbounds %struct.bttv, %struct.bttv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.bttv*, %struct.bttv** %2, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bttv*, %struct.bttv** %2, align 8
  %25 = getelementptr inbounds %struct.bttv, %struct.bttv* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %1
  %29 = load %struct.bttv*, %struct.bttv** %2, align 8
  %30 = getelementptr inbounds %struct.bttv, %struct.bttv* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @BT848_TGCTRL, align 4
  %36 = call i32 @btwrite(i32 0, i32 %35)
  %37 = load i32, i32* @BT848_TGCTRL, align 4
  %38 = call i32 @btwrite(i32 2, i32 %37)
  %39 = load i32, i32* @BT848_TGCTRL, align 4
  %40 = call i32 @btwrite(i32 0, i32 %39)
  %41 = load i32**, i32*** @SRAM_Table, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %64, %28
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32**, i32*** @SRAM_Table, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BT848_TGLB, align 4
  %63 = call i32 @btwrite(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %48

67:                                               ; preds = %48
  %68 = load %struct.bttv*, %struct.bttv** %2, align 8
  %69 = getelementptr inbounds %struct.bttv, %struct.bttv* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 27000000, i32* %70, align 8
  %71 = load %struct.bttv*, %struct.bttv** %2, align 8
  %72 = call i32 @set_pll(%struct.bttv* %71)
  %73 = load i32, i32* @BT848_TGCTRL, align 4
  %74 = call i32 @btwrite(i32 17, i32 %73)
  %75 = load i32, i32* @BT848_DVSIF, align 4
  %76 = call i32 @btwrite(i32 65, i32 %75)
  br label %86

77:                                               ; preds = %1
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.bttv*, %struct.bttv** %2, align 8
  %80 = getelementptr inbounds %struct.bttv, %struct.bttv* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.bttv*, %struct.bttv** %2, align 8
  %83 = call i32 @set_pll(%struct.bttv* %82)
  %84 = load i32, i32* @BT848_DVSIF, align 4
  %85 = call i32 @btwrite(i32 0, i32 %84)
  br label %86

86:                                               ; preds = %77, %67
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @set_pll(%struct.bttv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
