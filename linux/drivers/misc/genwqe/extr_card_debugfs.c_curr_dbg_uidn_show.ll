; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_curr_dbg_uidn_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_curr_dbg_uidn_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.genwqe_dev* }
%struct.genwqe_dev = type { i32 }
%struct.genwqe_reg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*, i32)* @curr_dbg_uidn_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curr_dbg_uidn_show(%struct.seq_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.genwqe_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.genwqe_reg*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.genwqe_dev*, %struct.genwqe_dev** %12, align 8
  store %struct.genwqe_dev* %13, %struct.genwqe_dev** %8, align 8
  %14 = load %struct.genwqe_dev*, %struct.genwqe_dev** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @genwqe_ffdc_buff_size(%struct.genwqe_dev* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %51

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %51

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.genwqe_reg* @kcalloc(i32 %27, i32 4, i32 %28)
  store %struct.genwqe_reg* %29, %struct.genwqe_reg** %10, align 8
  %30 = load %struct.genwqe_reg*, %struct.genwqe_reg** %10, align 8
  %31 = icmp eq %struct.genwqe_reg* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %51

35:                                               ; preds = %26
  %36 = load %struct.genwqe_dev*, %struct.genwqe_dev** %8, align 8
  %37 = call i32 @genwqe_stop_traps(%struct.genwqe_dev* %36)
  %38 = load %struct.genwqe_dev*, %struct.genwqe_dev** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.genwqe_reg*, %struct.genwqe_reg** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @genwqe_ffdc_buff_read(%struct.genwqe_dev* %38, i32 %39, %struct.genwqe_reg* %40, i32 %41)
  %43 = load %struct.genwqe_dev*, %struct.genwqe_dev** %8, align 8
  %44 = call i32 @genwqe_start_traps(%struct.genwqe_dev* %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %46 = load %struct.genwqe_reg*, %struct.genwqe_reg** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dbg_uidn_show(%struct.seq_file* %45, %struct.genwqe_reg* %46, i32 %47)
  %49 = load %struct.genwqe_reg*, %struct.genwqe_reg** %10, align 8
  %50 = call i32 @kfree(%struct.genwqe_reg* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %35, %32, %25, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @genwqe_ffdc_buff_size(%struct.genwqe_dev*, i32) #1

declare dso_local %struct.genwqe_reg* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @genwqe_stop_traps(%struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_ffdc_buff_read(%struct.genwqe_dev*, i32, %struct.genwqe_reg*, i32) #1

declare dso_local i32 @genwqe_start_traps(%struct.genwqe_dev*) #1

declare dso_local i32 @dbg_uidn_show(%struct.seq_file*, %struct.genwqe_reg*, i32) #1

declare dso_local i32 @kfree(%struct.genwqe_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
