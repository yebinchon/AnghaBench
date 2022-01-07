; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.sd = type { i32 }

@stv_bridge_init = common dso_local global %struct.TYPE_4__* null, align 8
@vv6410_sensor_init = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @vv6410_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vv6410_init(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv_bridge_init, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @stv06xx_write_bridge(%struct.sd* %11, i32 %17, i32 %23)
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load %struct.sd*, %struct.sd** %2, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vv6410_sensor_init, align 8
  %31 = bitcast %struct.TYPE_4__* %30 to i32*
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vv6410_sensor_init, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %32)
  %34 = call i32 @stv06xx_write_sensor_bytes(%struct.sd* %29, i32* %31, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  br label %40

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  ret i32 %41
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @stv06xx_write_sensor_bytes(%struct.sd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
