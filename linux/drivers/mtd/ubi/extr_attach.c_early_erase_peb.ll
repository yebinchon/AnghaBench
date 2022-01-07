; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_early_erase_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_early_erase_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_attach_info = type { i32 }
%struct.ubi_ec_hdr = type { i32 }

@UBI_MAX_ERASECOUNTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"erase counter overflow at PEB %d, EC %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_attach_info*, i32, i32)* @early_erase_peb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @early_erase_peb(%struct.ubi_device* %0, %struct.ubi_attach_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_attach_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubi_ec_hdr*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_attach_info* %1, %struct.ubi_attach_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @UBI_MAX_ERASECOUNTER, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ubi_err(%struct.ubi_device* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %54

23:                                               ; preds = %4
  %24 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ubi_ec_hdr* @kzalloc(i32 %26, i32 %27)
  store %struct.ubi_ec_hdr* %28, %struct.ubi_ec_hdr** %11, align 8
  %29 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %11, align 8
  %30 = icmp ne %struct.ubi_ec_hdr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %54

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @cpu_to_be64(i32 %35)
  %37 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %11, align 8
  %38 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ubi_io_sync_erase(%struct.ubi_device* %39, i32 %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %50

45:                                               ; preds = %34
  %46 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %11, align 8
  %49 = call i32 @ubi_io_write_ec_hdr(%struct.ubi_device* %46, i32 %47, %struct.ubi_ec_hdr* %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %45, %44
  %51 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %11, align 8
  %52 = call i32 @kfree(%struct.ubi_ec_hdr* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %31, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local %struct.ubi_ec_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_io_sync_erase(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @ubi_io_write_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*) #1

declare dso_local i32 @kfree(%struct.ubi_ec_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
