; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_create_empty_lvol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_create_empty_lvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_vtbl_record = type { i32 }
%struct.ubi_device = type { i32, i32 }
%struct.ubi_attach_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@empty_vtbl_record = common dso_local global i32 0, align 4
@UBI_VTBL_RECORD_SIZE = common dso_local global i32 0, align 4
@UBI_LAYOUT_VOLUME_EBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_vtbl_record* (%struct.ubi_device*, %struct.ubi_attach_info*)* @create_empty_lvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_vtbl_record* @create_empty_lvol(%struct.ubi_device* %0, %struct.ubi_attach_info* %1) #0 {
  %3 = alloca %struct.ubi_vtbl_record*, align 8
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_attach_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_vtbl_record*, align 8
  %8 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_attach_info* %1, %struct.ubi_attach_info** %5, align 8
  %9 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ubi_vtbl_record* @vzalloc(i32 %11)
  store %struct.ubi_vtbl_record* %12, %struct.ubi_vtbl_record** %7, align 8
  %13 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %7, align 8
  %14 = icmp ne %struct.ubi_vtbl_record* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ubi_vtbl_record* @ERR_PTR(i32 %17)
  store %struct.ubi_vtbl_record* %18, %struct.ubi_vtbl_record** %3, align 8
  br label %60

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %23 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %27, i64 %29
  %31 = load i32, i32* @UBI_VTBL_RECORD_SIZE, align 4
  %32 = call i32 @memcpy(%struct.ubi_vtbl_record* %30, i32* @empty_vtbl_record, i32 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %20

36:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @UBI_LAYOUT_VOLUME_EBS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %43 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %7, align 8
  %46 = call i32 @create_vtbl(%struct.ubi_device* %42, %struct.ubi_attach_info* %43, i32 %44, %struct.ubi_vtbl_record* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %7, align 8
  %51 = call i32 @vfree(%struct.ubi_vtbl_record* %50)
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.ubi_vtbl_record* @ERR_PTR(i32 %52)
  store %struct.ubi_vtbl_record* %53, %struct.ubi_vtbl_record** %3, align 8
  br label %60

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %37

58:                                               ; preds = %37
  %59 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %7, align 8
  store %struct.ubi_vtbl_record* %59, %struct.ubi_vtbl_record** %3, align 8
  br label %60

60:                                               ; preds = %58, %49, %15
  %61 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  ret %struct.ubi_vtbl_record* %61
}

declare dso_local %struct.ubi_vtbl_record* @vzalloc(i32) #1

declare dso_local %struct.ubi_vtbl_record* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.ubi_vtbl_record*, i32*, i32) #1

declare dso_local i32 @create_vtbl(%struct.ubi_device*, %struct.ubi_attach_info*, i32, %struct.ubi_vtbl_record*) #1

declare dso_local i32 @vfree(%struct.ubi_vtbl_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
