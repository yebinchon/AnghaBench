; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_engines_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_engines_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.hl_debugfs_entry* }
%struct.hl_debugfs_entry = type { %struct.hl_dbg_device_entry* }
%struct.hl_dbg_device_entry = type { %struct.hl_device* }
%struct.hl_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, %struct.seq_file*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @engines_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @engines_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hl_debugfs_entry*, align 8
  %6 = alloca %struct.hl_dbg_device_entry*, align 8
  %7 = alloca %struct.hl_device*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.hl_debugfs_entry*, %struct.hl_debugfs_entry** %9, align 8
  store %struct.hl_debugfs_entry* %10, %struct.hl_debugfs_entry** %5, align 8
  %11 = load %struct.hl_debugfs_entry*, %struct.hl_debugfs_entry** %5, align 8
  %12 = getelementptr inbounds %struct.hl_debugfs_entry, %struct.hl_debugfs_entry* %11, i32 0, i32 0
  %13 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %12, align 8
  store %struct.hl_dbg_device_entry* %13, %struct.hl_dbg_device_entry** %6, align 8
  %14 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %6, align 8
  %15 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %14, i32 0, i32 0
  %16 = load %struct.hl_device*, %struct.hl_device** %15, align 8
  store %struct.hl_device* %16, %struct.hl_device** %7, align 8
  %17 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.hl_device*, i32*, %struct.seq_file*)*, i32 (%struct.hl_device*, i32*, %struct.seq_file*)** %20, align 8
  %22 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 %21(%struct.hl_device* %22, i32* null, %struct.seq_file* %23)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
