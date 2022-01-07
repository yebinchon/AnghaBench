; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_parse_rgmii_delays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_parse_rgmii_delays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sja1105_dt_port = type { i64, i64 }

@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@XMII_MAC = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, %struct.sja1105_dt_port*)* @sja1105_parse_rgmii_delays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_parse_rgmii_delays(%struct.sja1105_private* %0, %struct.sja1105_dt_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_private*, align 8
  %5 = alloca %struct.sja1105_dt_port*, align 8
  %6 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %4, align 8
  store %struct.sja1105_dt_port* %1, %struct.sja1105_dt_port** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %85, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %88

11:                                               ; preds = %7
  %12 = load %struct.sja1105_dt_port*, %struct.sja1105_dt_port** %5, align 8
  %13 = getelementptr inbounds %struct.sja1105_dt_port, %struct.sja1105_dt_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XMII_MAC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %85

18:                                               ; preds = %11
  %19 = load %struct.sja1105_dt_port*, %struct.sja1105_dt_port** %5, align 8
  %20 = getelementptr inbounds %struct.sja1105_dt_port, %struct.sja1105_dt_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.sja1105_dt_port*, %struct.sja1105_dt_port** %5, align 8
  %26 = getelementptr inbounds %struct.sja1105_dt_port, %struct.sja1105_dt_port* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24, %18
  %31 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %32 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.sja1105_dt_port*, %struct.sja1105_dt_port** %5, align 8
  %39 = getelementptr inbounds %struct.sja1105_dt_port, %struct.sja1105_dt_port* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.sja1105_dt_port*, %struct.sja1105_dt_port** %5, align 8
  %45 = getelementptr inbounds %struct.sja1105_dt_port, %struct.sja1105_dt_port* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43, %37
  %50 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %51 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %58 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %67 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %65, %56
  %75 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %76 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %89

84:                                               ; preds = %74, %65
  br label %85

85:                                               ; preds = %84, %17
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %7

88:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %81
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
