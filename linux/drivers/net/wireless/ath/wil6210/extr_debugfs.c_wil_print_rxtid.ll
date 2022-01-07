; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_print_rxtid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_print_rxtid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.wil_tid_ampdu_rx = type { i32, i32, i32, i64, i64, i64, i32, i32, i64* }

@.str = private unnamed_addr constant [17 x i8] c"([%2d]) 0x%03x [\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"] total %llu drop %llu (dup %llu + old %llu + dup mcast %llu) last 0x%03x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.wil_tid_ampdu_rx*)* @wil_print_rxtid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_print_rxtid(%struct.seq_file* %0, %struct.wil_tid_ampdu_rx* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.wil_tid_ampdu_rx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.wil_tid_ampdu_rx* %1, %struct.wil_tid_ampdu_rx** %4, align 8
  %10 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %11 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %14 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = and i32 %16, 4095
  %18 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %19 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = srem i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %23 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %26 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %29 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %33 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %36 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %76, %2
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %42 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %52 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %51, i32 0, i32 8
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 79, i32 124
  %61 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %75

62:                                               ; preds = %45
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %65 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %64, i32 0, i32 8
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 42, i32 95
  %74 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %62, %49
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %39

79:                                               ; preds = %39
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %82 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %84, %85
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %86, %87
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %4, align 8
  %93 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %83, i64 %88, i64 %89, i64 %90, i64 %91, i32 %94)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
