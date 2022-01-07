; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }
%struct.cx25821_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_free_buffer(%struct.cx25821_dev* %0, %struct.cx25821_buffer* %1) #0 {
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca %struct.cx25821_buffer*, align 8
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  store %struct.cx25821_buffer* %1, %struct.cx25821_buffer** %4, align 8
  %5 = call i32 (...) @in_interrupt()
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %18 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pci_free_consistent(i32 %19, i64 %23, i32 %27, i32 %31)
  %33 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %33, i32 0, i32 0
  %35 = call i32 @memset(%struct.TYPE_2__* %34, i32 0, i32 16)
  br label %36

36:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i64, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
