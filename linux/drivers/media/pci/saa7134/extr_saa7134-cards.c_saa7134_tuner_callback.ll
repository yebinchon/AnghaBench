; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_saa7134_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_saa7134_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"saa7134: Error - device struct undefined.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_tuner_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa7134_dev*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.saa7134_dev*
  store %struct.saa7134_dev* %12, %struct.saa7134_dev** %10, align 8
  %13 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  %14 = icmp ne %struct.saa7134_dev* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %4
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  %17 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %34 [
    i32 130, label %19
    i32 129, label %24
    i32 128, label %29
  ]

19:                                               ; preds = %15
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @saa7134_tda8290_callback(%struct.saa7134_dev* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %42

24:                                               ; preds = %15
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @saa7134_xc2028_callback(%struct.saa7134_dev* %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %42

29:                                               ; preds = %15
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @saa7134_xc5000_callback(%struct.saa7134_dev* %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %42

34:                                               ; preds = %15
  br label %39

35:                                               ; preds = %4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %35, %29, %24, %19
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @saa7134_tda8290_callback(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @saa7134_xc2028_callback(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @saa7134_xc5000_callback(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
