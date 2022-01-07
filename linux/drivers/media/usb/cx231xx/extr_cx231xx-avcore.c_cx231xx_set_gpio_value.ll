; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_gpio_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_gpio_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_set_gpio_value(%struct.cx231xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %80

15:                                               ; preds = %3
  %16 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %15
  %24 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %37 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %41 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %36, i32 %39, i32 %42)
  store i32 %43, i32* %8, align 4
  store i8* null, i8** %9, align 8
  br label %44

44:                                               ; preds = %23, %15
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %49 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %9, align 8
  br label %66

57:                                               ; preds = %44
  %58 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %59 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 1, %61
  %63 = or i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %57, %47
  %67 = load i8*, i8** %9, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %70 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %72 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %71, i32 %74, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %66, %12
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
