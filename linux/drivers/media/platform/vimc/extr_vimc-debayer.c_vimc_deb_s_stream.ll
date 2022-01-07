; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.vimc_deb_device = type { i32, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.vimc_pix_map = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @vimc_deb_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_deb_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vimc_deb_device*, align 8
  %7 = alloca %struct.vimc_pix_map*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.vimc_deb_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.vimc_deb_device* %10, %struct.vimc_deb_device** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %2
  %14 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %15 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %80

19:                                               ; preds = %13
  %20 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %21 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.vimc_pix_map* @vimc_pix_map_by_code(i32 %22)
  store %struct.vimc_pix_map* %23, %struct.vimc_pix_map** %7, align 8
  %24 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %25 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %29 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul i32 %27, %31
  %33 = load %struct.vimc_pix_map*, %struct.vimc_pix_map** %7, align 8
  %34 = getelementptr inbounds %struct.vimc_pix_map, %struct.vimc_pix_map* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %38 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.vimc_pix_map* @vimc_pix_map_by_code(i32 %40)
  store %struct.vimc_pix_map* %41, %struct.vimc_pix_map** %7, align 8
  %42 = load %struct.vimc_pix_map*, %struct.vimc_pix_map** %7, align 8
  %43 = getelementptr inbounds %struct.vimc_pix_map, %struct.vimc_pix_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %46 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %48 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @vimc_deb_pix_map_by_code(i32 %50)
  %52 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %53 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32* @vmalloc(i32 %54)
  %56 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %57 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %59 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %19
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %80

65:                                               ; preds = %19
  br label %79

66:                                               ; preds = %2
  %67 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %68 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %80

72:                                               ; preds = %66
  %73 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %74 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @vfree(i32* %75)
  %77 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %6, align 8
  %78 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %72, %65
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %71, %62, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.vimc_deb_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.vimc_pix_map* @vimc_pix_map_by_code(i32) #1

declare dso_local i32 @vimc_deb_pix_map_by_code(i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
