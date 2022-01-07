; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_self_check_peb_ec_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_self_check_peb_ec_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_ec_hdr = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_EC_HDR_SIZE = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_EC_HDR_SIZE_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"bad CRC, calculated %#08x, read %#08x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"self-check failed for PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @self_check_peb_ec_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_check_peb_ec_hdr(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ubi_ec_hdr*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %11 = call i32 @ubi_dbg_chk_io(%struct.ubi_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

14:                                               ; preds = %2
  %15 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call %struct.ubi_ec_hdr* @kzalloc(i32 %17, i32 %18)
  store %struct.ubi_ec_hdr* %19, %struct.ubi_ec_hdr** %9, align 8
  %20 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %21 = icmp ne %struct.ubi_ec_hdr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %77

25:                                               ; preds = %14
  %26 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %27 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %30 = call i32 @ubi_io_read(%struct.ubi_device* %26, %struct.ubi_ec_hdr* %27, i32 %28, i32 0, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mtd_is_eccerr(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %73

42:                                               ; preds = %37, %33, %25
  %43 = load i32, i32* @UBI_CRC32_INIT, align 4
  %44 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %45 = load i32, i32* @UBI_EC_HDR_SIZE_CRC, align 4
  %46 = call i64 @crc32(i32 %43, %struct.ubi_ec_hdr* %44, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %48 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be32_to_cpu(i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %42
  %55 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %8, align 8
  %59 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %58)
  %60 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %64 = call i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr* %63)
  %65 = call i32 (...) @dump_stack()
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %73

68:                                               ; preds = %42
  %69 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %72 = call i32 @self_check_ec_hdr(%struct.ubi_device* %69, i32 %70, %struct.ubi_ec_hdr* %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %54, %41
  %74 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %9, align 8
  %75 = call i32 @kfree(%struct.ubi_ec_hdr* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %22, %13
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @ubi_dbg_chk_io(%struct.ubi_device*) #1

declare dso_local %struct.ubi_ec_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, %struct.ubi_ec_hdr*, i32, i32, i32) #1

declare dso_local i32 @mtd_is_eccerr(i32) #1

declare dso_local i64 @crc32(i32, %struct.ubi_ec_hdr*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @self_check_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*) #1

declare dso_local i32 @kfree(%struct.ubi_ec_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
