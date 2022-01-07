; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_g_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_g_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { i32, %struct.vpbe_config*, %struct.vpbe_enc_mode_info }
%struct.vpbe_config = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vpbe_enc_mode_info = type { i32, i32 }

@V4L2_OUT_CAP_STD = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@VPBE_ENC_STD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, i32*)* @vpbe_g_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_g_std(%struct.vpbe_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vpbe_enc_mode_info*, align 8
  %7 = alloca %struct.vpbe_config*, align 8
  %8 = alloca i32, align 4
  store %struct.vpbe_device* %0, %struct.vpbe_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %10 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %9, i32 0, i32 2
  store %struct.vpbe_enc_mode_info* %10, %struct.vpbe_enc_mode_info** %6, align 8
  %11 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %12 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %11, i32 0, i32 1
  %13 = load %struct.vpbe_config*, %struct.vpbe_config** %12, align 8
  store %struct.vpbe_config* %13, %struct.vpbe_config** %7, align 8
  %14 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %15 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %18 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @V4L2_OUT_CAP_STD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENODATA, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %2
  %33 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %6, align 8
  %34 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VPBE_ENC_STD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %6, align 8
  %41 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %39, %29
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
