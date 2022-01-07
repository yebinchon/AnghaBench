; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fman_port*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.fman_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fman_port*, align 8
  %4 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %3, align 8
  %5 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %6 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %20 [
    i32 129, label %8
    i32 128, label %17
  ]

8:                                                ; preds = %1
  %9 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %10 = call i32 @init_bmi_rx(%struct.fman_port* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %15 = call i32 @init_hwp(%struct.fman_port* %14)
  br label %16

16:                                               ; preds = %13, %8
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %19 = call i32 @init_bmi_tx(%struct.fman_port* %18)
  store i32 %19, i32* %4, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %17, %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %23
  %29 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %30 = call i32 @init_qmi(%struct.fman_port* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33, %26, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @init_bmi_rx(%struct.fman_port*) #1

declare dso_local i32 @init_hwp(%struct.fman_port*) #1

declare dso_local i32 @init_bmi_tx(%struct.fman_port*) #1

declare dso_local i32 @init_qmi(%struct.fman_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
