; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_g_jpeg_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_g_jpeg_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32* }

@SOLO_DEV_6010 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_g_jpeg_qp(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %8 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SOLO_DEV_6010, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 2, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ugt i32 %14, 31
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 2, i32* %3, align 4
  br label %40

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %21, 16
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = sub i32 %25, 16
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i32, i32* %5, align 4
  %29 = mul i32 %28, 2
  store i32 %29, i32* %5, align 4
  %30 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = lshr i32 %36, %37
  %39 = and i32 %38, 3
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %27, %19, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
