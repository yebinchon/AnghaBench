; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64 }
%struct.b44 = type { i64, i32 }

@DUPLEX_HALF = common dso_local global i64 0, align 8
@B44_FLAG_FULL_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@B44_TX_CTRL = common dso_local global i32 0, align 4
@TX_CTRL_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @b44_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.b44*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.b44* @netdev_priv(%struct.net_device* %7)
  store %struct.b44* %8, %struct.b44** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = icmp ne %struct.phy_device* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.b44*, %struct.b44** %3, align 8
  %18 = getelementptr inbounds %struct.b44, %struct.b44* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.b44*, %struct.b44** %3, align 8
  %29 = getelementptr inbounds %struct.b44, %struct.b44* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %30
  %36 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DUPLEX_HALF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.b44*, %struct.b44** %3, align 8
  %43 = getelementptr inbounds %struct.b44, %struct.b44* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  %49 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.b44*, %struct.b44** %3, align 8
  %52 = getelementptr inbounds %struct.b44, %struct.b44* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %75

55:                                               ; preds = %41, %35
  %56 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DUPLEX_FULL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load %struct.b44*, %struct.b44** %3, align 8
  %63 = getelementptr inbounds %struct.b44, %struct.b44* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  %69 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %70 = load %struct.b44*, %struct.b44** %3, align 8
  %71 = getelementptr inbounds %struct.b44, %struct.b44* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %61, %55
  br label %75

75:                                               ; preds = %74, %48
  br label %76

76:                                               ; preds = %75, %30
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load %struct.b44*, %struct.b44** %3, align 8
  %81 = load i32, i32* @B44_TX_CTRL, align 4
  %82 = call i32 @br32(%struct.b44* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.b44*, %struct.b44** %3, align 8
  %84 = getelementptr inbounds %struct.b44, %struct.b44* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i32, i32* @TX_CTRL_DUPLEX, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %98

93:                                               ; preds = %79
  %94 = load i32, i32* @TX_CTRL_DUPLEX, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %93, %89
  %99 = load %struct.b44*, %struct.b44** %3, align 8
  %100 = load i32, i32* @B44_TX_CTRL, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @bw32(%struct.b44* %99, i32 %100, i32 %101)
  %103 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %104 = call i32 @phy_print_status(%struct.phy_device* %103)
  br label %105

105:                                              ; preds = %98, %76
  ret void
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
