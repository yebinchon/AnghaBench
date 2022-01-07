; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_erase_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_ec_hdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UBI_MAX_ERASECOUNTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_block(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_ec_hdr*, align 8
  %8 = alloca i64, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ubi_ec_hdr* @kzalloc(i32 %11, i32 %12)
  store %struct.ubi_ec_hdr* %13, %struct.ubi_ec_hdr** %7, align 8
  %14 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %15 = icmp ne %struct.ubi_ec_hdr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %23 = call i32 @ubi_io_read_ec_hdr(%struct.ubi_device* %20, i32 %21, %struct.ubi_ec_hdr* %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %75

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %75

37:                                               ; preds = %30, %27
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ubi_io_sync_erase(%struct.ubi_device* %39, i32 %40, i32 0)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %75

45:                                               ; preds = %38
  %46 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %47 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @be64_to_cpu(i32 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @UBI_MAX_ERASECOUNTER, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %75

60:                                               ; preds = %45
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @cpu_to_be64(i64 %61)
  %63 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %68 = call i32 @ubi_io_write_ec_hdr(%struct.ubi_device* %65, i32 %66, %struct.ubi_ec_hdr* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %75

72:                                               ; preds = %60
  %73 = load i64, i64* %8, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %72, %71, %57, %44, %34, %26
  %76 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %77 = call i32 @kfree(%struct.ubi_ec_hdr* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.ubi_ec_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @ubi_io_read_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*, i32) #1

declare dso_local i32 @ubi_io_sync_erase(%struct.ubi_device*, i32, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @ubi_io_write_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*) #1

declare dso_local i32 @kfree(%struct.ubi_ec_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
