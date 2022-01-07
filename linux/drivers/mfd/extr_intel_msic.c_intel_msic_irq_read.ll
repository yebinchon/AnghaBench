; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_msic.c_intel_msic_irq_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_msic.c_intel_msic_irq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_msic = type { i16 }

@INTEL_MSIC_IRQLVL1 = common dso_local global i16 0, align 2
@INTEL_MSIC_RESETIRQ2 = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_msic_irq_read(%struct.intel_msic* %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_msic*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  store %struct.intel_msic* %0, %struct.intel_msic** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  %8 = load i16, i16* %6, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* @INTEL_MSIC_IRQLVL1, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i16, i16* %6, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @INTEL_MSIC_RESETIRQ2, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sgt i32 %15, %17
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ true, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %19
  %28 = load %struct.intel_msic*, %struct.intel_msic** %5, align 8
  %29 = getelementptr inbounds %struct.intel_msic, %struct.intel_msic* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @INTEL_MSIC_IRQLVL1, align 2
  %35 = zext i16 %34 to i32
  %36 = sub nsw i32 %33, %35
  %37 = add nsw i32 %31, %36
  %38 = trunc i32 %37 to i16
  %39 = call i32 @readb(i16 zeroext %38)
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %27, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @readb(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
