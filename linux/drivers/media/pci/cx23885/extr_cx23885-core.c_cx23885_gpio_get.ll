; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@GP0_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: Reading GPIO moving on encoder ports\0A\00", align 1
@MC417_RWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: Unsupported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_gpio_get(%struct.cx23885_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 7
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @GP0_IO, align 4
  %11 = call i32 @cx_read(i32 %10)
  %12 = ashr i32 %11, 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = and i32 %14, 7
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 524280
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %22 = call i64 @encoder_on_portb(%struct.cx23885_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %26 = call i64 @encoder_on_portc(%struct.cx23885_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %20
  %29 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %30 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* @MC417_RWD, align 4
  %35 = call i32 @cx_read(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 524280
  %38 = ashr i32 %37, 3
  %39 = and i32 %35, %38
  %40 = shl i32 %39, 3
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %16
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 16252928
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %47 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %41
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %33, %9
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @cx_read(i32) #1

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
