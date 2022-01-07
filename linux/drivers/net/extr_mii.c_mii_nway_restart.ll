; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_nway_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_nway_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32 (i32, i32, i32)*, i32, i32, i32 (i32, i32, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_nway_restart(%struct.mii_if_info* %0) #0 {
  %2 = alloca %struct.mii_if_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_if_info* %0, %struct.mii_if_info** %2, align 8
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %8 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %7, i32 0, i32 0
  %9 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %8, align 8
  %10 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %11 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %14 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MII_BMCR, align 4
  %17 = call i32 %9(i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BMCR_ANENABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load i32, i32* @BMCR_ANRESTART, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %27 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %26, i32 0, i32 3
  %28 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %27, align 8
  %29 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %30 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %33 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MII_BMCR, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 %28(i32 %31, i32 %34, i32 %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %22, %1
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
