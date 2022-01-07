; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_mbus_find_fmtdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_mbus_find_fmtdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_mbus_pixelfmt = type { i32 }
%struct.pxa_mbus_lookup = type { i64, %struct.pxa_mbus_pixelfmt }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxa_mbus_pixelfmt* (i64, %struct.pxa_mbus_lookup*, i32)* @pxa_mbus_find_fmtdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxa_mbus_pixelfmt* @pxa_mbus_find_fmtdesc(i64 %0, %struct.pxa_mbus_lookup* %1, i32 %2) #0 {
  %4 = alloca %struct.pxa_mbus_pixelfmt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pxa_mbus_lookup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.pxa_mbus_lookup* %1, %struct.pxa_mbus_lookup** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %29, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.pxa_mbus_lookup*, %struct.pxa_mbus_lookup** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pxa_mbus_lookup, %struct.pxa_mbus_lookup* %14, i64 %16
  %18 = getelementptr inbounds %struct.pxa_mbus_lookup, %struct.pxa_mbus_lookup* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.pxa_mbus_lookup*, %struct.pxa_mbus_lookup** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pxa_mbus_lookup, %struct.pxa_mbus_lookup* %23, i64 %25
  %27 = getelementptr inbounds %struct.pxa_mbus_lookup, %struct.pxa_mbus_lookup* %26, i32 0, i32 1
  store %struct.pxa_mbus_pixelfmt* %27, %struct.pxa_mbus_pixelfmt** %4, align 8
  br label %33

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %9

32:                                               ; preds = %9
  store %struct.pxa_mbus_pixelfmt* null, %struct.pxa_mbus_pixelfmt** %4, align 8
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %4, align 8
  ret %struct.pxa_mbus_pixelfmt* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
