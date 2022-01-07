; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_params_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_params_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, i32, i32)* @preview_params_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_params_unlock(%struct.isp_prev_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.isp_prev_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %9 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %20 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %18
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %31 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %29
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %40 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %38
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %50 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %48
  store i32 %56, i32* %54, align 4
  br label %102

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %63 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %61
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %7, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %76 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %74
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %7, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %86 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %84
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %95 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %93
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %57, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
