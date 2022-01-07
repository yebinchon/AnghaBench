; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_debugfs.c_b43legacy_debugfs_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_debugfs.c_b43legacy_debugfs_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_dfsentry* }
%struct.b43legacy_dfsentry = type { %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.b43legacy_dfsentry* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_debugfs_remove_device(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_dfsentry*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %4 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %5 = icmp ne %struct.b43legacy_wldev* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %53

7:                                                ; preds = %1
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  %10 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %9, align 8
  store %struct.b43legacy_dfsentry* %10, %struct.b43legacy_dfsentry** %3, align 8
  %11 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %3, align 8
  %12 = icmp ne %struct.b43legacy_dfsentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %53

14:                                               ; preds = %7
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = call i32 @b43legacy_remove_dynamic_debug(%struct.b43legacy_wldev* %15)
  %17 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %3, align 8
  %18 = getelementptr inbounds %struct.b43legacy_dfsentry, %struct.b43legacy_dfsentry* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @debugfs_remove(i32 %20)
  %22 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %3, align 8
  %23 = getelementptr inbounds %struct.b43legacy_dfsentry, %struct.b43legacy_dfsentry* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @debugfs_remove(i32 %25)
  %27 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %3, align 8
  %28 = getelementptr inbounds %struct.b43legacy_dfsentry, %struct.b43legacy_dfsentry* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @debugfs_remove(i32 %30)
  %32 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %3, align 8
  %33 = getelementptr inbounds %struct.b43legacy_dfsentry, %struct.b43legacy_dfsentry* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @debugfs_remove(i32 %35)
  %37 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %3, align 8
  %38 = getelementptr inbounds %struct.b43legacy_dfsentry, %struct.b43legacy_dfsentry* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @debugfs_remove(i32 %40)
  %42 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %3, align 8
  %43 = getelementptr inbounds %struct.b43legacy_dfsentry, %struct.b43legacy_dfsentry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @debugfs_remove(i32 %44)
  %46 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %3, align 8
  %47 = getelementptr inbounds %struct.b43legacy_dfsentry, %struct.b43legacy_dfsentry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %48, align 8
  %50 = call i32 @kfree(%struct.b43legacy_dfsentry* %49)
  %51 = load %struct.b43legacy_dfsentry*, %struct.b43legacy_dfsentry** %3, align 8
  %52 = call i32 @kfree(%struct.b43legacy_dfsentry* %51)
  br label %53

53:                                               ; preds = %14, %13, %6
  ret void
}

declare dso_local i32 @b43legacy_remove_dynamic_debug(%struct.b43legacy_wldev*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @kfree(%struct.b43legacy_dfsentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
