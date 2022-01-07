; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_vpd_parse_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_vpd_parse_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.niu_vpd }
%struct.niu_vpd = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"FCode \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@probe = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"VPD_SCAN: FCODE major(%d) minor(%d)\0A\00", align 1
@NIU_VPD_MIN_MAJOR = common dso_local global i64 0, align 8
@NIU_VPD_MIN_MINOR = common dso_local global i64 0, align 8
@NIU_FLAGS_VPD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_vpd_parse_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_vpd_parse_version(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_vpd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %7 = load %struct.niu*, %struct.niu** %2, align 8
  %8 = getelementptr inbounds %struct.niu, %struct.niu* %7, i32 0, i32 2
  store %struct.niu_vpd* %8, %struct.niu_vpd** %3, align 8
  %9 = load %struct.niu_vpd*, %struct.niu_vpd** %3, align 8
  %10 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load %struct.niu_vpd*, %struct.niu_vpd** %3, align 8
  %15 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 5
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %34

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %17

34:                                               ; preds = %29, %17
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 5
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %88

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 5
  %43 = load i8*, i8** %5, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.niu_vpd*, %struct.niu_vpd** %3, align 8
  %48 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %47, i32 0, i32 1
  %49 = load %struct.niu_vpd*, %struct.niu_vpd** %3, align 8
  %50 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %49, i32 0, i32 2
  %51 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* %48, i64* %50)
  %52 = load %struct.niu*, %struct.niu** %2, align 8
  %53 = load i32, i32* @probe, align 4
  %54 = load i32, i32* @KERN_DEBUG, align 4
  %55 = load %struct.niu*, %struct.niu** %2, align 8
  %56 = getelementptr inbounds %struct.niu, %struct.niu* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.niu_vpd*, %struct.niu_vpd** %3, align 8
  %59 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.niu_vpd*, %struct.niu_vpd** %3, align 8
  %62 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @netif_printk(%struct.niu* %52, i32 %53, i32 %54, i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %60, i64 %63)
  %65 = load %struct.niu_vpd*, %struct.niu_vpd** %3, align 8
  %66 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NIU_VPD_MIN_MAJOR, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %40
  %71 = load %struct.niu_vpd*, %struct.niu_vpd** %3, align 8
  %72 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NIU_VPD_MIN_MAJOR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.niu_vpd*, %struct.niu_vpd** %3, align 8
  %78 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NIU_VPD_MIN_MINOR, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76, %40
  %83 = load i32, i32* @NIU_FLAGS_VPD_VALID, align 4
  %84 = load %struct.niu*, %struct.niu** %2, align 8
  %85 = getelementptr inbounds %struct.niu, %struct.niu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %39, %82, %76, %70
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i32 @netif_printk(%struct.niu*, i32, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
