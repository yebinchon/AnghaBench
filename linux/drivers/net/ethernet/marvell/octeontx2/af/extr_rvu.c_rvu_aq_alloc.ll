; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_aq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_aq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.admin_queue = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_aq_alloc(%struct.rvu* %0, %struct.admin_queue** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvu*, align 8
  %8 = alloca %struct.admin_queue**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.admin_queue*, align 8
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %7, align 8
  store %struct.admin_queue** %1, %struct.admin_queue*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.rvu*, %struct.rvu** %7, align 8
  %15 = getelementptr inbounds %struct.rvu, %struct.rvu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.admin_queue* @devm_kzalloc(i32 %16, i32 12, i32 %17)
  %19 = load %struct.admin_queue**, %struct.admin_queue*** %8, align 8
  store %struct.admin_queue* %18, %struct.admin_queue** %19, align 8
  %20 = load %struct.admin_queue**, %struct.admin_queue*** %8, align 8
  %21 = load %struct.admin_queue*, %struct.admin_queue** %20, align 8
  %22 = icmp ne %struct.admin_queue* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %66

26:                                               ; preds = %5
  %27 = load %struct.admin_queue**, %struct.admin_queue*** %8, align 8
  %28 = load %struct.admin_queue*, %struct.admin_queue** %27, align 8
  store %struct.admin_queue* %28, %struct.admin_queue** %12, align 8
  %29 = load %struct.rvu*, %struct.rvu** %7, align 8
  %30 = getelementptr inbounds %struct.rvu, %struct.rvu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.admin_queue*, %struct.admin_queue** %12, align 8
  %33 = getelementptr inbounds %struct.admin_queue, %struct.admin_queue* %32, i32 0, i32 2
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @qmem_alloc(i32 %31, i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.rvu*, %struct.rvu** %7, align 8
  %41 = getelementptr inbounds %struct.rvu, %struct.rvu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.admin_queue*, %struct.admin_queue** %12, align 8
  %44 = call i32 @devm_kfree(i32 %42, %struct.admin_queue* %43)
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %66

46:                                               ; preds = %26
  %47 = load %struct.rvu*, %struct.rvu** %7, align 8
  %48 = getelementptr inbounds %struct.rvu, %struct.rvu* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.admin_queue*, %struct.admin_queue** %12, align 8
  %51 = getelementptr inbounds %struct.admin_queue, %struct.admin_queue* %50, i32 0, i32 1
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @qmem_alloc(i32 %49, i32* %51, i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.rvu*, %struct.rvu** %7, align 8
  %59 = load %struct.admin_queue*, %struct.admin_queue** %12, align 8
  %60 = call i32 @rvu_aq_free(%struct.rvu* %58, %struct.admin_queue* %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %46
  %63 = load %struct.admin_queue*, %struct.admin_queue** %12, align 8
  %64 = getelementptr inbounds %struct.admin_queue, %struct.admin_queue* %63, i32 0, i32 0
  %65 = call i32 @spin_lock_init(i32* %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %57, %39, %23
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.admin_queue* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @qmem_alloc(i32, i32*, i32, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.admin_queue*) #1

declare dso_local i32 @rvu_aq_free(%struct.rvu*, %struct.admin_queue*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
