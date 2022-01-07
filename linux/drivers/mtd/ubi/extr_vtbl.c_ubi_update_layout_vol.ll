; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_ubi_update_layout_vol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_ubi_update_layout_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, %struct.ubi_volume** }
%struct.ubi_volume = type { i32 }

@UBI_LAYOUT_VOLUME_ID = common dso_local global i32 0, align 4
@UBI_LAYOUT_VOLUME_EBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*)* @ubi_update_layout_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubi_update_layout_vol(%struct.ubi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_volume*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  %7 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %8 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %7, i32 0, i32 2
  %9 = load %struct.ubi_volume**, %struct.ubi_volume*** %8, align 8
  %10 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %11 = load i32, i32* @UBI_LAYOUT_VOLUME_ID, align 4
  %12 = call i64 @vol_id2idx(%struct.ubi_device* %10, i32 %11)
  %13 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %9, i64 %12
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  store %struct.ubi_volume* %14, %struct.ubi_volume** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %35, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @UBI_LAYOUT_VOLUME_EBS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ubi_eba_atomic_leb_change(%struct.ubi_device* %20, %struct.ubi_volume* %21, i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %15

38:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @vol_id2idx(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_eba_atomic_leb_change(%struct.ubi_device*, %struct.ubi_volume*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
