; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_get_mode_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_get_mode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { %struct.vpbe_enc_mode_info, %struct.vpbe_config* }
%struct.vpbe_enc_mode_info = type { i32 }
%struct.vpbe_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vpbe_enc_mode_info* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, i8*, i32)* @vpbe_get_mode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_get_mode_info(%struct.vpbe_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpbe_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpbe_config*, align 8
  %9 = alloca %struct.vpbe_enc_mode_info, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vpbe_device* %0, %struct.vpbe_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %13 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %12, i32 0, i32 1
  %14 = load %struct.vpbe_config*, %struct.vpbe_config** %13, align 8
  store %struct.vpbe_config* %14, %struct.vpbe_config** %8, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %58, %21
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.vpbe_config*, %struct.vpbe_config** %8, align 8
  %25 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %23, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %22
  %34 = load %struct.vpbe_config*, %struct.vpbe_config** %8, align 8
  %35 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %41, i64 %43
  %45 = bitcast %struct.vpbe_enc_mode_info* %9 to i8*
  %46 = bitcast %struct.vpbe_enc_mode_info* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i8* %47, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %33
  %53 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %54 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %53, i32 0, i32 0
  %55 = bitcast %struct.vpbe_enc_mode_info* %54 to i8*
  %56 = bitcast %struct.vpbe_enc_mode_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 4 %56, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %64

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %22

61:                                               ; preds = %22
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %52, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
