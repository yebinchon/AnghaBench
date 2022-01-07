; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdsuper.c_mtd_set_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdsuper.c_mtd_set_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fs_context = type { %struct.TYPE_2__* }

@MTD_BLOCK_MAJOR = common dso_local global i32 0, align 4
@mtd_bdi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @mtd_set_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_set_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.fs_context*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.fs_context* %1, %struct.fs_context** %4, align 8
  %5 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %6 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 1
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %9, align 8
  %10 = load i32, i32* @MTD_BLOCK_MAJOR, align 4
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @MKDEV(i32 %10, i32 %15)
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @mtd_bdi, align 4
  %20 = call i32 @bdi_get(i32 %19)
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  ret i32 0
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @bdi_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
