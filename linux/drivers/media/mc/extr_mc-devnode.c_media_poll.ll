; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-devnode.c_media_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-devnode.c_media_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.media_devnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.poll_table_struct*)* }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @media_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @media_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.media_devnode*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = call %struct.media_devnode* @media_devnode_data(%struct.file* %7)
  store %struct.media_devnode* %8, %struct.media_devnode** %6, align 8
  %9 = load %struct.media_devnode*, %struct.media_devnode** %6, align 8
  %10 = call i32 @media_devnode_is_registered(%struct.media_devnode* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EPOLLERR, align 4
  %14 = load i32, i32* @EPOLLHUP, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.media_devnode*, %struct.media_devnode** %6, align 8
  %18 = getelementptr inbounds %struct.media_devnode, %struct.media_devnode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %20, align 8
  %22 = icmp ne i32 (%struct.file*, %struct.poll_table_struct*)* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load %struct.media_devnode*, %struct.media_devnode** %6, align 8
  %27 = getelementptr inbounds %struct.media_devnode, %struct.media_devnode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %29, align 8
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %33 = call i32 %30(%struct.file* %31, %struct.poll_table_struct* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %23, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.media_devnode* @media_devnode_data(%struct.file*) #1

declare dso_local i32 @media_devnode_is_registered(%struct.media_devnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
