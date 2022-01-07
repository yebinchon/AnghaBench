; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_erase_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_erase_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_work = type { %struct.ubi_wl_entry* }
%struct.ubi_wl_entry = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"cancel erasure of PEB %d EC %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_work*, i32)* @erase_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_worker(%struct.ubi_device* %0, %struct.ubi_work* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_work* %1, %struct.ubi_work** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load %struct.ubi_work*, %struct.ubi_work** %6, align 8
  %14 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %13, i32 0, i32 0
  %15 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %14, align 8
  store %struct.ubi_wl_entry* %15, %struct.ubi_wl_entry** %9, align 8
  %16 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %17 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %20 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dbg_wl(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.ubi_work*, %struct.ubi_work** %6, align 8
  %24 = call i32 @kfree(%struct.ubi_work* %23)
  %25 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %26 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %27 = call i32 @wl_entry_destroy(%struct.ubi_device* %25, %struct.ubi_wl_entry* %26)
  store i32 0, i32* %4, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %30 = load %struct.ubi_work*, %struct.ubi_work** %6, align 8
  %31 = call i32 @__erase_worker(%struct.ubi_device* %29, %struct.ubi_work* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ubi_work*, %struct.ubi_work** %6, align 8
  %33 = call i32 @kfree(%struct.ubi_work* %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %28, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @dbg_wl(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubi_work*) #1

declare dso_local i32 @wl_entry_destroy(%struct.ubi_device*, %struct.ubi_wl_entry*) #1

declare dso_local i32 @__erase_worker(%struct.ubi_device*, %struct.ubi_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
