; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdblock.c_mtdblock_add_mtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdblock.c_mtdblock_add_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_ops = type { i32 }
%struct.mtd_info = type { i32, i32, i32 }
%struct.mtdblk_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.mtd_blktrans_ops*, i32, %struct.mtd_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_blktrans_ops*, %struct.mtd_info*)* @mtdblock_add_mtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtdblock_add_mtd(%struct.mtd_blktrans_ops* %0, %struct.mtd_info* %1) #0 {
  %3 = alloca %struct.mtd_blktrans_ops*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.mtdblk_dev*, align 8
  store %struct.mtd_blktrans_ops* %0, %struct.mtd_blktrans_ops** %3, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mtdblk_dev* @kzalloc(i32 32, i32 %6)
  store %struct.mtdblk_dev* %7, %struct.mtdblk_dev** %5, align 8
  %8 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %5, align 8
  %9 = icmp ne %struct.mtdblk_dev* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store %struct.mtd_info* %12, %struct.mtd_info** %15, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %5, align 8
  %20 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 9
  %26 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %5, align 8
  %27 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %3, align 8
  %30 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %5, align 8
  %31 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store %struct.mtd_blktrans_ops* %29, %struct.mtd_blktrans_ops** %32, align 8
  %33 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MTD_WRITEABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %11
  %40 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %11
  %44 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %5, align 8
  %45 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %44, i32 0, i32 0
  %46 = call i64 @add_mtd_blktrans_dev(%struct.TYPE_2__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %5, align 8
  %50 = call i32 @kfree(%struct.mtdblk_dev* %49)
  br label %51

51:                                               ; preds = %10, %48, %43
  ret void
}

declare dso_local %struct.mtdblk_dev* @kzalloc(i32, i32) #1

declare dso_local i64 @add_mtd_blktrans_dev(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mtdblk_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
