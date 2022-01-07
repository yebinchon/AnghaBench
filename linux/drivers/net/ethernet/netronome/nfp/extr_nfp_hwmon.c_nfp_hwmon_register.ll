; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_hwmon.c_nfp_hwmon_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_hwmon.c_nfp_hwmon_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CONFIG_HWMON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"not registering HWMON (no NSP info)\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"not registering HWMON (NSP doesn't report sensors)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"nfp\00", align 1
@nfp_chip_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_hwmon_register(%struct.nfp_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_pf*, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %3, align 8
  %4 = load i32, i32* @CONFIG_HWMON, align 4
  %5 = call i32 @IS_REACHABLE(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

8:                                                ; preds = %1
  %9 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @nfp_warn(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %43

18:                                               ; preds = %8
  %19 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %27 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @nfp_info(i32 %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %43

30:                                               ; preds = %18
  %31 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %32 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %36 = call i32 @hwmon_device_register_with_info(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.nfp_pf* %35, i32* @nfp_chip_info, i32* null)
  %37 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %38 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %40 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR_OR_ZERO(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %30, %25, %13, %7
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @IS_REACHABLE(i32) #1

declare dso_local i32 @nfp_warn(i32, i8*) #1

declare dso_local i32 @nfp_info(i32, i8*) #1

declare dso_local i32 @hwmon_device_register_with_info(i32*, i8*, %struct.nfp_pf*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
