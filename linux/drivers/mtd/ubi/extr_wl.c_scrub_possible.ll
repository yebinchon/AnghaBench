; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_scrub_possible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_scrub_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { %struct.ubi_wl_entry*, %struct.ubi_wl_entry*, i32, i32 }
%struct.ubi_wl_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_wl_entry*)* @scrub_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_possible(%struct.ubi_device* %0, %struct.ubi_wl_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_wl_entry* %1, %struct.ubi_wl_entry** %5, align 8
  %6 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %7 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %8 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %7, i32 0, i32 3
  %9 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %14 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 2
  %16 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %37

19:                                               ; preds = %12
  %20 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 1
  %22 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %21, align 8
  %23 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %24 = icmp eq %struct.ubi_wl_entry* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %37

26:                                               ; preds = %19
  %27 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 0
  %29 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %28, align 8
  %30 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %31 = icmp eq %struct.ubi_wl_entry* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %37

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %32, %25, %18, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @in_wl_tree(%struct.ubi_wl_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
