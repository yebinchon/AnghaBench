; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_remove_inode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_remove_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_inode = type { %struct.fpga_inode* }
%struct.fpga_internal = type { i32 }

@fpga_first_inode = common dso_local global %struct.fpga_inode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpga_internal*)* @remove_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_inode(%struct.fpga_internal* %0) #0 {
  %2 = alloca %struct.fpga_internal*, align 8
  %3 = alloca %struct.fpga_inode*, align 8
  %4 = alloca %struct.fpga_inode*, align 8
  store %struct.fpga_internal* %0, %struct.fpga_internal** %2, align 8
  %5 = load %struct.fpga_inode*, %struct.fpga_inode** @fpga_first_inode, align 8
  store %struct.fpga_inode* %5, %struct.fpga_inode** %3, align 8
  %6 = load %struct.fpga_internal*, %struct.fpga_internal** %2, align 8
  %7 = getelementptr inbounds %struct.fpga_internal, %struct.fpga_internal* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.fpga_inode* @find_inode(i32 %8)
  store %struct.fpga_inode* %9, %struct.fpga_inode** %4, align 8
  %10 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %11 = icmp ne %struct.fpga_inode* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %14 = load %struct.fpga_inode*, %struct.fpga_inode** @fpga_first_inode, align 8
  %15 = icmp eq %struct.fpga_inode* %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %18 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %17, i32 0, i32 0
  %19 = load %struct.fpga_inode*, %struct.fpga_inode** %18, align 8
  store %struct.fpga_inode* %19, %struct.fpga_inode** @fpga_first_inode, align 8
  br label %48

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %27, %20
  %22 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %23 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %22, i32 0, i32 0
  %24 = load %struct.fpga_inode*, %struct.fpga_inode** %23, align 8
  %25 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %26 = icmp ne %struct.fpga_inode* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %29 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %28, i32 0, i32 0
  %30 = load %struct.fpga_inode*, %struct.fpga_inode** %29, align 8
  store %struct.fpga_inode* %30, %struct.fpga_inode** %3, align 8
  br label %21

31:                                               ; preds = %21
  %32 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %33 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %32, i32 0, i32 0
  %34 = load %struct.fpga_inode*, %struct.fpga_inode** %33, align 8
  %35 = icmp eq %struct.fpga_inode* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %38 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %37, i32 0, i32 0
  store %struct.fpga_inode* null, %struct.fpga_inode** %38, align 8
  br label %47

39:                                               ; preds = %31
  %40 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %41 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %40, i32 0, i32 0
  %42 = load %struct.fpga_inode*, %struct.fpga_inode** %41, align 8
  %43 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %42, i32 0, i32 0
  %44 = load %struct.fpga_inode*, %struct.fpga_inode** %43, align 8
  %45 = load %struct.fpga_inode*, %struct.fpga_inode** %3, align 8
  %46 = getelementptr inbounds %struct.fpga_inode, %struct.fpga_inode* %45, i32 0, i32 0
  store %struct.fpga_inode* %44, %struct.fpga_inode** %46, align 8
  br label %47

47:                                               ; preds = %39, %36
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.fpga_inode*, %struct.fpga_inode** %4, align 8
  %50 = call i32 @kfree(%struct.fpga_inode* %49)
  br label %51

51:                                               ; preds = %48, %1
  ret void
}

declare dso_local %struct.fpga_inode* @find_inode(i32) #1

declare dso_local i32 @kfree(%struct.fpga_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
