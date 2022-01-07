; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_wl_get_wle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_wl_get_wle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_wl_entry = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ubi_device = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"no free eraseblocks\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"PEB %d EC %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_wl_entry* (%struct.ubi_device*)* @wl_get_wle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_wl_entry* @wl_get_wle(%struct.ubi_device* %0) #0 {
  %2 = alloca %struct.ubi_wl_entry*, align 8
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  %5 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %6 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %7 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %6, i32 0, i32 1
  %8 = call %struct.ubi_wl_entry* @find_mean_wl_entry(%struct.ubi_device* %5, i32* %7)
  store %struct.ubi_wl_entry* %8, %struct.ubi_wl_entry** %4, align 8
  %9 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %4, align 8
  %10 = icmp ne %struct.ubi_wl_entry* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %13 = call i32 @ubi_err(%struct.ubi_device* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %2, align 8
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %16 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %4, align 8
  %17 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %18 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %17, i32 0, i32 1
  %19 = call i32 @self_check_in_wl_tree(%struct.ubi_device* %15, %struct.ubi_wl_entry* %16, i32* %18)
  %20 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %4, align 8
  %21 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 1
  %25 = call i32 @rb_erase(i32* %22, i32* %24)
  %26 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %4, align 8
  %31 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %4, align 8
  %34 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dbg_wl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %4, align 8
  store %struct.ubi_wl_entry* %37, %struct.ubi_wl_entry** %2, align 8
  br label %38

38:                                               ; preds = %14, %11
  %39 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %2, align 8
  ret %struct.ubi_wl_entry* %39
}

declare dso_local %struct.ubi_wl_entry* @find_mean_wl_entry(%struct.ubi_device*, i32*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*) #1

declare dso_local i32 @self_check_in_wl_tree(%struct.ubi_device*, %struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @dbg_wl(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
