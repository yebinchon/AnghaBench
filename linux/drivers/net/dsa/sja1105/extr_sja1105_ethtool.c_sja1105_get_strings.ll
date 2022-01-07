; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@sja1105_port_stats = common dso_local global i32* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@SJA1105E_DEVICE_ID = common dso_local global i32 0, align 4
@SJA1105T_DEVICE_ID = common dso_local global i32 0, align 4
@sja1105pqrs_extra_port_stats = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sja1105_get_strings(%struct.dsa_switch* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sja1105_private*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.sja1105_private*, %struct.sja1105_private** %13, align 8
  store %struct.sja1105_private* %14, %struct.sja1105_private** %9, align 8
  %15 = load i32*, i32** %8, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %79 [
    i32 128, label %17
  ]

17:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32*, i32** @sja1105_port_stats, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** @sja1105_port_stats, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %31 = call i32 @strlcpy(i32* %24, i32 %29, i32 %30)
  %32 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %10, align 8
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load %struct.sja1105_private*, %struct.sja1105_private** %9, align 8
  %41 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SJA1105E_DEVICE_ID, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.sja1105_private*, %struct.sja1105_private** %9, align 8
  %49 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SJA1105T_DEVICE_ID, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47, %39
  br label %79

56:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %75, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** @sja1105pqrs_extra_port_stats, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** @sja1105pqrs_extra_port_stats, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %70 = call i32 @strlcpy(i32* %63, i32 %68, i32 %69)
  %71 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %10, align 8
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %57

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %55, %4, %78
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
