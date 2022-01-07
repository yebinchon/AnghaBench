; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_devlink_param.c_nfp_devlink_param_u8_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_devlink_param.c_nfp_devlink_param_u8_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_devlink_param_u8_arg = type { i8*, i64, i32, i32*, i32 }
%struct.devlink = type { i32 }
%struct.devlink_param_gset_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_pf = type { i32 }
%struct.nfp_nsp = type { i32 }

@nfp_devlink_u8_args = common dso_local global %struct.nfp_devlink_param_u8_arg* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't access NSP: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"HWinfo lookup failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"HWinfo '%s' value %li invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i64, %struct.devlink_param_gset_ctx*)* @nfp_devlink_param_u8_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_param_u8_get(%struct.devlink* %0, i64 %1, %struct.devlink_param_gset_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.devlink_param_gset_ctx*, align 8
  %8 = alloca %struct.nfp_devlink_param_u8_arg*, align 8
  %9 = alloca %struct.nfp_pf*, align 8
  %10 = alloca %struct.nfp_nsp*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.devlink_param_gset_ctx* %2, %struct.devlink_param_gset_ctx** %7, align 8
  %14 = load %struct.devlink*, %struct.devlink** %5, align 8
  %15 = call %struct.nfp_pf* @devlink_priv(%struct.devlink* %14)
  store %struct.nfp_pf* %15, %struct.nfp_pf** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** @nfp_devlink_u8_args, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.nfp_devlink_param_u8_arg* %17)
  %19 = icmp uge i64 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %116

23:                                               ; preds = %3
  %24 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** @nfp_devlink_u8_args, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %24, i64 %25
  store %struct.nfp_devlink_param_u8_arg* %26, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %27 = load %struct.nfp_pf*, %struct.nfp_pf** %9, align 8
  %28 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.nfp_nsp* @nfp_nsp_open(i32 %29)
  store %struct.nfp_nsp* %30, %struct.nfp_nsp** %10, align 8
  %31 = load %struct.nfp_nsp*, %struct.nfp_nsp** %10, align 8
  %32 = call i64 @IS_ERR(%struct.nfp_nsp* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.nfp_nsp*, %struct.nfp_nsp** %10, align 8
  %36 = call i32 @PTR_ERR(%struct.nfp_nsp* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.nfp_pf*, %struct.nfp_pf** %9, align 8
  %38 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 (i32, i8*, ...) @nfp_warn(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %4, align 4
  br label %116

43:                                               ; preds = %23
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %45 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %46 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @snprintf(i8* %44, i32 32, i8* %47)
  %49 = load %struct.nfp_nsp*, %struct.nfp_nsp** %10, align 8
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %51 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %52 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nfp_nsp_hwinfo_lookup_optional(%struct.nfp_nsp* %49, i8* %50, i32 32, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load %struct.nfp_pf*, %struct.nfp_pf** %9, align 8
  %59 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 (i32, i8*, ...) @nfp_warn(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %112

63:                                               ; preds = %43
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %65 = call i32 @kstrtol(i8* %64, i32 0, i64* %12)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %12, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %74 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %71, %68, %63
  %78 = load %struct.nfp_pf*, %struct.nfp_pf** %9, align 8
  %79 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %82 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 (i32, i8*, ...) @nfp_warn(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %83, i64 %84)
  %86 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %87 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %77
  %91 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %92 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %7, align 8
  %95 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  br label %101

97:                                               ; preds = %77
  %98 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %99 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %97, %90
  br label %112

102:                                              ; preds = %71
  %103 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %8, align 8
  %104 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %7, align 8
  %110 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %102, %101, %57
  %113 = load %struct.nfp_nsp*, %struct.nfp_nsp** %10, align 8
  %114 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %113)
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %34, %20
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.nfp_pf* @devlink_priv(%struct.devlink*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.nfp_devlink_param_u8_arg*) #1

declare dso_local %struct.nfp_nsp* @nfp_nsp_open(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_warn(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @nfp_nsp_hwinfo_lookup_optional(%struct.nfp_nsp*, i8*, i32, i32) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
