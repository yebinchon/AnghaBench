; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_asic_mode_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_asic_mode_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.docg3 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DOC_ASICMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"%04x : RAM_WE=%d,RSTIN_RESET=%d,BDETCT_RESET=%d,WRITE_ENABLE=%d,POWERDOWN=%d,MODE=%d%d (\00", align 1
@DOC_ASICMODE_RAM_WE = common dso_local global i32 0, align 4
@DOC_ASICMODE_RSTIN_RESET = common dso_local global i32 0, align 4
@DOC_ASICMODE_BDETCT_RESET = common dso_local global i32 0, align 4
@DOC_ASICMODE_MDWREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @asic_mode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asic_mode_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.docg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.docg3*
  store %struct.docg3* %11, %struct.docg3** %5, align 8
  %12 = load %struct.docg3*, %struct.docg3** %5, align 8
  %13 = getelementptr inbounds %struct.docg3, %struct.docg3* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.docg3*, %struct.docg3** %5, align 8
  %18 = load i32, i32* @DOC_ASICMODE, align 4
  %19 = call i32 @doc_register_readb(%struct.docg3* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 3
  store i32 %21, i32* %7, align 4
  %22 = load %struct.docg3*, %struct.docg3** %5, align 8
  %23 = getelementptr inbounds %struct.docg3, %struct.docg3* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DOC_ASICMODE_RAM_WE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DOC_ASICMODE_RSTIN_RESET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DOC_ASICMODE_BDETCT_RESET, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @DOC_ASICMODE_MDWREN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 129
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 1
  %62 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34, i32 %40, i32 %46, i32 %52, i32 %57, i32 %59, i32 %61)
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %73 [
    i32 128, label %64
    i32 130, label %67
    i32 129, label %70
  ]

64:                                               ; preds = %2
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = call i32 @seq_puts(%struct.seq_file* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %73

67:                                               ; preds = %2
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %73

70:                                               ; preds = %2
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = call i32 @seq_puts(%struct.seq_file* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %2, %70, %67, %64
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = call i32 @seq_puts(%struct.seq_file* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @doc_register_readb(%struct.docg3*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
