; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_vdcdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_vdcdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menelaus_vtg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@vdcdc2_vtg = common dso_local global %struct.menelaus_vtg zeroinitializer, align 4
@vdcdc3_vtg = common dso_local global %struct.menelaus_vtg zeroinitializer, align 4
@vdcdc_values = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menelaus_set_vdcdc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.menelaus_vtg*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store %struct.menelaus_vtg* @vdcdc2_vtg, %struct.menelaus_vtg** %6, align 8
  br label %21

20:                                               ; preds = %16
  store %struct.menelaus_vtg* @vdcdc3_vtg, %struct.menelaus_vtg** %6, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %6, align 8
  %26 = call i32 @menelaus_set_voltage(%struct.menelaus_vtg* %25, i32 0, i32 0, i32 0)
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @vdcdc_values, align 4
  %30 = load i32, i32* @vdcdc_values, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @menelaus_get_vtg_value(i32 %28, i32 %29, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %27
  %39 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @menelaus_set_voltage(%struct.menelaus_vtg* %39, i32 %40, i32 %41, i32 3)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %35, %24, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @menelaus_set_voltage(%struct.menelaus_vtg*, i32, i32, i32) #1

declare dso_local i32 @menelaus_get_vtg_value(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
