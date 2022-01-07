; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_validate_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_validate_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_vid_hdr = type { i32, i32, i32, i32 }
%struct.ubi_ainf_volume = type { i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"inconsistent vol_id\00", align 1
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@UBI_VID_STATIC = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"inconsistent vol_type\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"inconsistent used_ebs\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"inconsistent data_pad\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"inconsistent VID header at PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_vid_hdr*, %struct.ubi_ainf_volume*, i32)* @validate_vid_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_vid_hdr(%struct.ubi_device* %0, %struct.ubi_vid_hdr* %1, %struct.ubi_ainf_volume* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_vid_hdr*, align 8
  %8 = alloca %struct.ubi_ainf_volume*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_vid_hdr* %1, %struct.ubi_vid_hdr** %7, align 8
  store %struct.ubi_ainf_volume* %2, %struct.ubi_ainf_volume** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %16 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %31 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %37 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %42 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %80

43:                                               ; preds = %34
  %44 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %45 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @UBI_VID_STATIC, align 4
  store i32 %50, i32* %14, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %59 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %80

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %63 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %68 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %80

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %72 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %77 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %80

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %4
  store i32 0, i32* %5, align 4
  br label %90

80:                                               ; preds = %75, %66, %57, %40
  %81 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %85 = call i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr* %84)
  %86 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %8, align 8
  %87 = call i32 @ubi_dump_av(%struct.ubi_ainf_volume* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %80, %79
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_dump_av(%struct.ubi_ainf_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
