; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32*, %struct.gspca_dev }
%struct.gspca_dev = type { i32 }

@SQ930_CTRL_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32, i32)* @gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_set(%struct.sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sd*, %struct.sd** %4, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 1
  store %struct.gspca_dev* %9, %struct.gspca_dev** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 255
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.sd*, %struct.sd** %4, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %15
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %30 = load i32, i32* @SQ930_CTRL_GPIO, align 4
  %31 = or i32 256, %30
  %32 = load %struct.sd*, %struct.sd** %4, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, -1
  %38 = shl i32 %37, 8
  %39 = call i32 @reg_w(%struct.gspca_dev* %29, i32 %31, i32 %38)
  br label %40

40:                                               ; preds = %13, %3
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 8
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 8
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %49
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.sd*, %struct.sd** %4, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %56
  store i32 %62, i32* %60, align 4
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %64 = load i32, i32* @SQ930_CTRL_GPIO, align 4
  %65 = or i32 768, %64
  %66 = load %struct.sd*, %struct.sd** %4, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, -1
  %72 = shl i32 %71, 8
  %73 = call i32 @reg_w(%struct.gspca_dev* %63, i32 %65, i32 %72)
  br label %74

74:                                               ; preds = %47, %40
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
