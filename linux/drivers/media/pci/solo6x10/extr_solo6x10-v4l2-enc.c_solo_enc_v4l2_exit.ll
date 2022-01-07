; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_v4l2_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_v4l2_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32, i64, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solo_enc_v4l2_exit(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %4 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %5 = call i32 @solo_ring_stop(%struct.solo_dev* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %9 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %14 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @solo_enc_free(i32 %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %6

24:                                               ; preds = %6
  %25 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %26 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %34 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %37 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %40 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_free_consistent(i32 %32, i32 %35, i64 %38, i32 %41)
  br label %43

43:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @solo_ring_stop(%struct.solo_dev*) #1

declare dso_local i32 @solo_enc_free(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
