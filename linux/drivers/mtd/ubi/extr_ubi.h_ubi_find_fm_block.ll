; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_ubi.h_ubi_find_fm_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_ubi.h_ubi_find_fm_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_wl_entry = type { i32 }
%struct.ubi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ubi_wl_entry** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_wl_entry* (%struct.ubi_device*, i32)* @ubi_find_fm_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_wl_entry* @ubi_find_fm_block(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_wl_entry*, align 8
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %8 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %45, %11
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %12
  %21 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %25, i64 %27
  %29 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %28, align 8
  %30 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %20
  %35 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %39, i64 %41
  %43 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %42, align 8
  store %struct.ubi_wl_entry* %43, %struct.ubi_wl_entry** %3, align 8
  br label %50

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %12

48:                                               ; preds = %12
  br label %49

49:                                               ; preds = %48, %2
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %3, align 8
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %3, align 8
  ret %struct.ubi_wl_entry* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
