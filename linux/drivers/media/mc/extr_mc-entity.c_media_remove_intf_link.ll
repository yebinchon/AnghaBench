; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_remove_intf_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_remove_intf_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.media_device* }
%struct.media_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @media_remove_intf_link(%struct.media_link* %0) #0 {
  %2 = alloca %struct.media_link*, align 8
  %3 = alloca %struct.media_device*, align 8
  store %struct.media_link* %0, %struct.media_link** %2, align 8
  %4 = load %struct.media_link*, %struct.media_link** %2, align 8
  %5 = getelementptr inbounds %struct.media_link, %struct.media_link* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.media_device*, %struct.media_device** %6, align 8
  store %struct.media_device* %7, %struct.media_device** %3, align 8
  %8 = load %struct.media_device*, %struct.media_device** %3, align 8
  %9 = icmp eq %struct.media_device* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.media_device*, %struct.media_device** %3, align 8
  %13 = getelementptr inbounds %struct.media_device, %struct.media_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.media_link*, %struct.media_link** %2, align 8
  %16 = call i32 @__media_remove_intf_link(%struct.media_link* %15)
  %17 = load %struct.media_device*, %struct.media_device** %3, align 8
  %18 = getelementptr inbounds %struct.media_device, %struct.media_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__media_remove_intf_link(%struct.media_link*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
