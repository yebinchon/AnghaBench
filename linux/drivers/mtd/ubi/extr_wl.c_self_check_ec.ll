; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_self_check_ec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_self_check_ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_ec_hdr = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"self-check failed for PEB %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"read EC is %lld, should be %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32, i32)* @self_check_ec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_check_ec(%struct.ubi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ubi_ec_hdr*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %12 = call i32 @ubi_dbg_chk_gen(%struct.ubi_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

15:                                               ; preds = %3
  %16 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %17 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.ubi_ec_hdr* @kzalloc(i32 %18, i32 %19)
  store %struct.ubi_ec_hdr* %20, %struct.ubi_ec_hdr** %10, align 8
  %21 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %22 = icmp ne %struct.ubi_ec_hdr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %15
  %27 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %30 = call i32 @ubi_io_read_ec_hdr(%struct.ubi_device* %27, i32 %28, %struct.ubi_ec_hdr* %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %65

38:                                               ; preds = %33, %26
  %39 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %40 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @be64_to_cpu(i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %38
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %48, %50
  %52 = icmp sgt i64 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 (%struct.ubi_device*, i8*, i64, ...) @ubi_err(%struct.ubi_device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (%struct.ubi_device*, i8*, i64, ...) @ubi_err(%struct.ubi_device* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %59, i32 %60)
  %62 = call i32 (...) @dump_stack()
  store i32 1, i32* %8, align 4
  br label %64

63:                                               ; preds = %47, %38
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %53
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %67 = call i32 @kfree(%struct.ubi_ec_hdr* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %23, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @ubi_dbg_chk_gen(%struct.ubi_device*) #1

declare dso_local %struct.ubi_ec_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @ubi_io_read_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i64, ...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @kfree(%struct.ubi_ec_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
