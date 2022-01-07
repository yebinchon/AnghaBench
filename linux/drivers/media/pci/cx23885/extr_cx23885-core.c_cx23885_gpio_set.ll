; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@GP0_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: Setting GPIO on encoder ports\0A\00", align 1
@MC417_RWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: Unsupported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_gpio_set(%struct.cx23885_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 7
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @GP0_IO, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 7
  %12 = call i32 @cx_set(i32 %9, i32 %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 524280
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %19 = call i64 @encoder_on_portb(%struct.cx23885_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %23 = call i64 @encoder_on_portc(%struct.cx23885_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %17
  %26 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %27 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* @MC417_RWD, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 524280
  %34 = ashr i32 %33, 3
  %35 = call i32 @cx_set(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %13
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 16252928
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %42 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i64 @encoder_on_portb(%struct.cx23885_dev*) #1

declare dso_local i64 @encoder_on_portc(%struct.cx23885_dev*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
