; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_pm_domain_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_pm_domain_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camss = type { i64, i32*, i32*, i32 }

@CAMSS_8x96 = common dso_local global i64 0, align 8
@DL_FLAG_STATELESS = common dso_local global i32 0, align 4
@DL_FLAG_PM_RUNTIME = common dso_local global i32 0, align 4
@DL_FLAG_RPM_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camss_pm_domain_on(%struct.camss* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camss*, align 8
  %5 = alloca i32, align 4
  store %struct.camss* %0, %struct.camss** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.camss*, %struct.camss** %4, align 8
  %7 = getelementptr inbounds %struct.camss, %struct.camss* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CAMSS_8x96, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load %struct.camss*, %struct.camss** %4, align 8
  %13 = getelementptr inbounds %struct.camss, %struct.camss* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.camss*, %struct.camss** %4, align 8
  %16 = getelementptr inbounds %struct.camss, %struct.camss* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %23 = load i32, i32* @DL_FLAG_PM_RUNTIME, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DL_FLAG_RPM_ACTIVE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @device_link_add(i32 %14, i32 %21, i32 %26)
  %28 = load %struct.camss*, %struct.camss** %4, align 8
  %29 = getelementptr inbounds %struct.camss, %struct.camss* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  %34 = load %struct.camss*, %struct.camss** %4, align 8
  %35 = getelementptr inbounds %struct.camss, %struct.camss* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %11
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %11
  br label %46

46:                                               ; preds = %45, %2
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @device_link_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
