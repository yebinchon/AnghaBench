; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_common_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_common_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_isa_card = type { %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.radio_isa_ops* }
%struct.radio_isa_ops = type { i32 (%struct.radio_isa_card.0*, i32, i32)* }
%struct.radio_isa_card.0 = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Removed radio card %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_isa_card*, i32)* @radio_isa_common_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_isa_common_remove(%struct.radio_isa_card* %0, i32 %1) #0 {
  %3 = alloca %struct.radio_isa_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radio_isa_ops*, align 8
  store %struct.radio_isa_card* %0, %struct.radio_isa_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %7 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.radio_isa_ops*, %struct.radio_isa_ops** %9, align 8
  store %struct.radio_isa_ops* %10, %struct.radio_isa_ops** %5, align 8
  %11 = load %struct.radio_isa_ops*, %struct.radio_isa_ops** %5, align 8
  %12 = getelementptr inbounds %struct.radio_isa_ops, %struct.radio_isa_ops* %11, i32 0, i32 0
  %13 = load i32 (%struct.radio_isa_card.0*, i32, i32)*, i32 (%struct.radio_isa_card.0*, i32, i32)** %12, align 8
  %14 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %15 = bitcast %struct.radio_isa_card* %14 to %struct.radio_isa_card.0*
  %16 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %17 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %16, i32 0, i32 5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %22 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %21, i32 0, i32 5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %20
  %29 = phi i32 [ %26, %20 ], [ 0, %27 ]
  %30 = call i32 %13(%struct.radio_isa_card.0* %15, i32 1, i32 %29)
  %31 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %32 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %31, i32 0, i32 4
  %33 = call i32 @video_unregister_device(i32* %32)
  %34 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %35 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %34, i32 0, i32 3
  %36 = call i32 @v4l2_ctrl_handler_free(i32* %35)
  %37 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %38 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %37, i32 0, i32 1
  %39 = call i32 @v4l2_device_unregister(i32* %38)
  %40 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %41 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @release_region(i32 %42, i32 %43)
  %45 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %46 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %45, i32 0, i32 1
  %47 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %48 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @v4l2_info(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %54 = call i32 @kfree(%struct.radio_isa_card* %53)
  ret i32 0
}

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.radio_isa_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
