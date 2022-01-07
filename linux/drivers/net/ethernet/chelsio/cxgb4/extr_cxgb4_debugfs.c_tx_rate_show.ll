; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tx_rate_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tx_rate_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NCHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"              channel 0   channel 1   channel 2   channel 3\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"NIC B/s:     %10llu  %10llu  %10llu  %10llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Offload B/s: %10llu  %10llu  %10llu  %10llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"              channel 0   channel 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"NIC B/s:     %10llu  %10llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Offload B/s: %10llu  %10llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tx_rate_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_rate_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.adapter*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @NCHAN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @NCHAN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %16, i32 0, i32 0
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %8, align 8
  %19 = load %struct.adapter*, %struct.adapter** %8, align 8
  %20 = call i32 @t4_get_chan_txrate(%struct.adapter* %19, i64* %12, i64* %15)
  %21 = load %struct.adapter*, %struct.adapter** %8, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NCHAN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %2
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = call i32 @seq_puts(%struct.seq_file* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = getelementptr inbounds i64, i64* %12, i64 0
  %33 = load i64, i64* %32, align 16
  %34 = getelementptr inbounds i64, i64* %12, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %12, i64 2
  %37 = load i64, i64* %36, align 16
  %38 = getelementptr inbounds i64, i64* %12, i64 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.seq_file*, i8*, i64, i64, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %35, i64 %37, i64 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = getelementptr inbounds i64, i64* %15, i64 0
  %43 = load i64, i64* %42, align 16
  %44 = getelementptr inbounds i64, i64* %15, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %15, i64 2
  %47 = load i64, i64* %46, align 16
  %48 = getelementptr inbounds i64, i64* %15, i64 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.seq_file*, i8*, i64, i64, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %43, i64 %45, i64 %47, i64 %49)
  br label %66

51:                                               ; preds = %2
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = call i32 @seq_puts(%struct.seq_file* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = getelementptr inbounds i64, i64* %12, i64 0
  %56 = load i64, i64* %55, align 16
  %57 = getelementptr inbounds i64, i64* %12, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.seq_file*, i8*, i64, i64, ...) @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %56, i64 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = getelementptr inbounds i64, i64* %15, i64 0
  %62 = load i64, i64* %61, align 16
  %63 = getelementptr inbounds i64, i64* %15, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (%struct.seq_file*, i8*, i64, i64, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %62, i64 %64)
  br label %66

66:                                               ; preds = %51, %28
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @t4_get_chan_txrate(%struct.adapter*, i64*, i64*) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
