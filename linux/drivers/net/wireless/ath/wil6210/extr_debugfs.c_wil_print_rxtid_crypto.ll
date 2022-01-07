; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_print_rxtid_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_print_rxtid_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.wil_tid_crypto_rx = type { %struct.wil_tid_crypto_rx_single* }
%struct.wil_tid_crypto_rx_single = type { i32, i64 }

@WIL_STA_TID_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"  [%2d] PN\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"  [GR] PN\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" [%i%s]%6phN\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, %struct.wil_tid_crypto_rx*)* @wil_print_rxtid_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_print_rxtid_crypto(%struct.seq_file* %0, i32 %1, %struct.wil_tid_crypto_rx* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil_tid_crypto_rx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wil_tid_crypto_rx_single*, align 8
  %9 = alloca %struct.wil_tid_crypto_rx_single*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wil_tid_crypto_rx* %2, %struct.wil_tid_crypto_rx** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %26, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.wil_tid_crypto_rx*, %struct.wil_tid_crypto_rx** %6, align 8
  %15 = getelementptr inbounds %struct.wil_tid_crypto_rx, %struct.wil_tid_crypto_rx* %14, i32 0, i32 0
  %16 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %16, i64 %18
  store %struct.wil_tid_crypto_rx_single* %19, %struct.wil_tid_crypto_rx_single** %8, align 8
  %20 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %8, align 8
  %21 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %10

29:                                               ; preds = %10
  br label %70

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @WIL_STA_TID_NUM, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = call i32 @seq_puts(%struct.seq_file* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %34
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load %struct.wil_tid_crypto_rx*, %struct.wil_tid_crypto_rx** %6, align 8
  %47 = getelementptr inbounds %struct.wil_tid_crypto_rx, %struct.wil_tid_crypto_rx* %46, i32 0, i32 0
  %48 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %48, i64 %50
  store %struct.wil_tid_crypto_rx_single* %51, %struct.wil_tid_crypto_rx_single** %9, align 8
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %9, align 8
  %55 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %60 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %9, align 8
  %61 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %53, i8* %59, i32 %62)
  br label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %29
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
