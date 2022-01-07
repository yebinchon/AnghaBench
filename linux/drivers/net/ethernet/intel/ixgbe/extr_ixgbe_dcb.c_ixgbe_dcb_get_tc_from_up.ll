; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_get_tc_from_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_get_tc_from_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_dcb_config = type { %struct.TYPE_3__, %struct.tc_configuration* }
%struct.TYPE_3__ = type { i32 }
%struct.tc_configuration = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_get_tc_from_up(%struct.ixgbe_dcb_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_dcb_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tc_configuration*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_dcb_config* %0, %struct.ixgbe_dcb_config** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %11, i32 0, i32 1
  %13 = load %struct.tc_configuration*, %struct.tc_configuration** %12, align 8
  %14 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %13, i64 0
  store %struct.tc_configuration* %14, %struct.tc_configuration** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %18 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %47, %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.tc_configuration*, %struct.tc_configuration** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %32, i64 %34
  %36 = getelementptr inbounds %struct.tc_configuration, %struct.tc_configuration* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %31, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %50

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %10, align 4
  br label %27

50:                                               ; preds = %45, %27
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %23
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
