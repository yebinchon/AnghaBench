; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_do_sync_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_do_sync_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_wl_entry = type { i32 }
%struct.ubi_work = type { i32, i32, i32, %struct.ubi_wl_entry* }

@.str = private unnamed_addr constant [21 x i8] c"sync erase of PEB %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_wl_entry*, i32, i32, i32)* @do_sync_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sync_erase(%struct.ubi_device* %0, %struct.ubi_wl_entry* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_wl_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubi_work, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_wl_entry* %1, %struct.ubi_wl_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %7, align 8
  %13 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dbg_wl(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %7, align 8
  %17 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %11, i32 0, i32 3
  store %struct.ubi_wl_entry* %16, %struct.ubi_wl_entry** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %11, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %25 = call i32 @__erase_worker(%struct.ubi_device* %24, %struct.ubi_work* %11)
  ret i32 %25
}

declare dso_local i32 @dbg_wl(i8*, i32) #1

declare dso_local i32 @__erase_worker(%struct.ubi_device*, %struct.ubi_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
