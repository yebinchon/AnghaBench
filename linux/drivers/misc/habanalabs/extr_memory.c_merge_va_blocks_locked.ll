; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_merge_va_blocks_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_merge_va_blocks_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.list_head = type { i32 }
%struct.hl_vm_va_block = type { i64, i64, i64, %struct.list_head }

@node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, %struct.list_head*, %struct.hl_vm_va_block*)* @merge_va_blocks_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_va_blocks_locked(%struct.hl_device* %0, %struct.list_head* %1, %struct.hl_vm_va_block* %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.hl_vm_va_block*, align 8
  %7 = alloca %struct.hl_vm_va_block*, align 8
  %8 = alloca %struct.hl_vm_va_block*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.hl_vm_va_block* %2, %struct.hl_vm_va_block** %6, align 8
  %9 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %10 = load i32, i32* @node, align 4
  %11 = call %struct.hl_vm_va_block* @list_prev_entry(%struct.hl_vm_va_block* %9, i32 %10)
  store %struct.hl_vm_va_block* %11, %struct.hl_vm_va_block** %7, align 8
  %12 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %7, align 8
  %13 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %12, i32 0, i32 3
  %14 = load %struct.list_head*, %struct.list_head** %5, align 8
  %15 = icmp ne %struct.list_head* %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %7, align 8
  %18 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %22 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %16
  %26 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %27 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %7, align 8
  %30 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %7, align 8
  %32 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %7, align 8
  %35 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %7, align 8
  %39 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %41 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %40, i32 0, i32 3
  %42 = call i32 @list_del(%struct.list_head* %41)
  %43 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %44 = call i32 @kfree(%struct.hl_vm_va_block* %43)
  %45 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %7, align 8
  store %struct.hl_vm_va_block* %45, %struct.hl_vm_va_block** %6, align 8
  br label %46

46:                                               ; preds = %25, %16, %3
  %47 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %48 = load i32, i32* @node, align 4
  %49 = call %struct.hl_vm_va_block* @list_next_entry(%struct.hl_vm_va_block* %47, i32 %48)
  store %struct.hl_vm_va_block* %49, %struct.hl_vm_va_block** %8, align 8
  %50 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %8, align 8
  %51 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %50, i32 0, i32 3
  %52 = load %struct.list_head*, %struct.list_head** %5, align 8
  %53 = icmp ne %struct.list_head* %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %46
  %55 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %56 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %8, align 8
  %60 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %54
  %64 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %65 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %8, align 8
  %68 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %8, align 8
  %70 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %8, align 8
  %73 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %8, align 8
  %77 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %79 = getelementptr inbounds %struct.hl_vm_va_block, %struct.hl_vm_va_block* %78, i32 0, i32 3
  %80 = call i32 @list_del(%struct.list_head* %79)
  %81 = load %struct.hl_vm_va_block*, %struct.hl_vm_va_block** %6, align 8
  %82 = call i32 @kfree(%struct.hl_vm_va_block* %81)
  br label %83

83:                                               ; preds = %63, %54, %46
  ret void
}

declare dso_local %struct.hl_vm_va_block* @list_prev_entry(%struct.hl_vm_va_block*, i32) #1

declare dso_local i32 @list_del(%struct.list_head*) #1

declare dso_local i32 @kfree(%struct.hl_vm_va_block*) #1

declare dso_local %struct.hl_vm_va_block* @list_next_entry(%struct.hl_vm_va_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
