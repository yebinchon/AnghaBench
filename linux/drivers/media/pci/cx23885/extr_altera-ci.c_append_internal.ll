; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_append_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_append_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_inode = type { %struct.fpga_inode*, %struct.fpga_internal* }
%struct.fpga_internal = type { i32 }

@fpga_first_inode = common dso_local global %struct.fpga_inode* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpga_inode* (%struct.fpga_internal*)* @append_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpga_inode* @append_internal(%struct.fpga_internal* %0) #0 {
  %2 = alloca %struct.fpga_internal*, align 8
  %3 = alloca %struct.fpga_inode*, align 8
  store %struct.fpga_internal* %0, %struct.fpga_internal** %2, align 8
  %4 = load %struct.fpga_inode*, %struct.fpga_inode** @fpga_first_inode, align 8
  store %struct.fpga_inode* %4, %struct.fpga_inode** %3, align 8
  %5 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %6 = icmp eq %struct.fpga_inode* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kmalloc(i32 16, i32 %8)
  %10 = bitcast i8* %9 to %struct.fpga_inode*
  store %struct.fpga_inode* %10, %struct.fpga_inode** %3, align 8
  %11 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  store %struct.fpga_inode* %11, %struct.fpga_inode** @fpga_first_inode, align 8
  br label %38

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %18, %12
  %14 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %15 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %14, i32 0, i32 0
  %16 = load %struct.fpga_inode*, %struct.fpga_inode** %15, align 8
  %17 = icmp ne %struct.fpga_inode* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %20 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %19, i32 0, i32 0
  %21 = load %struct.fpga_inode*, %struct.fpga_inode** %20, align 8
  store %struct.fpga_inode* %21, %struct.fpga_inode** %3, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i32 16, i32 %23)
  %25 = bitcast i8* %24 to %struct.fpga_inode*
  %26 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %27 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %26, i32 0, i32 0
  store %struct.fpga_inode* %25, %struct.fpga_inode** %27, align 8
  %28 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %29 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %28, i32 0, i32 0
  %30 = load %struct.fpga_inode*, %struct.fpga_inode** %29, align 8
  %31 = icmp ne %struct.fpga_inode* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %34 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %33, i32 0, i32 0
  %35 = load %struct.fpga_inode*, %struct.fpga_inode** %34, align 8
  store %struct.fpga_inode* %35, %struct.fpga_inode** %3, align 8
  br label %37

36:                                               ; preds = %22
  store %struct.fpga_inode* null, %struct.fpga_inode** %3, align 8
  br label %37

37:                                               ; preds = %36, %32
  br label %38

38:                                               ; preds = %37, %7
  %39 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %40 = icmp ne %struct.fpga_inode* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.fpga_internal*, %struct.fpga_internal** %2, align 8
  %43 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %44 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %43, i32 0, i32 1
  store %struct.fpga_internal* %42, %struct.fpga_internal** %44, align 8
  %45 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %46 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %45, i32 0, i32 0
  store %struct.fpga_inode* null, %struct.fpga_inode** %46, align 8
  br label %47

47:                                               ; preds = %41, %38
  %48 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  ret %struct.fpga_inode* %48
}

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
