; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_init_PCI8604PW.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_init_PCI8604PW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"This is not a PCI-8604PW\0A\00", align 1
@BT848_GPIO_OUT_EN = common dso_local global i32 0, align 4
@BT848_GPIO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PCI-8604PW in state %i, toggling pin\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PCI-8604PW unlocked\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"PCI-8604PW locked until reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"PCI-8604PW in unknown state %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"PCI-8604PW invalid transition %i -> %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @init_PCI8604PW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_PCI8604PW(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %4 = load %struct.bttv*, %struct.bttv** %2, align 8
  %5 = getelementptr inbounds %struct.bttv, %struct.bttv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @PCI_SLOT(i32 %9)
  %11 = and i32 %10, -4
  %12 = icmp ne i32 %11, 12
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %69

15:                                               ; preds = %1
  %16 = load %struct.bttv*, %struct.bttv** %2, align 8
  %17 = getelementptr inbounds %struct.bttv, %struct.bttv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PCI_SLOT(i32 %21)
  %23 = icmp ne i32 %22, 13
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %69

25:                                               ; preds = %15
  %26 = load i32, i32* @BT848_GPIO_OUT_EN, align 4
  %27 = call i32 @btwrite(i32 524290, i32 %26)
  %28 = load i32, i32* @BT848_GPIO_DATA, align 4
  %29 = call i32 @btread(i32 %28)
  %30 = ashr i32 %29, 21
  %31 = and i32 %30, 7
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %66, %25
  %33 = load i32, i32* %3, align 4
  switch i32 %33, label %47 [
    i32 1, label %34
    i32 5, label %34
    i32 6, label %34
    i32 4, label %34
    i32 7, label %43
    i32 0, label %45
  ]

34:                                               ; preds = %32, %32, %32, %32
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @BT848_GPIO_DATA, align 4
  %38 = call i32 @btwrite(i32 524288, i32 %37)
  %39 = call i32 @msleep(i32 1)
  %40 = load i32, i32* @BT848_GPIO_DATA, align 4
  %41 = call i32 @btwrite(i32 0, i32 %40)
  %42 = call i32 @msleep(i32 1)
  br label %50

43:                                               ; preds = %32
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %69

45:                                               ; preds = %32
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %69

47:                                               ; preds = %32
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  br label %69

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = shl i32 %51, 4
  %53 = load i32, i32* @BT848_GPIO_DATA, align 4
  %54 = call i32 @btread(i32 %53)
  %55 = ashr i32 %54, 21
  %56 = and i32 %55, 7
  %57 = or i32 %52, %56
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  switch i32 %58, label %60 [
    i32 21, label %59
    i32 86, label %59
    i32 100, label %59
    i32 71, label %59
  ]

59:                                               ; preds = %50, %50, %50, %50
  br label %66

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = ashr i32 %61, 4
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 7
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %62, i32 %64)
  br label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, 7
  store i32 %68, i32* %3, align 4
  br label %32

69:                                               ; preds = %60, %47, %45, %43, %24, %13
  ret void
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
