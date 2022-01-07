; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_create_intf_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_create_intf_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_link = type { i32, i32, %struct.media_entity*, %struct.media_interface* }
%struct.media_entity = type { i32 }
%struct.media_interface = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MEDIA_LNK_FL_INTERFACE_LINK = common dso_local global i32 0, align 4
@MEDIA_GRAPH_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.media_link* @media_create_intf_link(%struct.media_entity* %0, %struct.media_interface* %1, i32 %2) #0 {
  %4 = alloca %struct.media_link*, align 8
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.media_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.media_link*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store %struct.media_interface* %1, %struct.media_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.media_interface*, %struct.media_interface** %6, align 8
  %10 = getelementptr inbounds %struct.media_interface, %struct.media_interface* %9, i32 0, i32 1
  %11 = call %struct.media_link* @media_add_link(i32* %10)
  store %struct.media_link* %11, %struct.media_link** %8, align 8
  %12 = load %struct.media_link*, %struct.media_link** %8, align 8
  %13 = icmp eq %struct.media_link* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.media_link* null, %struct.media_link** %4, align 8
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.media_interface*, %struct.media_interface** %6, align 8
  %17 = load %struct.media_link*, %struct.media_link** %8, align 8
  %18 = getelementptr inbounds %struct.media_link, %struct.media_link* %17, i32 0, i32 3
  store %struct.media_interface* %16, %struct.media_interface** %18, align 8
  %19 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %20 = load %struct.media_link*, %struct.media_link** %8, align 8
  %21 = getelementptr inbounds %struct.media_link, %struct.media_link* %20, i32 0, i32 2
  store %struct.media_entity* %19, %struct.media_entity** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MEDIA_LNK_FL_INTERFACE_LINK, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.media_link*, %struct.media_link** %8, align 8
  %26 = getelementptr inbounds %struct.media_link, %struct.media_link* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.media_interface*, %struct.media_interface** %6, align 8
  %28 = getelementptr inbounds %struct.media_interface, %struct.media_interface* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MEDIA_GRAPH_LINK, align 4
  %32 = load %struct.media_link*, %struct.media_link** %8, align 8
  %33 = getelementptr inbounds %struct.media_link, %struct.media_link* %32, i32 0, i32 1
  %34 = call i32 @media_gobj_create(i32 %30, i32 %31, i32* %33)
  %35 = load %struct.media_link*, %struct.media_link** %8, align 8
  store %struct.media_link* %35, %struct.media_link** %4, align 8
  br label %36

36:                                               ; preds = %15, %14
  %37 = load %struct.media_link*, %struct.media_link** %4, align 8
  ret %struct.media_link* %37
}

declare dso_local %struct.media_link* @media_add_link(i32*) #1

declare dso_local i32 @media_gobj_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
