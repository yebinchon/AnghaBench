; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_mdio_switch_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-meson-g12a.c_g12a_mdio_switch_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g12a_mdio_mux = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @g12a_mdio_switch_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g12a_mdio_switch_fn(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g12a_mdio_mux*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.g12a_mdio_mux* @dev_get_drvdata(i8* %9)
  store %struct.g12a_mdio_mux* %10, %struct.g12a_mdio_mux** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 128, label %20
  ]

17:                                               ; preds = %15
  %18 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %8, align 8
  %19 = call i32 @g12a_enable_external_mdio(%struct.g12a_mdio_mux* %18)
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %15
  %21 = load %struct.g12a_mdio_mux*, %struct.g12a_mdio_mux** %8, align 8
  %22 = call i32 @g12a_enable_internal_mdio(%struct.g12a_mdio_mux* %21)
  store i32 %22, i32* %4, align 4
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %20, %17, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.g12a_mdio_mux* @dev_get_drvdata(i8*) #1

declare dso_local i32 @g12a_enable_external_mdio(%struct.g12a_mdio_mux*) #1

declare dso_local i32 @g12a_enable_internal_mdio(%struct.g12a_mdio_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
