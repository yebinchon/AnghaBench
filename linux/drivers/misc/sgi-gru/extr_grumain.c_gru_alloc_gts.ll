; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_alloc_gts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_alloc_gts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gru_thread_state = type { i32, i32, i8, i32, i32, i32, i32, i32, i32, %struct.gru_mm_struct*, %struct.vm_area_struct*, i32, i32, i32, i32, i32 }
%struct.gru_mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gts_alloc = common dso_local global i32 0, align 4
@NULLCTX = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"alloc gts %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gru_thread_state* @gru_alloc_gts(%struct.vm_area_struct* %0, i32 %1, i32 %2, i8 zeroext %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.gru_thread_state*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gru_thread_state*, align 8
  %15 = alloca %struct.gru_mm_struct*, align 8
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @DSR_BYTES(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @CBR_BYTES(i32 %19)
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 80
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.gru_thread_state* @kmalloc(i32 %26, i32 %27)
  store %struct.gru_thread_state* %28, %struct.gru_thread_state** %14, align 8
  %29 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %30 = icmp ne %struct.gru_thread_state* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.gru_thread_state* @ERR_PTR(i32 %33)
  store %struct.gru_thread_state* %34, %struct.gru_thread_state** %7, align 8
  br label %106

35:                                               ; preds = %6
  %36 = load i32, i32* @gts_alloc, align 4
  %37 = call i32 @STAT(i32 %36)
  %38 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %39 = call i32 @memset(%struct.gru_thread_state* %38, i32 0, i32 80)
  %40 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %41 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %40, i32 0, i32 15
  %42 = call i32 @atomic_set(i32* %41, i32 1)
  %43 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %44 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %43, i32 0, i32 14
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %48 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %51 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i8, i8* %11, align 1
  %53 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %54 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %53, i32 0, i32 2
  store i8 %52, i8* %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %57 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %59 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %58, i32 0, i32 4
  store i32 -1, i32* %59, align 8
  %60 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %61 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %60, i32 0, i32 5
  store i32 -1, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %64 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @NULLCTX, align 4
  %66 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %67 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 8
  %68 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %69 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %68, i32 0, i32 7
  store i32 -1, i32* %69, align 4
  %70 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %71 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %70, i32 0, i32 8
  store i32 -1, i32* %71, align 8
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = call i32 @GRU_SIZEAVAIL(i32 %72)
  %74 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %75 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %74, i32 0, i32 12
  store i32 %73, i32* %75, align 4
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %77 = icmp ne %struct.vm_area_struct* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %35
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %83 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %82, i32 0, i32 11
  store i32 %81, i32* %83, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %85 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %86 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %85, i32 0, i32 10
  store %struct.vm_area_struct* %84, %struct.vm_area_struct** %86, align 8
  %87 = call %struct.gru_mm_struct* (...) @gru_register_mmu_notifier()
  store %struct.gru_mm_struct* %87, %struct.gru_mm_struct** %15, align 8
  %88 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %15, align 8
  %89 = call i64 @IS_ERR(%struct.gru_mm_struct* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %101

92:                                               ; preds = %78
  %93 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %15, align 8
  %94 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %95 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %94, i32 0, i32 9
  store %struct.gru_mm_struct* %93, %struct.gru_mm_struct** %95, align 8
  br label %96

96:                                               ; preds = %92, %35
  %97 = load i32, i32* @grudev, align 4
  %98 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %99 = call i32 @gru_dbg(i32 %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.gru_thread_state* %98)
  %100 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  store %struct.gru_thread_state* %100, %struct.gru_thread_state** %7, align 8
  br label %106

101:                                              ; preds = %91
  %102 = load %struct.gru_thread_state*, %struct.gru_thread_state** %14, align 8
  %103 = call i32 @gts_drop(%struct.gru_thread_state* %102)
  %104 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %15, align 8
  %105 = call %struct.gru_thread_state* @ERR_CAST(%struct.gru_mm_struct* %104)
  store %struct.gru_thread_state* %105, %struct.gru_thread_state** %7, align 8
  br label %106

106:                                              ; preds = %101, %96, %31
  %107 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  ret %struct.gru_thread_state* %107
}

declare dso_local i32 @DSR_BYTES(i32) #1

declare dso_local i32 @CBR_BYTES(i32) #1

declare dso_local %struct.gru_thread_state* @kmalloc(i32, i32) #1

declare dso_local %struct.gru_thread_state* @ERR_PTR(i32) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @memset(%struct.gru_thread_state*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @GRU_SIZEAVAIL(i32) #1

declare dso_local %struct.gru_mm_struct* @gru_register_mmu_notifier(...) #1

declare dso_local i64 @IS_ERR(%struct.gru_mm_struct*) #1

declare dso_local i32 @gru_dbg(i32, i8*, %struct.gru_thread_state*) #1

declare dso_local i32 @gts_drop(%struct.gru_thread_state*) #1

declare dso_local %struct.gru_thread_state* @ERR_CAST(%struct.gru_mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
