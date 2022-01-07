; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/extr_core.c_nanddev_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.nand_pos = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"attempt to erase a bad/reserved block @%llx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanddev_erase(%struct.nand_device* %0, %struct.nand_pos* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_device*, align 8
  %5 = alloca %struct.nand_pos*, align 8
  store %struct.nand_device* %0, %struct.nand_device** %4, align 8
  store %struct.nand_pos* %1, %struct.nand_pos** %5, align 8
  %6 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %7 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %8 = call i64 @nanddev_isbad(%struct.nand_device* %6, %struct.nand_pos* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %12 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %13 = call i64 @nanddev_isreserved(%struct.nand_device* %11, %struct.nand_pos* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10, %2
  %16 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %17 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %18 = call i32 @nanddev_pos_to_offs(%struct.nand_device* %16, %struct.nand_pos* %17)
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %10
  %23 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %24 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.nand_device*, %struct.nand_pos*)**
  %28 = load i32 (%struct.nand_device*, %struct.nand_pos*)*, i32 (%struct.nand_device*, %struct.nand_pos*)** %27, align 8
  %29 = load %struct.nand_device*, %struct.nand_device** %4, align 8
  %30 = load %struct.nand_pos*, %struct.nand_pos** %5, align 8
  %31 = call i32 %28(%struct.nand_device* %29, %struct.nand_pos* %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %22, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @nanddev_isbad(%struct.nand_device*, %struct.nand_pos*) #1

declare dso_local i64 @nanddev_isreserved(%struct.nand_device*, %struct.nand_pos*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @nanddev_pos_to_offs(%struct.nand_device*, %struct.nand_pos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
