; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_mboxlog_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_mboxlog_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { %struct.mbox_cmd_log* }
%struct.mbox_cmd_log = type { i64, i32 }
%struct.mbox_cmd = type { i32*, i32, i32, i32, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"%10s  %15s  %5s  %5s  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Seq#\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Tstamp\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Atime\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Etime\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Command/Reply\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%10u  %15llu  %5d  %5d\00", align 1
@MBOX_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"  %08x %08x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mboxlog_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mboxlog_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.mbox_cmd_log*, align 8
  %8 = alloca %struct.mbox_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %14, i32 0, i32 0
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %6, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %18, align 8
  store %struct.mbox_cmd_log* %19, %struct.mbox_cmd_log** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %7, align 8
  %28 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = sub i64 %31, 2
  %33 = add i64 %29, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %7, align 8
  %37 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %7, align 8
  %42 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %40, %26
  %47 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.mbox_cmd* @mbox_cmd_log_entry(%struct.mbox_cmd_log* %47, i32 %48)
  store %struct.mbox_cmd* %49, %struct.mbox_cmd** %8, align 8
  %50 = load %struct.mbox_cmd*, %struct.mbox_cmd** %8, align 8
  %51 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %104

55:                                               ; preds = %46
  %56 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %57 = load %struct.mbox_cmd*, %struct.mbox_cmd** %8, align 8
  %58 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.mbox_cmd*, %struct.mbox_cmd** %8, align 8
  %63 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.mbox_cmd*, %struct.mbox_cmd** %8, align 8
  %68 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mbox_cmd*, %struct.mbox_cmd** %8, align 8
  %71 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %61, i8* %66, i32 %69, i32 %72)
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %98, %55
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @MBOX_LEN, align 4
  %77 = sdiv i32 %76, 8
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %74
  %80 = load %struct.mbox_cmd*, %struct.mbox_cmd** %8, align 8
  %81 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = ashr i32 %87, 32
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %13, align 4
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %93, i8* %96)
  br label %98

98:                                               ; preds = %79
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %74

101:                                              ; preds = %74
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = call i32 @seq_puts(%struct.seq_file* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %54, %23
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #1

declare dso_local %struct.mbox_cmd* @mbox_cmd_log_entry(%struct.mbox_cmd_log*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
