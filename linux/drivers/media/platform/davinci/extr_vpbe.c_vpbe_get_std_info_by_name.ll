; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_get_std_info_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_get_std_info_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { i32, %struct.vpbe_enc_mode_info, %struct.vpbe_config* }
%struct.vpbe_enc_mode_info = type { i32 }
%struct.vpbe_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vpbe_enc_mode_info* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, i8*)* @vpbe_get_std_info_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_get_std_info_by_name(%struct.vpbe_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vpbe_config*, align 8
  %7 = alloca %struct.vpbe_enc_mode_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vpbe_device* %0, %struct.vpbe_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %11 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %10, i32 0, i32 2
  %12 = load %struct.vpbe_config*, %struct.vpbe_config** %11, align 8
  store %struct.vpbe_config* %12, %struct.vpbe_config** %6, align 8
  %13 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %14 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %54, %2
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %19 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %18, i32 0, i32 2
  %20 = load %struct.vpbe_config*, %struct.vpbe_config** %19, align 8
  %21 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %17, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %16
  %30 = load %struct.vpbe_config*, %struct.vpbe_config** %6, align 8
  %31 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %37, i64 %39
  %41 = bitcast %struct.vpbe_enc_mode_info* %7 to i8*
  %42 = bitcast %struct.vpbe_enc_mode_info* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strcmp(i32 %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %29
  %49 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %50 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %49, i32 0, i32 1
  %51 = bitcast %struct.vpbe_enc_mode_info* %50 to i8*
  %52 = bitcast %struct.vpbe_enc_mode_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %60

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %16

57:                                               ; preds = %16
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
