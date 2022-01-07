; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_all_banks_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_all_banks_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.seq_file = type { i32, i32 }

@ab8500_print_all_banks = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ab8500_all_banks_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_all_banks_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = load i32, i32* @ab8500_print_all_banks, align 4
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @single_open(%struct.file* %7, i32 %8, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.seq_file*
  store %struct.seq_file* %19, %struct.seq_file** %5, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %23 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %25 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @kmalloc(i32 %26, i32 %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %30 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %32 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %15
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = call i32 @single_release(%struct.inode* %36, %struct.file* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %15
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @single_open(%struct.file*, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @single_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
