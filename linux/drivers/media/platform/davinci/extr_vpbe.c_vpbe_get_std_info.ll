; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_get_std_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_get_std_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { i32, %struct.vpbe_enc_mode_info, %struct.vpbe_config* }
%struct.vpbe_enc_mode_info = type { i32, i32 }
%struct.vpbe_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vpbe_enc_mode_info* }

@VPBE_ENC_STD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, i32)* @vpbe_get_std_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_get_std_info(%struct.vpbe_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vpbe_config*, align 8
  %7 = alloca %struct.vpbe_enc_mode_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vpbe_device* %0, %struct.vpbe_device** %4, align 8
  store i32 %1, i32* %5, align 4
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

16:                                               ; preds = %60, %2
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
  br i1 %28, label %29, label %63

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VPBE_ENC_STD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %7, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %56 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %55, i32 0, i32 1
  %57 = bitcast %struct.vpbe_enc_mode_info* %56 to i8*
  %58 = bitcast %struct.vpbe_enc_mode_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %66

59:                                               ; preds = %48, %29
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %16

63:                                               ; preds = %16
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %54
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
