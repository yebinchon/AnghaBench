; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_get_si_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_get_si_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { i32, i32, i32, i32, %struct.enetc_hw }
%struct.enetc_hw = type { i32 }

@ENETC_SICAPR0 = common dso_local global i32 0, align 4
@ENETC_SIRFSCAPR = common dso_local global i32 0, align 4
@ENETC_MAX_RFS_SIZE = common dso_local global i32 0, align 4
@ENETC_SIPCAPR0 = common dso_local global i32 0, align 4
@ENETC_SIPCAPR0_RSS = common dso_local global i32 0, align 4
@ENETC_SIRSSCAPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enetc_get_si_caps(%struct.enetc_si* %0) #0 {
  %2 = alloca %struct.enetc_si*, align 8
  %3 = alloca %struct.enetc_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %2, align 8
  %5 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %6 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %5, i32 0, i32 4
  store %struct.enetc_hw* %6, %struct.enetc_hw** %3, align 8
  %7 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %8 = load i32, i32* @ENETC_SICAPR0, align 4
  %9 = call i32 @enetc_rd(%struct.enetc_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %14 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %18 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %20 = load i32, i32* @ENETC_SIRFSCAPR, align 4
  %21 = call i32 @enetc_rd(%struct.enetc_hw* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ENETC_SIRFSCAPR_GET_NUM_RFS(i32 %22)
  %24 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %25 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %27 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ENETC_MAX_RFS_SIZE, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  %31 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %32 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %34 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %33, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %36 = load i32, i32* @ENETC_SIPCAPR0, align 4
  %37 = call i32 @enetc_rd(%struct.enetc_hw* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ENETC_SIPCAPR0_RSS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %1
  %43 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %44 = load i32, i32* @ENETC_SIRSSCAPR, align 4
  %45 = call i32 @enetc_rd(%struct.enetc_hw* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ENETC_SIRSSCAPR_GET_NUM_RSS(i32 %46)
  %48 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %49 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @enetc_rd(%struct.enetc_hw*, i32) #1

declare dso_local i32 @ENETC_SIRFSCAPR_GET_NUM_RFS(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ENETC_SIRSSCAPR_GET_NUM_RSS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
