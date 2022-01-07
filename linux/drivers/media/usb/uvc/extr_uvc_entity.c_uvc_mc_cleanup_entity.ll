; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_entity.c_uvc_mc_cleanup_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_entity.c_uvc_mc_cleanup_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_entity = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@UVC_TT_STREAMING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvc_mc_cleanup_entity(%struct.uvc_entity* %0) #0 {
  %2 = alloca %struct.uvc_entity*, align 8
  store %struct.uvc_entity* %0, %struct.uvc_entity** %2, align 8
  %3 = load %struct.uvc_entity*, %struct.uvc_entity** %2, align 8
  %4 = call i64 @UVC_ENTITY_TYPE(%struct.uvc_entity* %3)
  %5 = load i64, i64* @UVC_TT_STREAMING, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.uvc_entity*, %struct.uvc_entity** %2, align 8
  %9 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @media_entity_cleanup(i32* %10)
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.uvc_entity*, %struct.uvc_entity** %2, align 8
  %14 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.uvc_entity*, %struct.uvc_entity** %2, align 8
  %19 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @media_entity_cleanup(i32* %21)
  br label %23

23:                                               ; preds = %17, %12
  br label %24

24:                                               ; preds = %23, %7
  ret void
}

declare dso_local i64 @UVC_ENTITY_TYPE(%struct.uvc_entity*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
