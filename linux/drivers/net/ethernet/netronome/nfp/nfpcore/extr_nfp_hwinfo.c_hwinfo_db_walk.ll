; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_hwinfo.c_hwinfo_db_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_hwinfo.c_hwinfo_db_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_hwinfo = type { i8* }

@.str = private unnamed_addr constant [30 x i8] c"Bad HWINFO - overflowing key\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Bad HWINFO - overflowing value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp*, %struct.nfp_hwinfo*, i32)* @hwinfo_db_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwinfo_db_walk(%struct.nfp_cpp* %0, %struct.nfp_hwinfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_cpp*, align 8
  %6 = alloca %struct.nfp_hwinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %5, align 8
  store %struct.nfp_hwinfo* %1, %struct.nfp_hwinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nfp_hwinfo*, %struct.nfp_hwinfo** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_hwinfo, %struct.nfp_hwinfo* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %10, align 8
  %17 = load %struct.nfp_hwinfo*, %struct.nfp_hwinfo** %6, align 8
  %18 = getelementptr inbounds %struct.nfp_hwinfo, %struct.nfp_hwinfo* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  br label %20

20:                                               ; preds = %61, %3
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ult i8* %26, %27
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %31, label %68

31:                                               ; preds = %29
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp uge i8* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %43 = call i32 @nfp_warn(%struct.nfp_cpp* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %69

46:                                               ; preds = %31
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %57 = call i32 @nfp_warn(%struct.nfp_cpp* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %69

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %8, align 8
  br label %20

68:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %55, %41
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nfp_warn(%struct.nfp_cpp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
