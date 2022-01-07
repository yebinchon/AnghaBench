; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_flashcontrol_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_flashcontrol_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.docg3 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DOC_FLASHCONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"FlashControl : 0x%02x (%s,CE# %s,%s,%s,flash %s)\0A\00", align 1
@DOC_CTRL_VIOLATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"protocol violation\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@DOC_CTRL_CE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@DOC_CTRL_PROTECTION_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"protection error\00", align 1
@DOC_CTRL_SEQUENCE_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"sequence error\00", align 1
@DOC_CTRL_FLASHREADY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"not ready\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @flashcontrol_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashcontrol_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.docg3*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.docg3*
  store %struct.docg3* %10, %struct.docg3** %5, align 8
  %11 = load %struct.docg3*, %struct.docg3** %5, align 8
  %12 = getelementptr inbounds %struct.docg3, %struct.docg3* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.docg3*, %struct.docg3** %5, align 8
  %17 = load i32, i32* @DOC_FLASHCONTROL, align 4
  %18 = call i32 @doc_register_readb(%struct.docg3* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.docg3*, %struct.docg3** %5, align 8
  %20 = getelementptr inbounds %struct.docg3, %struct.docg3* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DOC_CTRL_VIOLATION, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DOC_CTRL_CE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DOC_CTRL_PROTECTION_ERROR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @DOC_CTRL_SEQUENCE_ERROR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @DOC_CTRL_FLASHREADY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %56 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %31, i8* %37, i8* %43, i8* %49, i8* %55)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @doc_register_readb(%struct.docg3*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
