; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubiblock = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"released\00", align 1
@ubiblock_minor_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubiblock*)* @ubiblock_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubiblock_cleanup(%struct.ubiblock* %0) #0 {
  %2 = alloca %struct.ubiblock*, align 8
  store %struct.ubiblock* %0, %struct.ubiblock** %2, align 8
  %3 = load %struct.ubiblock*, %struct.ubiblock** %2, align 8
  %4 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i32 @del_gendisk(%struct.TYPE_4__* %5)
  %7 = load %struct.ubiblock*, %struct.ubiblock** %2, align 8
  %8 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @destroy_workqueue(i32 %9)
  %11 = load %struct.ubiblock*, %struct.ubiblock** %2, align 8
  %12 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @blk_cleanup_queue(i32 %13)
  %15 = load %struct.ubiblock*, %struct.ubiblock** %2, align 8
  %16 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %15, i32 0, i32 1
  %17 = call i32 @blk_mq_free_tag_set(i32* %16)
  %18 = load %struct.ubiblock*, %struct.ubiblock** %2, align 8
  %19 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @disk_to_dev(%struct.TYPE_4__* %20)
  %22 = call i32 @dev_info(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ubiblock*, %struct.ubiblock** %2, align 8
  %24 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @idr_remove(i32* @ubiblock_minor_idr, i32 %27)
  %29 = load %struct.ubiblock*, %struct.ubiblock** %2, align 8
  %30 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @put_disk(%struct.TYPE_4__* %31)
  ret void
}

declare dso_local i32 @del_gendisk(%struct.TYPE_4__*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @disk_to_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
