; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i32, i64 }

@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"In fst_tx_dma %x %x %d\0A\00", align 1
@DBG_ASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"In fst_tx_dma while dma in progress\0A\00", align 1
@DMAPADR1 = common dso_local global i64 0, align 8
@DMALADR1 = common dso_local global i64 0, align 8
@DMASIZ1 = common dso_local global i64 0, align 8
@DMADPR1 = common dso_local global i64 0, align 8
@DMACSR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, i32, i32, i32)* @fst_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_tx_dma(%struct.fst_card_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fst_card_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @DBG_TX, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 (i32, i8*, ...) @dbg(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  %14 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %15 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @DBG_ASS, align 4
  %20 = call i32 (i32, i8*, ...) @dbg(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %24 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DMAPADR1, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outl(i32 %22, i64 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %31 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMALADR1, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outl(i32 %29, i64 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %38 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DMASIZ1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outl(i32 %36, i64 %41)
  %43 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %44 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DMADPR1, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outl(i32 4, i64 %47)
  %49 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %50 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %52 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DMACSR1, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outb(i32 3, i64 %55)
  ret void
}

declare dso_local i32 @dbg(i32, i8*, ...) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
