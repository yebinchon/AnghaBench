; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_alloc_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_alloc_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_entity = type { i32, i32, i32, %struct.TYPE_2__*, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@UVC_TERM_OUTPUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uvc_entity* (i32, i32, i32, i32)* @uvc_alloc_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uvc_entity* @uvc_alloc_entity(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uvc_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uvc_entity*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @roundup(i32 %14, i32 4)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @UVC_TERM_OUTPUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = sub i32 %23, 1
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 48, %28
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = add i64 %29, %32
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.uvc_entity* @kzalloc(i32 %38, i32 %39)
  store %struct.uvc_entity* %40, %struct.uvc_entity** %10, align 8
  %41 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %42 = icmp eq %struct.uvc_entity* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store %struct.uvc_entity* null, %struct.uvc_entity** %5, align 8
  br label %109

44:                                               ; preds = %25
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %47 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %50 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %52 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %55 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %57 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %56, i64 1
  %58 = bitcast %struct.uvc_entity* %57 to i8*
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = bitcast i8* %61 to %struct.TYPE_2__*
  %63 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %64 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %63, i32 0, i32 3
  store %struct.TYPE_2__* %62, %struct.TYPE_2__** %64, align 8
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %78, %44
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %71 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %72 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 4
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %65

81:                                               ; preds = %65
  %82 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %83 = call i32 @UVC_ENTITY_IS_OTERM(%struct.uvc_entity* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %87 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %88 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sub i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %86, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %81
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %98 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %100 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = bitcast %struct.TYPE_2__* %104 to i32*
  %106 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %107 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %106, i32 0, i32 4
  store i32* %105, i32** %107, align 8
  %108 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  store %struct.uvc_entity* %108, %struct.uvc_entity** %5, align 8
  br label %109

109:                                              ; preds = %95, %43
  %110 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  ret %struct.uvc_entity* %110
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.uvc_entity* @kzalloc(i32, i32) #1

declare dso_local i32 @UVC_ENTITY_IS_OTERM(%struct.uvc_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
