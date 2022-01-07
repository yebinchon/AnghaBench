; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_add_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hl_dbg_device_entry }
%struct.hl_dbg_device_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_debugfs_add_cb(%struct.hl_cb* %0) #0 {
  %2 = alloca %struct.hl_cb*, align 8
  %3 = alloca %struct.hl_dbg_device_entry*, align 8
  store %struct.hl_cb* %0, %struct.hl_cb** %2, align 8
  %4 = load %struct.hl_cb*, %struct.hl_cb** %2, align 8
  %5 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.hl_dbg_device_entry* %7, %struct.hl_dbg_device_entry** %3, align 8
  %8 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %9 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.hl_cb*, %struct.hl_cb** %2, align 8
  %12 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %11, i32 0, i32 0
  %13 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %14 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %13, i32 0, i32 1
  %15 = call i32 @list_add(i32* %12, i32* %14)
  %16 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %17 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
