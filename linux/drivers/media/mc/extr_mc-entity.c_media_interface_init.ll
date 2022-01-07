; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_interface_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_interface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_device = type { i32 }
%struct.media_interface = type { i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.media_device*, %struct.media_interface*, i8*, i8*, i8*)* @media_interface_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @media_interface_init(%struct.media_device* %0, %struct.media_interface* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.media_device*, align 8
  %7 = alloca %struct.media_interface*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.media_device* %0, %struct.media_device** %6, align 8
  store %struct.media_interface* %1, %struct.media_interface** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = load %struct.media_interface*, %struct.media_interface** %7, align 8
  %13 = getelementptr inbounds %struct.media_interface, %struct.media_interface* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = load %struct.media_interface*, %struct.media_interface** %7, align 8
  %16 = getelementptr inbounds %struct.media_interface, %struct.media_interface* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.media_interface*, %struct.media_interface** %7, align 8
  %18 = getelementptr inbounds %struct.media_interface, %struct.media_interface* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.media_device*, %struct.media_device** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.media_interface*, %struct.media_interface** %7, align 8
  %23 = getelementptr inbounds %struct.media_interface, %struct.media_interface* %22, i32 0, i32 0
  %24 = call i32 @media_gobj_create(%struct.media_device* %20, i8* %21, i32* %23)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @media_gobj_create(%struct.media_device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
