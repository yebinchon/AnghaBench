; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_debugfs.c_mic_smpt_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_debugfs.c_mic_smpt_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mic_device* }
%struct.mic_device = type { %struct.mic_smpt_info*, i32 }
%struct.mic_smpt_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"MIC %-2d |%-10s| %-14s %-10s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SMPT entry\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SW DMA addr\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"RefCount\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"====================================================\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%9s|%-10d| %-#14llx %-10lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mic_smpt_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_smpt_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mic_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mic_smpt_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.mic_device*, %struct.mic_device** %10, align 8
  store %struct.mic_device* %11, %struct.mic_device** %6, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load %struct.mic_device*, %struct.mic_device** %6, align 8
  %14 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_puts(%struct.seq_file* %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %21 = load %struct.mic_device*, %struct.mic_device** %6, align 8
  %22 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %21, i32 0, i32 0
  %23 = load %struct.mic_smpt_info*, %struct.mic_smpt_info** %22, align 8
  %24 = icmp ne %struct.mic_smpt_info* %23, null
  br i1 %24, label %25, label %68

25:                                               ; preds = %2
  %26 = load %struct.mic_device*, %struct.mic_device** %6, align 8
  %27 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %26, i32 0, i32 0
  %28 = load %struct.mic_smpt_info*, %struct.mic_smpt_info** %27, align 8
  store %struct.mic_smpt_info* %28, %struct.mic_smpt_info** %8, align 8
  %29 = load %struct.mic_smpt_info*, %struct.mic_smpt_info** %8, align 8
  %30 = getelementptr inbounds %struct.mic_smpt_info, %struct.mic_smpt_info* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %60, %25
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mic_smpt_info*, %struct.mic_smpt_info** %8, align 8
  %36 = getelementptr inbounds %struct.mic_smpt_info, %struct.mic_smpt_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %33
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mic_smpt_info*, %struct.mic_smpt_info** %8, align 8
  %44 = getelementptr inbounds %struct.mic_smpt_info, %struct.mic_smpt_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mic_smpt_info*, %struct.mic_smpt_info** %8, align 8
  %52 = getelementptr inbounds %struct.mic_smpt_info, %struct.mic_smpt_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32 %50, i32 %58)
  br label %60

60:                                               ; preds = %40
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %33

63:                                               ; preds = %33
  %64 = load %struct.mic_smpt_info*, %struct.mic_smpt_info** %8, align 8
  %65 = getelementptr inbounds %struct.mic_smpt_info, %struct.mic_smpt_info* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %2
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = call i32 @seq_puts(%struct.seq_file* %69, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
