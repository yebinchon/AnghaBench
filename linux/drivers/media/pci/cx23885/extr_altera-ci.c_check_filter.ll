; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_check_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_altera-ci.c_check_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_internal = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpga_internal* (%struct.fpga_internal*, i8*, i32)* @check_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpga_internal* @check_filter(%struct.fpga_internal* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.fpga_internal*, align 8
  %5 = alloca %struct.fpga_internal*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.fpga_internal* %0, %struct.fpga_internal** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.fpga_internal*, %struct.fpga_internal** %5, align 8
  %9 = icmp eq %struct.fpga_internal* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store %struct.fpga_internal* null, %struct.fpga_internal** %4, align 8
  br label %36

11:                                               ; preds = %3
  %12 = load %struct.fpga_internal*, %struct.fpga_internal** %5, align 8
  %13 = getelementptr inbounds %struct.fpga_internal, %struct.fpga_internal* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store %struct.fpga_internal* null, %struct.fpga_internal** %4, align 8
  br label %36

21:                                               ; preds = %11
  %22 = load %struct.fpga_internal*, %struct.fpga_internal** %5, align 8
  %23 = getelementptr inbounds %struct.fpga_internal, %struct.fpga_internal* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load %struct.fpga_internal*, %struct.fpga_internal** %5, align 8
  store %struct.fpga_internal* %34, %struct.fpga_internal** %4, align 8
  br label %36

35:                                               ; preds = %21
  store %struct.fpga_internal* null, %struct.fpga_internal** %4, align 8
  br label %36

36:                                               ; preds = %35, %33, %20, %10
  %37 = load %struct.fpga_internal*, %struct.fpga_internal** %4, align 8
  ret %struct.fpga_internal* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
