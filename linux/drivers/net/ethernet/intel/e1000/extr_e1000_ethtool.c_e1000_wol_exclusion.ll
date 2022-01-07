; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_wol_exclusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_wol_exclusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }
%struct.ethtool_wolinfo = type { i32 }

@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FUNC_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.ethtool_wolinfo*)* @e1000_wol_exclusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_wol_exclusion(%struct.e1000_adapter* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 2
  store %struct.e1000_hw* %8, %struct.e1000_hw** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %34 [
    i32 139, label %12
    i32 137, label %12
    i32 138, label %12
    i32 136, label %12
    i32 132, label %12
    i32 134, label %12
    i32 135, label %12
    i32 129, label %12
    i32 130, label %12
    i32 133, label %15
    i32 131, label %15
    i32 128, label %25
  ]

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %13 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %49

15:                                               ; preds = %2, %2
  %16 = load i32, i32* @STATUS, align 4
  %17 = call i32 @er32(i32 %16)
  %18 = load i32, i32* @E1000_STATUS_FUNC_1, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %49

24:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %49

25:                                               ; preds = %2
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %49

33:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %49

34:                                               ; preds = %2
  %35 = load i32, i32* @STATUS, align 4
  %36 = call i32 @er32(i32 %35)
  %37 = load i32, i32* @E1000_STATUS_FUNC_1, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %49

48:                                               ; preds = %40, %34
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %45, %33, %30, %24, %21, %12
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
