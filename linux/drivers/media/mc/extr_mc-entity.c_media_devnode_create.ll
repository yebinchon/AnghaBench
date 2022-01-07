; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_devnode_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_devnode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_intf_devnode = type { i32, i8*, i8* }
%struct.media_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MEDIA_GRAPH_INTF_DEVNODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.media_intf_devnode* @media_devnode_create(%struct.media_device* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.media_intf_devnode*, align 8
  %7 = alloca %struct.media_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.media_intf_devnode*, align 8
  store %struct.media_device* %0, %struct.media_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.media_intf_devnode* @kzalloc(i32 24, i32 %13)
  store %struct.media_intf_devnode* %14, %struct.media_intf_devnode** %12, align 8
  %15 = load %struct.media_intf_devnode*, %struct.media_intf_devnode** %12, align 8
  %16 = icmp ne %struct.media_intf_devnode* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.media_intf_devnode* null, %struct.media_intf_devnode** %6, align 8
  br label %33

18:                                               ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.media_intf_devnode*, %struct.media_intf_devnode** %12, align 8
  %21 = getelementptr inbounds %struct.media_intf_devnode, %struct.media_intf_devnode* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.media_intf_devnode*, %struct.media_intf_devnode** %12, align 8
  %24 = getelementptr inbounds %struct.media_intf_devnode, %struct.media_intf_devnode* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.media_device*, %struct.media_device** %7, align 8
  %26 = load %struct.media_intf_devnode*, %struct.media_intf_devnode** %12, align 8
  %27 = getelementptr inbounds %struct.media_intf_devnode, %struct.media_intf_devnode* %26, i32 0, i32 0
  %28 = load i32, i32* @MEDIA_GRAPH_INTF_DEVNODE, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @media_interface_init(%struct.media_device* %25, i32* %27, i32 %28, i8* %29, i8* %30)
  %32 = load %struct.media_intf_devnode*, %struct.media_intf_devnode** %12, align 8
  store %struct.media_intf_devnode* %32, %struct.media_intf_devnode** %6, align 8
  br label %33

33:                                               ; preds = %18, %17
  %34 = load %struct.media_intf_devnode*, %struct.media_intf_devnode** %6, align 8
  ret %struct.media_intf_devnode* %34
}

declare dso_local %struct.media_intf_devnode* @kzalloc(i32, i32) #1

declare dso_local i32 @media_interface_init(%struct.media_device*, i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
