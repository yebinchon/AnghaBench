; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_devnode_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_devnode_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_intf_devnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @media_devnode_remove(%struct.media_intf_devnode* %0) #0 {
  %2 = alloca %struct.media_intf_devnode*, align 8
  store %struct.media_intf_devnode* %0, %struct.media_intf_devnode** %2, align 8
  %3 = load %struct.media_intf_devnode*, %struct.media_intf_devnode** %2, align 8
  %4 = getelementptr inbounds %struct.media_intf_devnode, %struct.media_intf_devnode* %3, i32 0, i32 0
  %5 = call i32 @media_remove_intf_links(%struct.TYPE_2__* %4)
  %6 = load %struct.media_intf_devnode*, %struct.media_intf_devnode** %2, align 8
  %7 = getelementptr inbounds %struct.media_intf_devnode, %struct.media_intf_devnode* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @media_gobj_destroy(i32* %8)
  %10 = load %struct.media_intf_devnode*, %struct.media_intf_devnode** %2, align 8
  %11 = call i32 @kfree(%struct.media_intf_devnode* %10)
  ret void
}

declare dso_local i32 @media_remove_intf_links(%struct.TYPE_2__*) #1

declare dso_local i32 @media_gobj_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.media_intf_devnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
