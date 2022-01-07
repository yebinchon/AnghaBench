; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_ffdc_buffs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_ffdc_buffs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GENWQE_DBG_UNITS = common dso_local global i32 0, align 4
@GENWQE_FFDC_REGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*)* @genwqe_ffdc_buffs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_ffdc_buffs_alloc(%struct.genwqe_dev* %0) #0 {
  %2 = alloca %struct.genwqe_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @GENWQE_DBG_UNITS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %44

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %22 [
    i32 130, label %11
    i32 129, label %14
    i32 128, label %17
    i32 131, label %20
  ]

11:                                               ; preds = %9
  %12 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %13 = call i32 @genwqe_ffdc_buff_size(%struct.genwqe_dev* %12, i32 0)
  store i32 %13, i32* %4, align 4
  br label %22

14:                                               ; preds = %9
  %15 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %16 = call i32 @genwqe_ffdc_buff_size(%struct.genwqe_dev* %15, i32 1)
  store i32 %16, i32* %4, align 4
  br label %22

17:                                               ; preds = %9
  %18 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %19 = call i32 @genwqe_ffdc_buff_size(%struct.genwqe_dev* %18, i32 2)
  store i32 %19, i32* %4, align 4
  br label %22

20:                                               ; preds = %9
  %21 = load i32, i32* @GENWQE_FFDC_REGS, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %9, %20, %17, %14, %11
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %25 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @kmalloc_array(i32 %31, i32 4, i32 %32)
  %34 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %35 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %33, i32* %40, align 4
  br label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %5

44:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @genwqe_ffdc_buff_size(%struct.genwqe_dev*, i32) #1

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
