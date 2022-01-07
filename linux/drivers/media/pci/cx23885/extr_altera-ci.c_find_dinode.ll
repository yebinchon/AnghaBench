; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_find_dinode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_find_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_inode = type { %struct.fpga_inode*, %struct.fpga_internal* }
%struct.fpga_internal = type { i32 }

@fpga_first_inode = common dso_local global %struct.fpga_inode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpga_inode* (i8*)* @find_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpga_inode* @find_dinode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fpga_inode*, align 8
  %4 = alloca %struct.fpga_internal*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct.fpga_inode*, %struct.fpga_inode** @fpga_first_inode, align 8
  store %struct.fpga_inode* %5, %struct.fpga_inode** %3, align 8
  br label %6

6:                                                ; preds = %30, %1
  %7 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %8 = icmp ne %struct.fpga_inode* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %11 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %10, i32 0, i32 1
  %12 = load %struct.fpga_internal*, %struct.fpga_internal** %11, align 8
  %13 = icmp ne %struct.fpga_internal* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %16 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %15, i32 0, i32 1
  %17 = load %struct.fpga_internal*, %struct.fpga_internal** %16, align 8
  store %struct.fpga_internal* %17, %struct.fpga_internal** %4, align 8
  %18 = load %struct.fpga_internal*, %struct.fpga_internal** %4, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @check_filter(%struct.fpga_internal* %18, i8* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.fpga_internal*, %struct.fpga_internal** %4, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @check_filter(%struct.fpga_internal* %24, i8* %25, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %34

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %9
  %31 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %32 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %31, i32 0, i32 0
  %33 = load %struct.fpga_inode*, %struct.fpga_inode** %32, align 8
  store %struct.fpga_inode* %33, %struct.fpga_inode** %3, align 8
  br label %6

34:                                               ; preds = %28, %22, %6
  %35 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  ret %struct.fpga_inode* %35
}

declare dso_local i64 @check_filter(%struct.fpga_internal*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
