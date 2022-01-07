; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_erase_aeb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_erase_aeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i64, i32 }
%struct.ubi_ainf_peb = type { i64, i32, i32, i32 }

@ubi_wl_entry_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_ainf_peb*, i32)* @erase_aeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_aeb(%struct.ubi_device* %0, %struct.ubi_ainf_peb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_ainf_peb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_wl_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_ainf_peb* %1, %struct.ubi_ainf_peb** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ubi_wl_entry_slab, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ubi_wl_entry* @kmem_cache_alloc(i32 %10, i32 %11)
  store %struct.ubi_wl_entry* %12, %struct.ubi_wl_entry** %8, align 8
  %13 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %14 = icmp ne %struct.ubi_wl_entry* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %20 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %23 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %25 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %28 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %30 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 2
  %32 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %31, align 8
  %33 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %34 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %32, i64 %35
  store %struct.ubi_wl_entry* %29, %struct.ubi_wl_entry** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %18
  %40 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %41 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %42 = call i32 @sync_erase(%struct.ubi_device* %40, %struct.ubi_wl_entry* %41, i32 0)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %70

46:                                               ; preds = %39
  %47 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %48 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %49 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %48, i32 0, i32 1
  %50 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %47, i32* %49)
  %51 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %52 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %69

55:                                               ; preds = %18
  %56 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %57 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %58 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %59 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %6, align 8
  %62 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @schedule_erase(%struct.ubi_device* %56, %struct.ubi_wl_entry* %57, i32 %60, i32 %63, i32 0, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %70

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %46
  store i32 0, i32* %4, align 4
  br label %75

70:                                               ; preds = %67, %45
  %71 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %72 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %8, align 8
  %73 = call i32 @wl_entry_destroy(%struct.ubi_device* %71, %struct.ubi_wl_entry* %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %69, %15
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.ubi_wl_entry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @sync_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32) #1

declare dso_local i32 @wl_tree_add(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @schedule_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_entry_destroy(%struct.ubi_device*, %struct.ubi_wl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
