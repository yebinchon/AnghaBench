; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_load_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_cxl_load_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32, i32 }
%struct.copro_slb = type { i32, i32 }
%struct.cxl_sste = type { i8*, i8* }

@.str = private unnamed_addr constant [38 x i8] c"CXL Populating SST[%li]: %#llx %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_context*, %struct.copro_slb*)* @cxl_load_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_load_segment(%struct.cxl_context* %0, %struct.copro_slb* %1) #0 {
  %3 = alloca %struct.cxl_context*, align 8
  %4 = alloca %struct.copro_slb*, align 8
  %5 = alloca %struct.cxl_sste*, align 8
  %6 = alloca i64, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %3, align 8
  store %struct.copro_slb* %1, %struct.copro_slb** %4, align 8
  %7 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %8 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %7, i32 0, i32 1
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %12 = load %struct.copro_slb*, %struct.copro_slb** %4, align 8
  %13 = call %struct.cxl_sste* @find_free_sste(%struct.cxl_context* %11, %struct.copro_slb* %12)
  store %struct.cxl_sste* %13, %struct.cxl_sste** %5, align 8
  %14 = load %struct.cxl_sste*, %struct.cxl_sste** %5, align 8
  %15 = icmp ne %struct.cxl_sste* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.cxl_sste*, %struct.cxl_sste** %5, align 8
  %19 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %20 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds %struct.cxl_sste, %struct.cxl_sste* %18, i64 %23
  %25 = load %struct.copro_slb*, %struct.copro_slb** %4, align 8
  %26 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.copro_slb*, %struct.copro_slb** %4, align 8
  %29 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_devel(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.cxl_sste* %24, i32 %27, i32 %30)
  %32 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %33 = load %struct.cxl_sste*, %struct.cxl_sste** %5, align 8
  %34 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %35 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds %struct.cxl_sste, %struct.cxl_sste* %33, i64 %38
  %40 = load %struct.copro_slb*, %struct.copro_slb** %4, align 8
  %41 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.copro_slb*, %struct.copro_slb** %4, align 8
  %44 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @trace_cxl_ste_write(%struct.cxl_context* %32, %struct.cxl_sste* %39, i32 %42, i32 %45)
  %47 = load %struct.copro_slb*, %struct.copro_slb** %4, align 8
  %48 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_be64(i32 %49)
  %51 = load %struct.cxl_sste*, %struct.cxl_sste** %5, align 8
  %52 = getelementptr inbounds %struct.cxl_sste, %struct.cxl_sste* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.copro_slb*, %struct.copro_slb** %4, align 8
  %54 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_be64(i32 %55)
  %57 = load %struct.cxl_sste*, %struct.cxl_sste** %5, align 8
  %58 = getelementptr inbounds %struct.cxl_sste, %struct.cxl_sste* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %17, %16
  %60 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %61 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %60, i32 0, i32 1
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.cxl_sste* @find_free_sste(%struct.cxl_context*, %struct.copro_slb*) #1

declare dso_local i32 @pr_devel(i8*, %struct.cxl_sste*, i32, i32) #1

declare dso_local i32 @trace_cxl_ste_write(%struct.cxl_context*, %struct.cxl_sste*, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
