; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_return_fm_pebs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_return_fm_pebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_fastmap_layout = type { i32, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_device*, %struct.ubi_fastmap_layout*)* @return_fm_pebs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_fm_pebs(%struct.ubi_device* %0, %struct.ubi_fastmap_layout* %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_fastmap_layout*, align 8
  %5 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store %struct.ubi_fastmap_layout* %1, %struct.ubi_fastmap_layout** %4, align 8
  %6 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %4, align 8
  %7 = icmp ne %struct.ubi_fastmap_layout* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %53

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %50, %9
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %4, align 8
  %13 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %10
  %17 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %4, align 8
  %18 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %16
  %26 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %27 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %4, align 8
  %28 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %4, align 8
  %36 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %26, i32* %33, i32 %34, i32 %41)
  %43 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %4, align 8
  %44 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %25, %16
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %10

53:                                               ; preds = %8, %10
  ret void
}

declare dso_local i32 @ubi_wl_put_fm_peb(%struct.ubi_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
