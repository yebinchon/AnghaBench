; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_hwinfo.c_hwinfo_fetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_hwinfo.c_hwinfo_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_hwinfo = type { i32 }
%struct.nfp_cpp = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HWINFO_WAIT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"NFP access error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfp_hwinfo* (%struct.nfp_cpp*, i64*)* @hwinfo_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfp_hwinfo* @hwinfo_fetch(%struct.nfp_cpp* %0, i64* %1) #0 {
  %3 = alloca %struct.nfp_hwinfo*, align 8
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfp_hwinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* @HWINFO_WAIT, align 8
  %12 = load i64, i64* @HZ, align 8
  %13 = mul i64 %11, %12
  %14 = add i64 %10, %13
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = call %struct.nfp_hwinfo* @hwinfo_try_fetch(%struct.nfp_cpp* %17, i64* %18)
  store %struct.nfp_hwinfo* %19, %struct.nfp_hwinfo** %7, align 8
  %20 = load %struct.nfp_hwinfo*, %struct.nfp_hwinfo** %7, align 8
  %21 = icmp ne %struct.nfp_hwinfo* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load %struct.nfp_hwinfo*, %struct.nfp_hwinfo** %7, align 8
  store %struct.nfp_hwinfo* %23, %struct.nfp_hwinfo** %3, align 8
  br label %37

24:                                               ; preds = %15
  %25 = call i32 @msleep_interruptible(i32 100)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @time_after(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %24
  %34 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %35 = call i32 @nfp_err(%struct.nfp_cpp* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.nfp_hwinfo* null, %struct.nfp_hwinfo** %3, align 8
  br label %37

36:                                               ; preds = %28
  br label %15

37:                                               ; preds = %33, %22
  %38 = load %struct.nfp_hwinfo*, %struct.nfp_hwinfo** %3, align 8
  ret %struct.nfp_hwinfo* %38
}

declare dso_local %struct.nfp_hwinfo* @hwinfo_try_fetch(%struct.nfp_cpp*, i64*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
