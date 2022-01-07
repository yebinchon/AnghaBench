; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_set_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"setting GPIO%d to static %d\0A\00", align 1
@SAA7134_VIDEO_PORT_CTRL6 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE0 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"setting GPIO%d to tristate\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_set_gpio(%struct.saa7134_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 1, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %46 [
    i32 0, label %12
    i32 1, label %12
    i32 3, label %39
  ]

12:                                               ; preds = %3, %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i8*, i32, ...) @core_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 12582912
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL6, align 4
  %21 = call i32 @saa_andorb(i32 %20, i32 15, i32 0)
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %8, align 4
  br label %28

27:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %30 = ashr i32 %29, 2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @saa_andorl(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %35 = ashr i32 %34, 2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @saa_andorl(i32 %35, i32 %36, i32 %37)
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, i32, ...) @core_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %43 = ashr i32 %42, 2
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @saa_andorl(i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %3, %39, %28
  ret void
}

declare dso_local i32 @core_dbg(i8*, i32, ...) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @saa_andorl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
