; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_write_ec_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_write_ec_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32 }
%struct.ubi_ec_hdr = type { i8*, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [26 x i8] c"write EC header to PEB %d\00", align 1
@UBI_EC_HDR_MAGIC = common dso_local global i32 0, align 4
@UBI_VERSION = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_EC_HDR_SIZE_CRC = common dso_local global i32 0, align 4
@POWER_CUT_EC_WRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_write_ec_hdr(%struct.ubi_device* %0, i32 %1, %struct.ubi_ec_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_ec_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ubi_ec_hdr* %2, %struct.ubi_ec_hdr** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @dbg_io(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %17 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ false, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @ubi_assert(i32 %22)
  %24 = load i32, i32* @UBI_EC_HDR_MAGIC, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @UBI_VERSION, align 4
  %29 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %36 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %44 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %48 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @UBI_CRC32_INIT, align 4
  %50 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %51 = load i32, i32* @UBI_EC_HDR_SIZE_CRC, align 4
  %52 = call i32 @crc32(i32 %49, %struct.ubi_ec_hdr* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %56 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %60 = call i32 @self_check_ec_hdr(%struct.ubi_device* %57, i32 %58, %struct.ubi_ec_hdr* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %20
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %82

65:                                               ; preds = %20
  %66 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %67 = load i32, i32* @POWER_CUT_EC_WRITE, align 4
  %68 = call i64 @ubi_dbg_power_cut(%struct.ubi_device* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EROFS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %82

73:                                               ; preds = %65
  %74 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %75 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %7, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %78 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ubi_io_write(%struct.ubi_device* %74, %struct.ubi_ec_hdr* %75, i32 %76, i32 0, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %73, %70, %63
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @dbg_io(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @crc32(i32, %struct.ubi_ec_hdr*, i32) #1

declare dso_local i32 @self_check_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*) #1

declare dso_local i64 @ubi_dbg_power_cut(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_io_write(%struct.ubi_device*, %struct.ubi_ec_hdr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
