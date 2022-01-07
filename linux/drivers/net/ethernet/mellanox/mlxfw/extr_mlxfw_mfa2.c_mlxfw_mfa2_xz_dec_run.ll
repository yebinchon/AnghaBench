; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_xz_dec_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_xz_dec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i32 }
%struct.xz_buf = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"xz no memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"xz file corrupted\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"xz format not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unsupported xz option\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"xz dictionary too small\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"xz error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec*, %struct.xz_buf*, i32*)* @mlxfw_mfa2_xz_dec_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxfw_mfa2_xz_dec_run(%struct.xz_dec* %0, %struct.xz_buf* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xz_dec*, align 8
  %6 = alloca %struct.xz_buf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.xz_dec* %0, %struct.xz_dec** %5, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.xz_dec*, %struct.xz_dec** %5, align 8
  %10 = load %struct.xz_buf*, %struct.xz_buf** %6, align 8
  %11 = call i32 @xz_dec_run(%struct.xz_dec* %9, %struct.xz_buf* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %37 [
    i32 128, label %13
    i32 130, label %15
    i32 131, label %17
    i32 134, label %21
    i32 133, label %25
    i32 129, label %29
    i32 132, label %33
  ]

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %4, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %42

29:                                               ; preds = %3
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %3
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %33, %29, %25, %21, %17, %15, %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @xz_dec_run(%struct.xz_dec*, %struct.xz_buf*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
