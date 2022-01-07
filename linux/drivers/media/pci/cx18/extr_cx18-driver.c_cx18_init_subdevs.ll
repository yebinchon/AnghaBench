; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_subdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_subdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @cx18_init_subdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_init_subdevs(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %6 = load %struct.cx18*, %struct.cx18** %2, align 8
  %7 = getelementptr inbounds %struct.cx18, %struct.cx18* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %11

11:                                               ; preds = %60, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %60

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %47 [
    i32 131, label %22
    i32 128, label %22
    i32 132, label %28
    i32 129, label %34
    i32 130, label %35
  ]

22:                                               ; preds = %20, %20
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.cx18*, %struct.cx18** %2, align 8
  %25 = getelementptr inbounds %struct.cx18, %struct.cx18* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %59

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.cx18*, %struct.cx18** %2, align 8
  %31 = getelementptr inbounds %struct.cx18, %struct.cx18* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %59

34:                                               ; preds = %20
  br label %59

35:                                               ; preds = %20
  %36 = load %struct.cx18*, %struct.cx18** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @cx18_gpio_register(%struct.cx18* %36, i32 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.cx18*, %struct.cx18** %2, align 8
  %43 = getelementptr inbounds %struct.cx18, %struct.cx18* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %35
  br label %59

47:                                               ; preds = %20
  %48 = load %struct.cx18*, %struct.cx18** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @cx18_i2c_register(%struct.cx18* %48, i32 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.cx18*, %struct.cx18** %2, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %47
  br label %59

59:                                               ; preds = %58, %46, %34, %28, %22
  br label %60

60:                                               ; preds = %59, %19
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %11

65:                                               ; preds = %11
  %66 = load %struct.cx18*, %struct.cx18** %2, align 8
  %67 = getelementptr inbounds %struct.cx18, %struct.cx18* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 132
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.cx18*, %struct.cx18** %2, align 8
  %73 = call i8* @cx18_find_hw(%struct.cx18* %72, i32 132)
  %74 = load %struct.cx18*, %struct.cx18** %2, align 8
  %75 = getelementptr inbounds %struct.cx18, %struct.cx18* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.cx18*, %struct.cx18** %2, align 8
  %78 = getelementptr inbounds %struct.cx18, %struct.cx18* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load %struct.cx18*, %struct.cx18** %2, align 8
  %85 = load %struct.cx18*, %struct.cx18** %2, align 8
  %86 = getelementptr inbounds %struct.cx18, %struct.cx18* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cx18_find_hw(%struct.cx18* %84, i32 %89)
  %91 = load %struct.cx18*, %struct.cx18** %2, align 8
  %92 = getelementptr inbounds %struct.cx18, %struct.cx18* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %83, %76
  ret void
}

declare dso_local i32 @cx18_gpio_register(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_i2c_register(%struct.cx18*, i32) #1

declare dso_local i8* @cx18_find_hw(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
