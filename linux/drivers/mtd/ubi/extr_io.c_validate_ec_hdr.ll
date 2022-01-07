; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_validate_ec_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_validate_ec_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_ec_hdr = type { i64, i32, i32, i32 }

@UBI_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"node with incompatible UBI version found: this UBI version is %d, image version is %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"bad VID header offset %d, expected %d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"bad data offset %d, expected %d\00", align 1
@UBI_MAX_ERASECOUNTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"bad erase counter %lld\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bad EC header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_ec_hdr*)* @validate_ec_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ec_hdr(%struct.ubi_device* %0, %struct.ubi_ec_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_ec_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_ec_hdr* %1, %struct.ubi_ec_hdr** %5, align 8
  %9 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @be64_to_cpu(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @be32_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UBI_VERSION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %28 = load i64, i64* @UBI_VERSION, align 8
  %29 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %27, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %32)
  br label %72

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %37 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %44 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  br label %72

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %57 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58)
  br label %72

60:                                               ; preds = %47
  %61 = load i64, i64* %6, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @UBI_MAX_ERASECOUNTER, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63, %60
  %68 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  br label %72

71:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %78

72:                                               ; preds = %67, %53, %40, %26
  %73 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %74 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %5, align 8
  %76 = call i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr* %75)
  %77 = call i32 (...) @dump_stack()
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
