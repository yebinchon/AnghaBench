; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_free_spa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_free_spa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_link = type { %struct.spa*, i32, i32, i32 }
%struct.spa = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Freeing SPA for %x:%x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocxl_link*)* @free_spa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_spa(%struct.ocxl_link* %0) #0 {
  %2 = alloca %struct.ocxl_link*, align 8
  %3 = alloca %struct.spa*, align 8
  store %struct.ocxl_link* %0, %struct.ocxl_link** %2, align 8
  %4 = load %struct.ocxl_link*, %struct.ocxl_link** %2, align 8
  %5 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %4, i32 0, i32 0
  %6 = load %struct.spa*, %struct.spa** %5, align 8
  store %struct.spa* %6, %struct.spa** %3, align 8
  %7 = load %struct.ocxl_link*, %struct.ocxl_link** %2, align 8
  %8 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ocxl_link*, %struct.ocxl_link** %2, align 8
  %11 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ocxl_link*, %struct.ocxl_link** %2, align 8
  %14 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load %struct.spa*, %struct.spa** %3, align 8
  %18 = icmp ne %struct.spa* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load %struct.spa*, %struct.spa** %3, align 8
  %21 = getelementptr inbounds %struct.spa, %struct.spa* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.spa*, %struct.spa** %3, align 8
  %26 = getelementptr inbounds %struct.spa, %struct.spa* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.spa*, %struct.spa** %3, align 8
  %29 = getelementptr inbounds %struct.spa, %struct.spa* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @free_pages(i64 %27, i32 %30)
  %32 = load %struct.spa*, %struct.spa** %3, align 8
  %33 = call i32 @kfree(%struct.spa* %32)
  %34 = load %struct.ocxl_link*, %struct.ocxl_link** %2, align 8
  %35 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %34, i32 0, i32 0
  store %struct.spa* null, %struct.spa** %35, align 8
  br label %36

36:                                               ; preds = %24, %19, %1
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.spa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
