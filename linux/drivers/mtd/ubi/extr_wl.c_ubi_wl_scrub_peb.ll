; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_wl_scrub_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_wl_scrub_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, %struct.ubi_wl_entry*, i32, %struct.ubi_wl_entry*, %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"schedule PEB %d for scrubbing\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"the PEB %d is not in proper tree, retry\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"PEB %d not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_wl_scrub_peb(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_wl_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ubi_msg(%struct.ubi_device* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %49, %2
  %12 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %13 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 6
  %17 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %17, i64 %19
  %21 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %20, align 8
  store %struct.ubi_wl_entry* %21, %struct.ubi_wl_entry** %6, align 8
  %22 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %23 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 5
  %25 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %24, align 8
  %26 = icmp eq %struct.ubi_wl_entry* %22, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %11
  %28 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %29 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %30 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %29, i32 0, i32 1
  %31 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %35 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 4
  %37 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33, %27, %11
  %40 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %41 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  store i32 0, i32* %3, align 4
  br label %103

43:                                               ; preds = %33
  %44 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %45 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 3
  %47 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %46, align 8
  %48 = icmp eq %struct.ubi_wl_entry* %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %51 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dbg_wl(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = call i32 (...) @yield()
  br label %11

56:                                               ; preds = %43
  %57 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %58 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %59 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %58, i32 0, i32 2
  %60 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %64 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %65 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %66 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %65, i32 0, i32 2
  %67 = call i32 @self_check_in_wl_tree(%struct.ubi_device* %63, %struct.ubi_wl_entry* %64, i32* %66)
  %68 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %69 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %72 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %71, i32 0, i32 2
  %73 = call i32 @rb_erase(i32* %70, i32* %72)
  br label %93

74:                                               ; preds = %56
  %75 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %76 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %77 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @prot_queue_del(%struct.ubi_device* %75, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ubi_err(%struct.ubi_device* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %87 = call i32 @ubi_ro_mode(%struct.ubi_device* %86)
  %88 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %89 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %103

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92, %62
  %94 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %95 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %96 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %95, i32 0, i32 1
  %97 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %94, i32* %96)
  %98 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %99 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %102 = call i32 @ensure_wear_leveling(%struct.ubi_device* %101, i32 0)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %93, %82, %39
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @in_wl_tree(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dbg_wl(i8*, i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @self_check_in_wl_tree(%struct.ubi_device*, %struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @prot_queue_del(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @wl_tree_add(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @ensure_wear_leveling(%struct.ubi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
