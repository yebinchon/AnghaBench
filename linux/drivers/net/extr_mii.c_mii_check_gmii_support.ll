; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_check_gmii_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mii.c_mii_check_gmii_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32 (i32, i32, i32)*, i32, i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@MII_ESTATUS = common dso_local global i32 0, align 4
@ESTATUS_1000_TFULL = common dso_local global i32 0, align 4
@ESTATUS_1000_THALF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_check_gmii_support(%struct.mii_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_if_info*, align 8
  %4 = alloca i32, align 4
  store %struct.mii_if_info* %0, %struct.mii_if_info** %3, align 8
  %5 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %6 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %5, i32 0, i32 0
  %7 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %6, align 8
  %8 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %9 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %12 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MII_BMSR, align 4
  %15 = call i32 %7(i32 %10, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @BMSR_ESTATEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %22 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %22, align 8
  %24 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %25 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %28 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MII_ESTATUS, align 4
  %31 = call i32 %23(i32 %26, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %34 = load i32, i32* @ESTATUS_1000_THALF, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %41

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
