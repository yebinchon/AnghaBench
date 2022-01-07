; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_init_RTV24.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_init_RTV24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"%d: Adlink RTV-24 initialisation in progress ...\0A\00", align 1
@BT848_GPIO_OUT_EN = common dso_local global i32 0, align 4
@BT848_GPIO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"%d: Adlink RTV-24 initialisation(1) ERROR_CPLD_Check_Failed (read %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"%d: Adlink RTV-24 initialisation(2) ERROR_CPLD_Check_Failed (read %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%d: Adlink RTV-24 initialisation complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @init_RTV24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_RTV24(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 14, i64* %4, align 8
  %5 = load %struct.bttv*, %struct.bttv** %2, align 8
  %6 = getelementptr inbounds %struct.bttv, %struct.bttv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @BT848_GPIO_OUT_EN, align 4
  %11 = call i32 @btwrite(i64 12844799, i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = add nsw i64 0, %12
  %14 = load i32, i32* @BT848_GPIO_DATA, align 4
  %15 = call i32 @btwrite(i64 %13, i32 %14)
  %16 = call i32 @msleep(i32 1)
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 16, %17
  %19 = load i32, i32* @BT848_GPIO_DATA, align 4
  %20 = call i32 @btwrite(i64 %18, i32 %19)
  %21 = call i32 @msleep(i32 10)
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 0, %22
  %24 = load i32, i32* @BT848_GPIO_DATA, align 4
  %25 = call i32 @btwrite(i64 %23, i32 %24)
  %26 = load i32, i32* @BT848_GPIO_DATA, align 4
  %27 = call i32 @btread(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 18
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 19
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %1
  %38 = load %struct.bttv*, %struct.bttv** %2, align 8
  %39 = getelementptr inbounds %struct.bttv, %struct.bttv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 17408, %45
  %47 = load i32, i32* @BT848_GPIO_DATA, align 4
  %48 = call i32 @btwrite(i64 %46, i32 %47)
  %49 = call i32 @msleep(i32 10)
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 17424, %50
  %52 = load i32, i32* @BT848_GPIO_DATA, align 4
  %53 = call i32 @btwrite(i64 %51, i32 %52)
  %54 = call i32 @msleep(i32 1)
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* @BT848_GPIO_DATA, align 4
  %57 = call i32 @btwrite(i64 %55, i32 %56)
  %58 = call i32 @msleep(i32 1)
  %59 = load i32, i32* @BT848_GPIO_DATA, align 4
  %60 = call i32 @btread(i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = ashr i32 %61, 18
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %3, align 4
  %67 = ashr i32 %66, 19
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65, %44
  %71 = load %struct.bttv*, %struct.bttv** %2, align 8
  %72 = getelementptr inbounds %struct.bttv, %struct.bttv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  br label %83

77:                                               ; preds = %65
  %78 = load %struct.bttv*, %struct.bttv** %2, align 8
  %79 = getelementptr inbounds %struct.bttv, %struct.bttv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %70
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @btwrite(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @btread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
