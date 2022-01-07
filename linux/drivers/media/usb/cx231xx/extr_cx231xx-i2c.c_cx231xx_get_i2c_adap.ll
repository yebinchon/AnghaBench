; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_get_i2c_adap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_get_i2c_adap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.cx231xx = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.i2c_adapter** }
%struct.TYPE_3__ = type { %struct.i2c_adapter }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_adapter* @cx231xx_get_i2c_adap(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %41 [
    i32 132, label %7
    i32 131, label %13
    i32 128, label %19
    i32 130, label %25
    i32 129, label %33
  ]

7:                                                ; preds = %2
  %8 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %9 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %3, align 8
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %3, align 8
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.i2c_adapter* %24, %struct.i2c_adapter** %3, align 8
  br label %43

25:                                               ; preds = %2
  %26 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %29, align 8
  %31 = getelementptr inbounds %struct.i2c_adapter*, %struct.i2c_adapter** %30, i64 0
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %31, align 8
  store %struct.i2c_adapter* %32, %struct.i2c_adapter** %3, align 8
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.i2c_adapter**, %struct.i2c_adapter*** %37, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter*, %struct.i2c_adapter** %38, i64 1
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %39, align 8
  store %struct.i2c_adapter* %40, %struct.i2c_adapter** %3, align 8
  br label %43

41:                                               ; preds = %2
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %7, %13, %19, %25, %33, %41
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  ret %struct.i2c_adapter* %44
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
