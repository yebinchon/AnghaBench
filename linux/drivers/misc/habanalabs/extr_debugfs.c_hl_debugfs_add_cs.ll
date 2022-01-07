; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_add_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_add_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cs = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hl_dbg_device_entry }
%struct.hl_dbg_device_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_debugfs_add_cs(%struct.hl_cs* %0) #0 {
  %2 = alloca %struct.hl_cs*, align 8
  %3 = alloca %struct.hl_dbg_device_entry*, align 8
  store %struct.hl_cs* %0, %struct.hl_cs** %2, align 8
  %4 = load %struct.hl_cs*, %struct.hl_cs** %2, align 8
  %5 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.hl_dbg_device_entry* %9, %struct.hl_dbg_device_entry** %3, align 8
  %10 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %11 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.hl_cs*, %struct.hl_cs** %2, align 8
  %14 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %13, i32 0, i32 0
  %15 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %16 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %15, i32 0, i32 1
  %17 = call i32 @list_add(i32* %14, i32* %16)
  %18 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %19 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
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
