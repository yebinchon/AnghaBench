; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_vb2_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_vb2_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.cio2_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.cio2_queue = type { i64, i64, i32, i32*, i32**, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CIO2_MAX_BUFFERS = common dso_local global i32 0, align 4
@CIO2_MAX_LOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @cio2_vb2_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio2_vb2_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.cio2_device*, align 8
  %12 = alloca %struct.cio2_queue*, align 8
  %13 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %15 = call %struct.cio2_device* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.cio2_device* %15, %struct.cio2_device** %11, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %17 = call %struct.cio2_queue* @vb2q_to_cio2_queue(%struct.vb2_queue* %16)
  store %struct.cio2_queue* %17, %struct.cio2_queue** %12, align 8
  %18 = load %struct.cio2_queue*, %struct.cio2_queue** %12, align 8
  %19 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %50, %5
  %24 = load i32, i32* %13, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load %struct.cio2_queue*, %struct.cio2_queue** %12, align 8
  %30 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load %struct.cio2_device*, %struct.cio2_device** %11, align 8
  %43 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.device**, %struct.device*** %10, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.device*, %struct.device** %46, i64 %48
  store %struct.device* %45, %struct.device** %49, align 8
  br label %50

50:                                               ; preds = %28
  %51 = load i32, i32* %13, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %23

53:                                               ; preds = %23
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CIO2_MAX_BUFFERS, align 4
  %57 = call i32 @clamp_val(i32 %55, i32 1, i32 %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %80, %53
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @CIO2_MAX_BUFFERS, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.cio2_queue*, %struct.cio2_queue** %12, align 8
  %65 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %64, i32 0, i32 4
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* null, i32** %69, align 8
  %70 = load %struct.cio2_device*, %struct.cio2_device** %11, align 8
  %71 = load %struct.cio2_queue*, %struct.cio2_queue** %12, align 8
  %72 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @CIO2_MAX_LOPS, align 4
  %76 = mul i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = call i32 @cio2_fbpt_entry_init_dummy(%struct.cio2_device* %70, i32* %78)
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %13, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load %struct.cio2_queue*, %struct.cio2_queue** %12, align 8
  %85 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %84, i32 0, i32 2
  %86 = call i32 @atomic_set(i32* %85, i32 0)
  %87 = load %struct.cio2_queue*, %struct.cio2_queue** %12, align 8
  %88 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.cio2_queue*, %struct.cio2_queue** %12, align 8
  %90 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  ret i32 0
}

declare dso_local %struct.cio2_device* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.cio2_queue* @vb2q_to_cio2_queue(%struct.vb2_queue*) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @cio2_fbpt_entry_init_dummy(%struct.cio2_device*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
