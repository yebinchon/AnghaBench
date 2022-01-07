; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.dt3155_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @dt3155_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3155_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.dt3155_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = call %struct.dt3155_priv* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.dt3155_priv* %15, %struct.dt3155_priv** %12, align 8
  %16 = load %struct.dt3155_priv*, %struct.dt3155_priv** %12, align 8
  %17 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dt3155_priv*, %struct.dt3155_priv** %12, align 8
  %20 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %18, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %25, %27
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %36

30:                                               ; preds = %5
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 2, %33
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %5
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ %48, %46 ], [ 0, %49 ]
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %36
  %53 = load i32*, i32** %9, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %50
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.dt3155_priv* @vb2_get_drv_priv(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
