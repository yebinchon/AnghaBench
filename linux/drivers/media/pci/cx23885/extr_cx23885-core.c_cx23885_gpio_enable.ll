; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_gpio_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_gpio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@GP0_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: Enabling GPIO on encoder ports\0A\00", align 1
@MC417_OEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_gpio_enable(%struct.cx23885_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* @GP0_IO, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 7
  %17 = shl i32 %16, 16
  %18 = call i32 @cx_set(i32 %14, i32 %17)
  br label %33

19:                                               ; preds = %10, %3
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @GP0_IO, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 7
  %30 = shl i32 %29, 16
  %31 = call i32 @cx_clear(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %23, %19
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 524280
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %39 = call i64 @encoder_on_portb(%struct.cx23885_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %43 = call i64 @encoder_on_portc(%struct.cx23885_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %37
  %46 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %47 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %41
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 524280
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @MC417_OEN, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 524280
  %62 = ashr i32 %61, 3
  %63 = call i32 @cx_clear(i32 %59, i32 %62)
  br label %78

64:                                               ; preds = %55, %51
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 524280
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @MC417_OEN, align 4
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 524280
  %75 = ashr i32 %74, 3
  %76 = call i32 @cx_set(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %68, %64
  br label %78

78:                                               ; preds = %77, %58
  ret void
}

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i64 @encoder_on_portb(%struct.cx23885_dev*) #1

declare dso_local i64 @encoder_on_portc(%struct.cx23885_dev*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
