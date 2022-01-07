; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_params_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_params_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*)* @preview_params_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_params_switch(%struct.isp_prev_device* %0) #0 {
  %2 = alloca %struct.isp_prev_device*, align 8
  %3 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %2, align 8
  %4 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %5 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %12 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = xor i32 %14, -1
  %16 = and i32 %10, %15
  %17 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %18 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %25 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %23, %27
  %29 = or i32 %16, %28
  store i32 %29, i32* %3, align 4
  %30 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %31 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %38 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %36, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %1
  br label %89

51:                                               ; preds = %1
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %54 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = xor i32 %56, %52
  store i32 %57, i32* %55, align 8
  %58 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %59 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %67 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %65
  store i32 %73, i32* %71, align 4
  %74 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %75 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %82 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %80
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %51, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
