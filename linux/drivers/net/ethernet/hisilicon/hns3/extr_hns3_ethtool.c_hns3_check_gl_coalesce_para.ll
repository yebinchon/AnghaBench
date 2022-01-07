; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_check_gl_coalesce_para.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_check_gl_coalesce_para.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64 }

@HNS3_INT_GL_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Invalid rx-usecs value, rx-usecs range is 0-%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid tx-usecs value, tx-usecs range is 0-%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"rx_usecs(%d) rounded down to %d, because it must be multiple of 2.\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"tx_usecs(%d) rounded down to %d, because it must be multiple of 2.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @hns3_check_gl_coalesce_para to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_check_gl_coalesce_para(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HNS3_INT_GL_MAX, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load i64, i64* @HNS3_INT_GL_MAX, align 8
  %16 = call i32 @netdev_err(%struct.net_device* %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HNS3_INT_GL_MAX, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = load i64, i64* @HNS3_INT_GL_MAX, align 8
  %28 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %66

31:                                               ; preds = %19
  %32 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @hns3_gl_round_down(i64 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @netdev_info(%struct.net_device* %42, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %41, %31
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @hns3_gl_round_down(i64 %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @netdev_info(%struct.net_device* %59, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %62, i64 %63)
  br label %65

65:                                               ; preds = %58, %48
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %25, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i64 @hns3_gl_round_down(i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
