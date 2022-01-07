; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_st6422.c_setgain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_st6422.c_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setgain(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sd*, %struct.sd** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @stv06xx_write_bridge(%struct.sd* %7, i32 1289, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.sd*, %struct.sd** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @stv06xx_write_bridge(%struct.sd* %15, i32 1290, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %14
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @stv06xx_write_bridge(%struct.sd* %23, i32 1291, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %22
  %31 = load %struct.sd*, %struct.sd** %4, align 8
  %32 = call i32 @stv06xx_write_bridge(%struct.sd* %31, i32 1292, i32 42)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %30
  %38 = load %struct.sd*, %struct.sd** %4, align 8
  %39 = call i32 @stv06xx_write_bridge(%struct.sd* %38, i32 1293, i32 1)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %35, %28, %20, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
