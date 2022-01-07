; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_mux_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_mux_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.cx231xx* }
%struct.TYPE_3__ = type { i32 }

@cx231xx_i2c_mux_select = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_i2c_mux_create(%struct.cx231xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  %4 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %5 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %10 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @cx231xx_i2c_mux_select, align 4
  %13 = call %struct.TYPE_4__* @i2c_mux_alloc(i32* %8, i32 %11, i32 2, i32 0, i32 0, i32 %12, i32* null)
  %14 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %25 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %26 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.cx231xx* %24, %struct.cx231xx** %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_4__* @i2c_mux_alloc(i32*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
