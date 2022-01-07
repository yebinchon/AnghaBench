; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubiblock* }
%struct.ubiblock = type { i64, i32, i32*, i32, i32, i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@UBI_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to open ubi volume %d_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @ubiblock_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubiblock_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubiblock*, align 8
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ubiblock*, %struct.ubiblock** %11, align 8
  store %struct.ubiblock* %12, %struct.ubiblock** %6, align 8
  %13 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %14 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %17 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %64

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @FMODE_WRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EROFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %72

29:                                               ; preds = %21
  %30 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %31 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %34 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @UBI_READONLY, align 4
  %37 = call i32* @ubi_open_volume(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %39 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %41 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %29
  %46 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %47 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @disk_to_dev(i32 %48)
  %50 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %51 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %54 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %58 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @PTR_ERR(i32* %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %62 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  br label %72

63:                                               ; preds = %29
  br label %64

64:                                               ; preds = %63, %20
  %65 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %66 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %70 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  store i32 0, i32* %3, align 4
  br label %77

72:                                               ; preds = %45, %26
  %73 = load %struct.ubiblock*, %struct.ubiblock** %6, align 8
  %74 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %64
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @ubi_open_volume(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @disk_to_dev(i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
