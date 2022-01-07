; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-util.c_tw5864_indir_writeb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-util.c_tw5864_indir_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TW5864_IND_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"tw_indir_writel() retries exhausted before writing\0A\00", align 1
@TW5864_IND_DATA = common dso_local global i32 0, align 4
@TW5864_RW = common dso_local global i32 0, align 4
@TW5864_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tw5864_indir_writeb(%struct.tw5864_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tw5864_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tw5864_dev* %0, %struct.tw5864_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 30000, i32* %7, align 4
  br label %8

8:                                                ; preds = %20, %3
  %9 = load i32, i32* @TW5864_IND_CTL, align 4
  %10 = call i32 @tw_readl(i32 %9)
  %11 = call i32 @BIT(i32 31)
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i1 [ false, %8 ], [ %17, %14 ]
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %8

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %26 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* @TW5864_IND_DATA, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @tw_writel(i32 %31, i32 %32)
  %34 = load i32, i32* @TW5864_IND_CTL, align 4
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 2
  %37 = load i32, i32* @TW5864_RW, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @TW5864_ENABLE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @tw_writel(i32 %34, i32 %40)
  ret void
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
