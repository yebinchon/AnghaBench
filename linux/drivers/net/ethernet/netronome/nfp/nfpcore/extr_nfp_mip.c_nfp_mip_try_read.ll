; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mip.c_nfp_mip_try_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mip.c_nfp_mip_try_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_mip = type { i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to read MIP data (%d, %zu)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NFP_MIP_SIGNATURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Incorrect MIP signature (0x%08x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_MIP_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Unsupported MIP version (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp*, i32, i32, %struct.nfp_mip*)* @nfp_mip_try_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_mip_try_read(%struct.nfp_cpp* %0, i32 %1, i32 %2, %struct.nfp_mip* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_cpp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_mip*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nfp_mip* %3, %struct.nfp_mip** %9, align 8
  %11 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.nfp_mip*, %struct.nfp_mip** %9, align 8
  %15 = call i32 @nfp_cpp_read(%struct.nfp_cpp* %11, i32 %12, i32 %13, %struct.nfp_mip* %14, i32 16)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 16
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @nfp_err(%struct.nfp_cpp* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21, i32 16)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %4
  %26 = load %struct.nfp_mip*, %struct.nfp_mip** %9, align 8
  %27 = getelementptr inbounds %struct.nfp_mip, %struct.nfp_mip* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NFP_MIP_SIGNATURE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %33 = load %struct.nfp_mip*, %struct.nfp_mip** %9, align 8
  %34 = getelementptr inbounds %struct.nfp_mip, %struct.nfp_mip* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @le32_to_cpu(i64 %35)
  %37 = call i32 @nfp_warn(%struct.nfp_cpp* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %56

40:                                               ; preds = %25
  %41 = load %struct.nfp_mip*, %struct.nfp_mip** %9, align 8
  %42 = getelementptr inbounds %struct.nfp_mip, %struct.nfp_mip* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NFP_MIP_VERSION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %48 = load %struct.nfp_mip*, %struct.nfp_mip** %9, align 8
  %49 = getelementptr inbounds %struct.nfp_mip, %struct.nfp_mip* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @le32_to_cpu(i64 %50)
  %52 = call i32 @nfp_warn(%struct.nfp_cpp* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %46, %31, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @nfp_cpp_read(%struct.nfp_cpp*, i32, i32, %struct.nfp_mip*, i32) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32, i32) #1

declare dso_local i32 @nfp_warn(%struct.nfp_cpp*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
