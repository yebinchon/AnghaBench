; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_ocxl_link_update_pe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_ocxl_link_update_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_link = type { i32, %struct.spa* }
%struct.spa = type { i32, %struct.ocxl_process_element* }
%struct.ocxl_process_element = type { i32 }

@SPA_PASID_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPA_PE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_link_update_pe(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocxl_link*, align 8
  %9 = alloca %struct.spa*, align 8
  %10 = alloca %struct.ocxl_process_element*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ocxl_link*
  store %struct.ocxl_link* %14, %struct.ocxl_link** %8, align 8
  %15 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %16 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %15, i32 0, i32 1
  %17 = load %struct.spa*, %struct.spa** %16, align 8
  store %struct.spa* %17, %struct.spa** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SPA_PASID_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %53

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SPA_PE_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.spa*, %struct.spa** %9, align 8
  %29 = getelementptr inbounds %struct.spa, %struct.spa* %28, i32 0, i32 1
  %30 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ocxl_process_element, %struct.ocxl_process_element* %30, i64 %32
  store %struct.ocxl_process_element* %33, %struct.ocxl_process_element** %10, align 8
  %34 = load %struct.spa*, %struct.spa** %9, align 8
  %35 = getelementptr inbounds %struct.spa, %struct.spa* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @cpu_to_be32(i32 %37)
  %39 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %10, align 8
  %40 = getelementptr inbounds %struct.ocxl_process_element, %struct.ocxl_process_element* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = call i32 (...) @mb()
  %42 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %43 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @pnv_ocxl_spa_remove_pe_from_cache(i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.spa*, %struct.spa** %9, align 8
  %50 = getelementptr inbounds %struct.spa, %struct.spa* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %24, %21
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pnv_ocxl_spa_remove_pe_from_cache(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
