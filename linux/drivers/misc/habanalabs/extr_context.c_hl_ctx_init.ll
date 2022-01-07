; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_context.c_hl_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_context.c_hl_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_ctx = type { i32, i64, i64, i32, i32, i32, %struct.hl_device* }

@HL_KERNEL_ASID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to init mmu ctx module\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"No free ASID, failed to create context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to init mem ctx module\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_ctx_init(%struct.hl_device* %0, %struct.hl_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_ctx* %1, %struct.hl_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %10 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %11 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %10, i32 0, i32 6
  store %struct.hl_device* %9, %struct.hl_device** %11, align 8
  %12 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %12, i32 0, i32 5
  %14 = call i32 @kref_init(i32* %13)
  %15 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %17, i32 0, i32 4
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %20, i32 0, i32 3
  %22 = call i32 @atomic_set(i32* %21, i32 1)
  %23 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load i64, i64* @HL_KERNEL_ASID_ID, align 8
  %29 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %32 = call i32 @hl_mmu_ctx_init(%struct.hl_ctx* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %37 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %71

40:                                               ; preds = %27
  br label %70

41:                                               ; preds = %3
  %42 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %43 = call i64 @hl_asid_alloc(%struct.hl_device* %42)
  %44 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %41
  %51 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %52 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %85

57:                                               ; preds = %41
  %58 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %59 = call i32 @hl_vm_ctx_init(%struct.hl_ctx* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %64 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %71

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %40
  store i32 0, i32* %4, align 4
  br label %85

71:                                               ; preds = %62, %35
  %72 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HL_KERNEL_ASID_ID, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %79 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @hl_asid_free(%struct.hl_device* %78, i64 %81)
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %70, %50
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hl_mmu_ctx_init(%struct.hl_ctx*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @hl_asid_alloc(%struct.hl_device*) #1

declare dso_local i32 @hl_vm_ctx_init(%struct.hl_ctx*) #1

declare dso_local i32 @hl_asid_free(%struct.hl_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
