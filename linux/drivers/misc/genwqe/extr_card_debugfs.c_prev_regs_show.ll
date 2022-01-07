; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_prev_regs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_prev_regs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.genwqe_dev* }
%struct.genwqe_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.genwqe_reg* }
%struct.genwqe_reg = type { i32, i32 }

@GENWQE_DBG_REGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GENWQE_FFDC_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"  0x%08x 0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @prev_regs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prev_regs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.genwqe_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.genwqe_reg*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.genwqe_dev*, %struct.genwqe_dev** %10, align 8
  store %struct.genwqe_dev* %11, %struct.genwqe_dev** %6, align 8
  %12 = load %struct.genwqe_dev*, %struct.genwqe_dev** %6, align 8
  %13 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* @GENWQE_DBG_REGS, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.genwqe_reg*, %struct.genwqe_reg** %17, align 8
  store %struct.genwqe_reg* %18, %struct.genwqe_reg** %8, align 8
  %19 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %20 = icmp eq %struct.genwqe_reg* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GENWQE_FFDC_REGS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %30, i64 %32
  %34 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %66

38:                                               ; preds = %29
  %39 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %39, i64 %41
  %43 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %63

48:                                               ; preds = %38
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %50, i64 %52
  %54 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %56, i64 %58
  %60 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %61)
  br label %63

63:                                               ; preds = %48, %47
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %25

66:                                               ; preds = %37, %25
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
