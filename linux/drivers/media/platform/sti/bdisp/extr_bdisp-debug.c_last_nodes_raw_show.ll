; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_last_nodes_raw_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_last_nodes_raw_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.bdisp_dev* }
%struct.bdisp_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bdisp_node** }
%struct.bdisp_node = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"No node built yet\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"--------\0ANode %d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%08X\0A\00", align 1
@MAX_NB_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @last_nodes_raw_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @last_nodes_raw_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bdisp_dev*, align 8
  %7 = alloca %struct.bdisp_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.bdisp_dev*, %struct.bdisp_dev** %12, align 8
  store %struct.bdisp_dev* %13, %struct.bdisp_dev** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %15 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.bdisp_node**, %struct.bdisp_node*** %16, align 8
  %18 = getelementptr inbounds %struct.bdisp_node*, %struct.bdisp_node** %17, i64 0
  %19 = load %struct.bdisp_node*, %struct.bdisp_node** %18, align 8
  %20 = icmp ne %struct.bdisp_node* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %67, %24
  %26 = load %struct.bdisp_dev*, %struct.bdisp_dev** %6, align 8
  %27 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.bdisp_node**, %struct.bdisp_node*** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bdisp_node*, %struct.bdisp_node** %29, i64 %31
  %33 = load %struct.bdisp_node*, %struct.bdisp_node** %32, align 8
  store %struct.bdisp_node* %33, %struct.bdisp_node** %7, align 8
  %34 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %35 = icmp ne %struct.bdisp_node* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %69

37:                                               ; preds = %25
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %42 = bitcast %struct.bdisp_node* %41 to i32*
  store i32* %42, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %53, %37
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 2
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %8, align 8
  %51 = load i32, i32* %49, align 4
  %52 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %43

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @MAX_NB_NODE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.bdisp_node*, %struct.bdisp_node** %7, align 8
  %64 = getelementptr inbounds %struct.bdisp_node, %struct.bdisp_node* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  br i1 %68, label %25, label %69

69:                                               ; preds = %67, %36
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
