; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64* }
%struct.usb_interface = type { i32 }
%struct.cdc_ncm_ctx = type { %struct.usb_interface*, %struct.usb_interface*, i32, i32, i32 }
%struct.usb_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdc_ncm_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.cdc_ncm_ctx*, align 8
  %6 = alloca %struct.usb_driver*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %12, %struct.cdc_ncm_ctx** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %13)
  store %struct.usb_driver* %14, %struct.usb_driver** %6, align 8
  %15 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %16 = icmp eq %struct.cdc_ncm_ctx* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %90

18:                                               ; preds = %2
  %19 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %19, i32 0, i32 4
  %21 = call i32 @atomic_set(i32* %20, i32 1)
  %22 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %22, i32 0, i32 3
  %24 = call i32 @hrtimer_cancel(i32* %23)
  %25 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %25, i32 0, i32 2
  %27 = call i32 @tasklet_kill(i32* %26)
  %28 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %28, i32 0, i32 0
  %30 = load %struct.usb_interface*, %struct.usb_interface** %29, align 8
  %31 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %31, i32 0, i32 1
  %33 = load %struct.usb_interface*, %struct.usb_interface** %32, align 8
  %34 = icmp eq %struct.usb_interface* %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %36, i32 0, i32 1
  store %struct.usb_interface* null, %struct.usb_interface** %37, align 8
  br label %38

38:                                               ; preds = %35, %18
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %40, i32 0, i32 0
  %42 = load %struct.usb_interface*, %struct.usb_interface** %41, align 8
  %43 = icmp eq %struct.usb_interface* %39, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %45, i32 0, i32 1
  %47 = load %struct.usb_interface*, %struct.usb_interface** %46, align 8
  %48 = icmp ne %struct.usb_interface* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %50, i32 0, i32 1
  %52 = load %struct.usb_interface*, %struct.usb_interface** %51, align 8
  %53 = call i32 @usb_set_intfdata(%struct.usb_interface* %52, i32* null)
  %54 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %55 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %55, i32 0, i32 1
  %57 = load %struct.usb_interface*, %struct.usb_interface** %56, align 8
  %58 = call i32 @usb_driver_release_interface(%struct.usb_driver* %54, %struct.usb_interface* %57)
  %59 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %59, i32 0, i32 1
  store %struct.usb_interface* null, %struct.usb_interface** %60, align 8
  br label %85

61:                                               ; preds = %44, %38
  %62 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %63 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %63, i32 0, i32 1
  %65 = load %struct.usb_interface*, %struct.usb_interface** %64, align 8
  %66 = icmp eq %struct.usb_interface* %62, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %61
  %68 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %68, i32 0, i32 0
  %70 = load %struct.usb_interface*, %struct.usb_interface** %69, align 8
  %71 = icmp ne %struct.usb_interface* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %73, i32 0, i32 0
  %75 = load %struct.usb_interface*, %struct.usb_interface** %74, align 8
  %76 = call i32 @usb_set_intfdata(%struct.usb_interface* %75, i32* null)
  %77 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %78 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %78, i32 0, i32 0
  %80 = load %struct.usb_interface*, %struct.usb_interface** %79, align 8
  %81 = call i32 @usb_driver_release_interface(%struct.usb_driver* %77, %struct.usb_interface* %80)
  %82 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %82, i32 0, i32 0
  store %struct.usb_interface* null, %struct.usb_interface** %83, align 8
  br label %84

84:                                               ; preds = %72, %67, %61
  br label %85

85:                                               ; preds = %84, %49
  %86 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %87 = call i32 @usb_set_intfdata(%struct.usb_interface* %86, i32* null)
  %88 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %89 = call i32 @cdc_ncm_free(%struct.cdc_ncm_ctx* %88)
  br label %90

90:                                               ; preds = %85, %17
  ret void
}

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @cdc_ncm_free(%struct.cdc_ncm_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
