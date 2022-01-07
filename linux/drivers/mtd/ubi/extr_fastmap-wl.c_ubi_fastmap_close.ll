; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_fastmap_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_fastmap_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.TYPE_2__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_device*)* @ubi_fastmap_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubi_fastmap_close(%struct.ubi_device* %0) #0 {
  %2 = alloca %struct.ubi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %2, align 8
  %4 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %5 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %6 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %5, i32 0, i32 2
  %7 = call i32 @return_unused_pool_pebs(%struct.ubi_device* %4, i32* %6)
  %8 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %9 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 1
  %11 = call i32 @return_unused_pool_pebs(%struct.ubi_device* %8, i32* %10)
  %12 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %13 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %20 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @kfree(%struct.TYPE_2__* %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %17

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @kfree(%struct.TYPE_2__* %43)
  ret void
}

declare dso_local i32 @return_unused_pool_pebs(%struct.ubi_device*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
