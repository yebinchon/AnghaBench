; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_devlink_param.c_nfp_devlink_param_u8_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_devlink_param.c_nfp_devlink_param_u8_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_devlink_param_u8_arg = type { i8*, i32* }
%struct.devlink = type { i32 }
%struct.devlink_param_gset_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nfp_pf = type { i32 }
%struct.nfp_nsp = type { i32 }

@nfp_devlink_u8_args = common dso_local global %struct.nfp_devlink_param_u8_arg* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't access NSP: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s=%u\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"HWinfo set failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i64, %struct.devlink_param_gset_ctx*)* @nfp_devlink_param_u8_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_param_u8_set(%struct.devlink* %0, i64 %1, %struct.devlink_param_gset_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.devlink_param_gset_ctx*, align 8
  %8 = alloca %struct.nfp_devlink_param_u8_arg*, align 8
  %9 = alloca %struct.nfp_pf*, align 8
  %10 = alloca %struct.nfp_nsp*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.devlink_param_gset_ctx* %2, %struct.devlink_param_gset_ctx** %7, align 8
  %13 = load %struct.devlink*, %struct.devlink** %5, align 8
  %14 = call %struct.nfp_pf* @devlink_priv(%struct.devlink* %13)
  store %struct.nfp_pf* %14, %struct.nfp_pf** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** @nfp_devlink_u8_args, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.nfp_devlink_param_u8_arg* %16)
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** @nfp_devlink_u8_args, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %23, i64 %24
  store %struct.nfp_devlink_param_u8_arg* %25, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %26 = load %struct.nfp_pf*, %struct.nfp_pf** %9, align 8
  %27 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.nfp_nsp* @nfp_nsp_open(i32 %28)
  store %struct.nfp_nsp* %29, %struct.nfp_nsp** %10, align 8
  %30 = load %struct.nfp_nsp*, %struct.nfp_nsp** %10, align 8
  %31 = call i64 @IS_ERR(%struct.nfp_nsp* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %22
  %34 = load %struct.nfp_nsp*, %struct.nfp_nsp** %10, align 8
  %35 = call i32 @PTR_ERR(%struct.nfp_nsp* %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.nfp_pf*, %struct.nfp_pf** %9, align 8
  %37 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @nfp_warn(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %73

42:                                               ; preds = %22
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %44 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %45 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %48 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snprintf(i8* %43, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %55)
  %57 = load %struct.nfp_nsp*, %struct.nfp_nsp** %10, align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %59 = call i32 @nfp_nsp_hwinfo_set(%struct.nfp_nsp* %57, i8* %58, i32 32)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %42
  %63 = load %struct.nfp_pf*, %struct.nfp_pf** %9, align 8
  %64 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @nfp_warn(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %69

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %62
  %70 = load %struct.nfp_nsp*, %struct.nfp_nsp** %10, align 8
  %71 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %33, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.nfp_pf* @devlink_priv(%struct.devlink*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.nfp_devlink_param_u8_arg*) #1

declare dso_local %struct.nfp_nsp* @nfp_nsp_open(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_warn(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @nfp_nsp_hwinfo_set(%struct.nfp_nsp*, i8*, i32) #1

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
