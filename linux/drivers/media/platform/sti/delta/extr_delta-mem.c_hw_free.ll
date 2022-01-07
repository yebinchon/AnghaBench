; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mem.c_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mem.c_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.delta_buf = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"%s     free %d bytes of HW memory @(virt=0x%p, phy=0x%pad): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_free(%struct.delta_ctx* %0, %struct.delta_buf* %1) #0 {
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_buf*, align 8
  %5 = alloca %struct.delta_dev*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %3, align 8
  store %struct.delta_buf* %1, %struct.delta_buf** %4, align 8
  %6 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %6, i32 0, i32 1
  %8 = load %struct.delta_dev*, %struct.delta_dev** %7, align 8
  store %struct.delta_dev* %8, %struct.delta_dev** %5, align 8
  %9 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %10 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.delta_buf*, %struct.delta_buf** %4, align 8
  %16 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.delta_buf*, %struct.delta_buf** %4, align 8
  %19 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.delta_buf*, %struct.delta_buf** %4, align 8
  %22 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %21, i32 0, i32 1
  %23 = load %struct.delta_buf*, %struct.delta_buf** %4, align 8
  %24 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32* %22, i32 %25)
  %27 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %28 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.delta_buf*, %struct.delta_buf** %4, align 8
  %31 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.delta_buf*, %struct.delta_buf** %4, align 8
  %34 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.delta_buf*, %struct.delta_buf** %4, align 8
  %37 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.delta_buf*, %struct.delta_buf** %4, align 8
  %40 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_free_attrs(i32 %29, i32 %32, i32 %35, i32 %38, i32 %41)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dma_free_attrs(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
