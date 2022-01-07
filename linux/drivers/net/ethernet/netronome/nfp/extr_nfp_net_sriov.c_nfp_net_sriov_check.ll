; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_net_sriov_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_net_sriov_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_MB_CAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"ndo_set_vf_%s not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid VF id %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32, i32, i8*)* @nfp_net_sriov_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_sriov_check(%struct.nfp_app* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %12 = icmp ne %struct.nfp_app* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %15 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %69

23:                                               ; preds = %13
  %24 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NFP_NET_VF_CFG_MB_CAP, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readw(i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %23
  %38 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %39 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 (i32, i8*, ...) @nfp_warn(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %69

47:                                               ; preds = %23
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %53 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %51, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %50, %47
  %59 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %60 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i32, i8*, ...) @nfp_warn(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %58, %37, %20
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @nfp_warn(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
