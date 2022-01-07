; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et1310_config_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et1310_config_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy_device* }
%struct.phy_device = type { i64 }

@DUPLEX_HALF = common dso_local global i64 0, align 8
@FLOW_NONE = common dso_local global i8* null, align 8
@FLOW_BOTH = common dso_local global i64 0, align 8
@FLOW_RXONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et1310_config_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et1310_config_flow_control(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %6 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %3, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DUPLEX_HALF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i8*, i8** @FLOW_NONE, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %92

21:                                               ; preds = %1
  %22 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %23 = call i32 @et1310_phy_read_mii_bit(%struct.et131x_adapter* %22, i32 5, i32 10, i8* %4)
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %25 = call i32 @et1310_phy_read_mii_bit(%struct.et131x_adapter* %24, i32 5, i32 11, i8* %5)
  %26 = load i8, i8* %4, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i8, i8* %5, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %91

39:                                               ; preds = %29, %21
  %40 = load i8, i8* %4, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i8, i8* %5, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %43
  %47 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FLOW_BOTH, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i64, i64* @FLOW_BOTH, align 8
  %54 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %61

56:                                               ; preds = %46
  %57 = load i8*, i8** @FLOW_NONE, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %52
  br label %90

62:                                               ; preds = %43, %39
  %63 = load i8, i8* %4, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i8, i8* %5, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** @FLOW_NONE, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %89

73:                                               ; preds = %65, %62
  %74 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FLOW_BOTH, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i64, i64* @FLOW_RXONLY, align 8
  %81 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %88

83:                                               ; preds = %73
  %84 = load i8*, i8** @FLOW_NONE, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %79
  br label %89

89:                                               ; preds = %88, %68
  br label %90

90:                                               ; preds = %89, %61
  br label %91

91:                                               ; preds = %90, %33
  br label %92

92:                                               ; preds = %91, %16
  ret void
}

declare dso_local i32 @et1310_phy_read_mii_bit(%struct.et131x_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
