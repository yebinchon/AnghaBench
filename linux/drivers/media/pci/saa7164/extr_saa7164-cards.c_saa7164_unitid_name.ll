; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-cards.c_saa7164_unitid_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-cards.c_saa7164_unitid_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.saa7164_unit* }
%struct.saa7164_unit = type { i64, i64, i8* }
%struct.saa7164_dev = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"BRIDGE\00", align 1
@SAA7164_MAX_UNITS = common dso_local global i32 0, align 4
@saa7164_boards = common dso_local global %struct.TYPE_2__* null, align 8
@SAA7164_UNIT_UNDEFINED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @saa7164_unitid_name(%struct.saa7164_dev* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.saa7164_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.saa7164_unit*, align 8
  %9 = alloca i32, align 4
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %3, align 8
  br label %52

14:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %47, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SAA7164_MAX_UNITS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saa7164_boards, align 8
  %21 = load %struct.saa7164_dev*, %struct.saa7164_dev** %4, align 8
  %22 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.saa7164_unit*, %struct.saa7164_unit** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.saa7164_unit, %struct.saa7164_unit* %26, i64 %28
  store %struct.saa7164_unit* %29, %struct.saa7164_unit** %8, align 8
  %30 = load %struct.saa7164_unit*, %struct.saa7164_unit** %8, align 8
  %31 = getelementptr inbounds %struct.saa7164_unit, %struct.saa7164_unit* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SAA7164_UNIT_UNDEFINED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %47

36:                                               ; preds = %19
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.saa7164_unit*, %struct.saa7164_unit** %8, align 8
  %39 = getelementptr inbounds %struct.saa7164_unit, %struct.saa7164_unit* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.saa7164_unit*, %struct.saa7164_unit** %8, align 8
  %44 = getelementptr inbounds %struct.saa7164_unit, %struct.saa7164_unit* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %3, align 8
  br label %52

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %50, %42, %12
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
