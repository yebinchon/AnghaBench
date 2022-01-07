; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_unpin_host_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_unpin_host_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hl_device*, i32, i32, i32)* }
%struct.hl_userptr = type { %struct.TYPE_5__*, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_unpin_host_memory(%struct.hl_device* %0, %struct.hl_userptr* %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_userptr*, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store %struct.hl_userptr* %1, %struct.hl_userptr** %4, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %9 = call i32 @hl_debugfs_remove_userptr(%struct.hl_device* %7, %struct.hl_userptr* %8)
  %10 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %11 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hl_device*, i32, i32, i32)*, i32 (%struct.hl_device*, i32, i32, i32)** %18, align 8
  %20 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %21 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %22 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %27 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %32 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %19(%struct.hl_device* %20, i32 %25, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %14, %2
  %36 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %37 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.page** @frame_vector_pages(i32 %38)
  store %struct.page** %39, %struct.page*** %5, align 8
  %40 = load %struct.page**, %struct.page*** %5, align 8
  %41 = call i32 @IS_ERR(%struct.page** %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %47 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @frame_vector_count(i32 %48)
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.page**, %struct.page*** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.page*, %struct.page** %52, i64 %54
  %56 = load %struct.page*, %struct.page** %55, align 8
  %57 = call i32 @set_page_dirty_lock(%struct.page* %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %44

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %35
  %63 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %64 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @put_vaddr_frames(i32 %65)
  %67 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %68 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @frame_vector_destroy(i32 %69)
  %71 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %72 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %71, i32 0, i32 1
  %73 = call i32 @list_del(i32* %72)
  %74 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %75 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 @sg_free_table(%struct.TYPE_5__* %76)
  %78 = load %struct.hl_userptr*, %struct.hl_userptr** %4, align 8
  %79 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = call i32 @kfree(%struct.TYPE_5__* %80)
  ret i32 0
}

declare dso_local i32 @hl_debugfs_remove_userptr(%struct.hl_device*, %struct.hl_userptr*) #1

declare dso_local %struct.page** @frame_vector_pages(i32) #1

declare dso_local i32 @IS_ERR(%struct.page**) #1

declare dso_local i32 @frame_vector_count(i32) #1

declare dso_local i32 @set_page_dirty_lock(%struct.page*) #1

declare dso_local i32 @put_vaddr_frames(i32) #1

declare dso_local i32 @frame_vector_destroy(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
