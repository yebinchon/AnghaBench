; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-util.c_tw5864_indir_readb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-util.c_tw5864_indir_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TW5864_IND_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"tw_indir_readl() retries exhausted before reading\0A\00", align 1
@TW5864_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"tw_indir_readl() retries exhausted at reading\0A\00", align 1
@TW5864_IND_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw5864_indir_readb(%struct.tw5864_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.tw5864_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tw5864_dev* %0, %struct.tw5864_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 30000, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* @TW5864_IND_CTL, align 4
  %8 = call i32 @tw_readl(i32 %7)
  %9 = call i32 @BIT(i32 31)
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i1 [ false, %6 ], [ %15, %12 ]
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %6

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %24 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* @TW5864_IND_CTL, align 4
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 %30, 2
  %32 = load i32, i32* @TW5864_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @tw_writel(i32 %29, i32 %33)
  store i32 30000, i32* %5, align 4
  br label %35

35:                                               ; preds = %47, %28
  %36 = load i32, i32* @TW5864_IND_CTL, align 4
  %37 = call i32 @tw_readl(i32 %36)
  %38 = call i32 @BIT(i32 31)
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i1 [ false, %35 ], [ %44, %41 ]
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %35

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %53 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* @TW5864_IND_DATA, align 4
  %59 = call i32 @tw_readl(i32 %58)
  ret i32 %59
}

declare dso_local i32 @tw_readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
