; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.em28xx = type { i32, i32, %struct.em28xx*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Disconnecting %s\0A\00", align 1
@em28xx_free_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @em28xx_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.em28xx*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.em28xx* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.em28xx* %5, %struct.em28xx** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %9 = icmp ne %struct.em28xx* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %76

11:                                               ; preds = %1
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 2
  %14 = load %struct.em28xx*, %struct.em28xx** %13, align 8
  %15 = icmp ne %struct.em28xx* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 2
  %19 = load %struct.em28xx*, %struct.em28xx** %18, align 8
  %20 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 2
  %27 = load %struct.em28xx*, %struct.em28xx** %26, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %16, %11
  %32 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %35 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %39 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %43 = call i32 @flush_request_modules(%struct.em28xx* %42)
  %44 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %45 = call i32 @em28xx_close_extension(%struct.em28xx* %44)
  %46 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 2
  %48 = load %struct.em28xx*, %struct.em28xx** %47, align 8
  %49 = icmp ne %struct.em28xx* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %31
  %51 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %52 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %51, i32 0, i32 2
  %53 = load %struct.em28xx*, %struct.em28xx** %52, align 8
  %54 = call i32 @em28xx_release_resources(%struct.em28xx* %53)
  br label %55

55:                                               ; preds = %50, %31
  %56 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %57 = call i32 @em28xx_release_resources(%struct.em28xx* %56)
  %58 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %59 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %58, i32 0, i32 2
  %60 = load %struct.em28xx*, %struct.em28xx** %59, align 8
  %61 = icmp ne %struct.em28xx* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %64 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %63, i32 0, i32 2
  %65 = load %struct.em28xx*, %struct.em28xx** %64, align 8
  %66 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %65, i32 0, i32 1
  %67 = load i32, i32* @em28xx_free_device, align 4
  %68 = call i32 @kref_put(i32* %66, i32 %67)
  %69 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %70 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %69, i32 0, i32 2
  store %struct.em28xx* null, %struct.em28xx** %70, align 8
  br label %71

71:                                               ; preds = %62, %55
  %72 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %73 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %72, i32 0, i32 1
  %74 = load i32, i32* @em28xx_free_device, align 4
  %75 = call i32 @kref_put(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %10
  ret void
}

declare dso_local %struct.em28xx* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @flush_request_modules(%struct.em28xx*) #1

declare dso_local i32 @em28xx_close_extension(%struct.em28xx*) #1

declare dso_local i32 @em28xx_release_resources(%struct.em28xx*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
