; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_ubi_change_vtbl_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_ubi_change_vtbl_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_vtbl_record = type { i32 }
%struct.ubi_device = type { i32, i32* }

@empty_vtbl_record = common dso_local global %struct.ubi_vtbl_record zeroinitializer, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VTBL_RECORD_SIZE_CRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device* %0, i32 %1, %struct.ubi_vtbl_record* %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_vtbl_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ubi_vtbl_record* %2, %struct.ubi_vtbl_record** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ false, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ubi_assert(i32 %19)
  %21 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %6, align 8
  %22 = icmp ne %struct.ubi_vtbl_record* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.ubi_vtbl_record* @empty_vtbl_record, %struct.ubi_vtbl_record** %6, align 8
  br label %33

24:                                               ; preds = %17
  %25 = load i32, i32* @UBI_CRC32_INIT, align 4
  %26 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %6, align 8
  %27 = load i32, i32* @UBI_VTBL_RECORD_SIZE_CRC, align 4
  %28 = call i32 @crc32(i32 %25, %struct.ubi_vtbl_record* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @cpu_to_be32(i32 %29)
  %31 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %6, align 8
  %32 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %24, %23
  %34 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %35 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %6, align 8
  %41 = call i32 @memcpy(i32* %39, %struct.ubi_vtbl_record* %40, i32 4)
  %42 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %43 = call i32 @ubi_update_layout_vol(%struct.ubi_device* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %45 = call i32 @self_vtbl_check(%struct.ubi_device* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  br label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  ret i32 %52
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @crc32(i32, %struct.ubi_vtbl_record*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ubi_vtbl_record*, i32) #1

declare dso_local i32 @ubi_update_layout_vol(%struct.ubi_device*) #1

declare dso_local i32 @self_vtbl_check(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
