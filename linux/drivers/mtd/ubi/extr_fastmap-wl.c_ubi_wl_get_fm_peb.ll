; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_wl_get_fm_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_wl_get_fm_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_wl_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ubi_device = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubi_wl_entry* @ubi_wl_get_fm_peb(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %5, align 8
  %6 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %7 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %13 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %11, %2
  br label %53

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 2
  %27 = call %struct.ubi_wl_entry* @find_anchor_wl_entry(%struct.TYPE_7__* %26)
  store %struct.ubi_wl_entry* %27, %struct.ubi_wl_entry** %5, align 8
  br label %33

28:                                               ; preds = %21
  %29 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %30 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 2
  %32 = call %struct.ubi_wl_entry* @find_mean_wl_entry(%struct.ubi_device* %29, %struct.TYPE_7__* %31)
  store %struct.ubi_wl_entry* %32, %struct.ubi_wl_entry** %5, align 8
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %35 = icmp ne %struct.ubi_wl_entry* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %53

37:                                               ; preds = %33
  %38 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %39 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %40 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %41 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %40, i32 0, i32 2
  %42 = call i32 @self_check_in_wl_tree(%struct.ubi_device* %38, %struct.ubi_wl_entry* %39, %struct.TYPE_7__* %41)
  %43 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %44 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 2
  %48 = call i32 @rb_erase(i32* %45, %struct.TYPE_7__* %47)
  %49 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %37, %36, %20
  %54 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  ret %struct.ubi_wl_entry* %54
}

declare dso_local %struct.ubi_wl_entry* @find_anchor_wl_entry(%struct.TYPE_7__*) #1

declare dso_local %struct.ubi_wl_entry* @find_mean_wl_entry(%struct.ubi_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @self_check_in_wl_tree(%struct.ubi_device*, %struct.ubi_wl_entry*, %struct.TYPE_7__*) #1

declare dso_local i32 @rb_erase(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
