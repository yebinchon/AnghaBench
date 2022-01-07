; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_debugfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-debug.c_bdisp_debugfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@BDISP_NAME = common dso_local global i8* null, align 8
@regs = common dso_local global i32 0, align 4
@last_nodes = common dso_local global i32 0, align 4
@last_nodes_raw = common dso_local global i32 0, align 4
@last_request = common dso_local global i32 0, align 4
@perf = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdisp_debugfs_create(%struct.bdisp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdisp_dev*, align 8
  %4 = alloca [16 x i8], align 16
  store %struct.bdisp_dev* %0, %struct.bdisp_dev** %3, align 8
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %6 = load i8*, i8** @BDISP_NAME, align 8
  %7 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %8 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @snprintf(i8* %5, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %9)
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %12 = call i32 @debugfs_create_dir(i8* %11, i32* null)
  %13 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %14 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %17 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %48

22:                                               ; preds = %1
  %23 = load i32, i32* @regs, align 4
  %24 = call i32 @bdisp_dbg_create_entry(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %48

27:                                               ; preds = %22
  %28 = load i32, i32* @last_nodes, align 4
  %29 = call i32 @bdisp_dbg_create_entry(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %48

32:                                               ; preds = %27
  %33 = load i32, i32* @last_nodes_raw, align 4
  %34 = call i32 @bdisp_dbg_create_entry(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %48

37:                                               ; preds = %32
  %38 = load i32, i32* @last_request, align 4
  %39 = call i32 @bdisp_dbg_create_entry(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @perf, align 4
  %44 = call i32 @bdisp_dbg_create_entry(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %48

47:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %53

48:                                               ; preds = %46, %41, %36, %31, %26, %21
  %49 = load %struct.bdisp_dev*, %struct.bdisp_dev** %3, align 8
  %50 = call i32 @bdisp_debugfs_remove(%struct.bdisp_dev* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @bdisp_dbg_create_entry(i32) #1

declare dso_local i32 @bdisp_debugfs_remove(%struct.bdisp_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
