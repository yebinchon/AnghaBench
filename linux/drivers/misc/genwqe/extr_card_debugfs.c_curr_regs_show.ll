; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_curr_regs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_curr_regs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.genwqe_dev* }
%struct.genwqe_dev = type { i32 }
%struct.genwqe_reg = type { i32, i32 }

@GENWQE_FFDC_REGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"  0x%08x 0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @curr_regs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curr_regs_show(%struct.seq_file* %0, i8* %1) #0 {
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
  %12 = load i32, i32* @GENWQE_FFDC_REGS, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.genwqe_reg* @kcalloc(i32 %12, i32 8, i32 %13)
  store %struct.genwqe_reg* %14, %struct.genwqe_reg** %8, align 8
  %15 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %16 = icmp eq %struct.genwqe_reg* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.genwqe_dev*, %struct.genwqe_dev** %6, align 8
  %22 = call i32 @genwqe_stop_traps(%struct.genwqe_dev* %21)
  %23 = load %struct.genwqe_dev*, %struct.genwqe_dev** %6, align 8
  %24 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %25 = load i32, i32* @GENWQE_FFDC_REGS, align 4
  %26 = call i32 @genwqe_read_ffdc_regs(%struct.genwqe_dev* %23, %struct.genwqe_reg* %24, i32 %25, i32 1)
  %27 = load %struct.genwqe_dev*, %struct.genwqe_dev** %6, align 8
  %28 = call i32 @genwqe_start_traps(%struct.genwqe_dev* %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %67, %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GENWQE_FFDC_REGS, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %34, i64 %36
  %38 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %70

42:                                               ; preds = %33
  %43 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %43, i64 %45
  %47 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %67

52:                                               ; preds = %42
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %54, i64 %56
  %58 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.genwqe_reg*, %struct.genwqe_reg** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %60, i64 %62
  %64 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %65)
  br label %67

67:                                               ; preds = %52, %51
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %29

70:                                               ; preds = %41, %29
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.genwqe_reg* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @genwqe_stop_traps(%struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_read_ffdc_regs(%struct.genwqe_dev*, %struct.genwqe_reg*, i32, i32) #1

declare dso_local i32 @genwqe_start_traps(%struct.genwqe_dev*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
