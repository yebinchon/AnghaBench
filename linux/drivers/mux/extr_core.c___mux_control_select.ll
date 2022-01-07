; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_core.c___mux_control_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_core.c___mux_control_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_control = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MUX_IDLE_AS_IS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mux_control*, i32)* @__mux_control_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mux_control_select(%struct.mux_control* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mux_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mux_control* %0, %struct.mux_control** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.mux_control*, %struct.mux_control** %4, align 8
  %12 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %10, %13
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i1 [ true, %2 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %15
  %24 = load %struct.mux_control*, %struct.mux_control** %4, align 8
  %25 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %51

30:                                               ; preds = %23
  %31 = load %struct.mux_control*, %struct.mux_control** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mux_control_set(%struct.mux_control* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %51

37:                                               ; preds = %30
  %38 = load %struct.mux_control*, %struct.mux_control** %4, align 8
  %39 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MUX_IDLE_AS_IS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.mux_control*, %struct.mux_control** %4, align 8
  %45 = load %struct.mux_control*, %struct.mux_control** %4, align 8
  %46 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mux_control_set(%struct.mux_control* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %36, %29, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mux_control_set(%struct.mux_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
