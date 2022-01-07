; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_pll_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_pll_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32, %struct.smiapp_pll }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }
%struct.smiapp_pll = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_pll_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_pll_update(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.smiapp_pll*, align 8
  %5 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  %6 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %7 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %6, i32 0, i32 7
  store %struct.smiapp_pll* %7, %struct.smiapp_pll** %4, align 8
  %8 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %9 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %12 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %14 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %17 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %19 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %24 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %31 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %33 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %36 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %38 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %43 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %45 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %46 = call i32 @smiapp_pll_try(%struct.smiapp_sensor* %44, %struct.smiapp_pll* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %1
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %66

51:                                               ; preds = %1
  %52 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %53 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %56 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @__v4l2_ctrl_s_ctrl_int64(i32 %54, i32 %57)
  %59 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %60 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %63 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__v4l2_ctrl_s_ctrl_int64(i32 %61, i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %51, %49
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @smiapp_pll_try(%struct.smiapp_sensor*, %struct.smiapp_pll*) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
