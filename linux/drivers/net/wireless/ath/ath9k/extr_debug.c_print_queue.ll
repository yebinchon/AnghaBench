; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_print_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_print_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_txq = type { i32, i32, i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s: %d \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"qnum\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s: %2d \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"qdepth\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ampdu-depth\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s: %3d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_txq*, %struct.seq_file*)* @print_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_queue(%struct.ath_softc* %0, %struct.ath_txq* %1, %struct.seq_file* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_txq*, align 8
  %6 = alloca %struct.seq_file*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_txq* %1, %struct.ath_txq** %5, align 8
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %8 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %9 = call i32 @ath_txq_lock(%struct.ath_softc* %7, %struct.ath_txq* %8)
  %10 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %11 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %12 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %16 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %17 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %21 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %22 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %26 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %27 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %31 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %32 = call i32 @ath_txq_unlock(%struct.ath_softc* %30, %struct.ath_txq* %31)
  ret void
}

declare dso_local i32 @ath_txq_lock(%struct.ath_softc*, %struct.ath_txq*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32) #1

declare dso_local i32 @ath_txq_unlock(%struct.ath_softc*, %struct.ath_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
