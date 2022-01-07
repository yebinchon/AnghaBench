; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_find_inode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_find_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_inode = type { %struct.fpga_inode*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@fpga_first_inode = common dso_local global %struct.fpga_inode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpga_inode* (i8*)* @find_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpga_inode* @find_inode(i8* %0) #0 {
  %2 = alloca %struct.fpga_inode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fpga_inode*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.fpga_inode*, %struct.fpga_inode** @fpga_first_inode, align 8
  store %struct.fpga_inode* %5, %struct.fpga_inode** %4, align 8
  %6 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %7 = icmp eq %struct.fpga_inode* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  store %struct.fpga_inode* %9, %struct.fpga_inode** %2, align 8
  br label %30

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %24, %10
  %12 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %13 = icmp ne %struct.fpga_inode* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %16 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %19, %20
  br label %22

22:                                               ; preds = %14, %11
  %23 = phi i1 [ false, %11 ], [ %21, %14 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %26 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %25, i32 0, i32 0
  %27 = load %struct.fpga_inode*, %struct.fpga_inode** %26, align 8
  store %struct.fpga_inode* %27, %struct.fpga_inode** %4, align 8
  br label %11

28:                                               ; preds = %22
  %29 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  store %struct.fpga_inode* %29, %struct.fpga_inode** %2, align 8
  br label %30

30:                                               ; preds = %28, %8
  %31 = load %struct.fpga_inode*, %struct.fpga_inode** %2, align 8
  ret %struct.fpga_inode* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
