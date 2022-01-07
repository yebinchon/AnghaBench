; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_priv_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_priv_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.prism2_download_param*)* }
%struct.prism2_download_param = type { i32 }
%struct.iw_point = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.iw_point*)* @prism2_ioctl_priv_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_priv_download(%struct.TYPE_6__* %0, %struct.iw_point* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.iw_point*, align 8
  %6 = alloca %struct.prism2_download_param*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.iw_point* %1, %struct.iw_point** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %9 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %15 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1024
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %20 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %13, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %18
  %27 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %28 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.prism2_download_param* @memdup_user(i32 %29, i32 %32)
  store %struct.prism2_download_param* %33, %struct.prism2_download_param** %6, align 8
  %34 = load %struct.prism2_download_param*, %struct.prism2_download_param** %6, align 8
  %35 = call i64 @IS_ERR(%struct.prism2_download_param* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.prism2_download_param*, %struct.prism2_download_param** %6, align 8
  %39 = call i32 @PTR_ERR(%struct.prism2_download_param* %38)
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %26
  %41 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %42 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.prism2_download_param*, %struct.prism2_download_param** %6, align 8
  %46 = getelementptr inbounds %struct.prism2_download_param, %struct.prism2_download_param* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = add i64 4, %49
  %51 = icmp ult i64 %44, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %64

55:                                               ; preds = %40
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_6__*, %struct.prism2_download_param*)*, i32 (%struct.TYPE_6__*, %struct.prism2_download_param*)** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = load %struct.prism2_download_param*, %struct.prism2_download_param** %6, align 8
  %63 = call i32 %60(%struct.TYPE_6__* %61, %struct.prism2_download_param* %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %55, %52
  %65 = load %struct.prism2_download_param*, %struct.prism2_download_param** %6, align 8
  %66 = call i32 @kfree(%struct.prism2_download_param* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %37, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.prism2_download_param* @memdup_user(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.prism2_download_param*) #1

declare dso_local i32 @PTR_ERR(%struct.prism2_download_param*) #1

declare dso_local i32 @kfree(%struct.prism2_download_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
