; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_churn_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_churn_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i64, i64, i32, i32, %struct.TYPE_2__, i8*, i32, i8* }
%struct.TYPE_2__ = type { i32 }

@AD_PORT_CHURNED = common dso_local global i32 0, align 4
@AD_CHURN_MONITOR = common dso_local global i64 0, align 8
@AD_ACTOR_CHURN_TIMER = common dso_local global i32 0, align 4
@AD_PARTNER_CHURN_TIMER = common dso_local global i32 0, align 4
@AD_STATE_SYNCHRONIZATION = common dso_local global i32 0, align 4
@AD_NO_CHURN = common dso_local global i8* null, align 8
@AD_CHURN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @ad_churn_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_churn_machine(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %3 = load %struct.port*, %struct.port** %2, align 8
  %4 = getelementptr inbounds %struct.port, %struct.port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @AD_PORT_CHURNED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load i32, i32* @AD_PORT_CHURNED, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.port*, %struct.port** %2, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i64, i64* @AD_CHURN_MONITOR, align 8
  %17 = load %struct.port*, %struct.port** %2, align 8
  %18 = getelementptr inbounds %struct.port, %struct.port* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* @AD_CHURN_MONITOR, align 8
  %20 = load %struct.port*, %struct.port** %2, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @AD_ACTOR_CHURN_TIMER, align 4
  %23 = call i8* @__ad_timer_to_ticks(i32 %22, i32 0)
  %24 = load %struct.port*, %struct.port** %2, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @AD_PARTNER_CHURN_TIMER, align 4
  %27 = call i8* @__ad_timer_to_ticks(i32 %26, i32 0)
  %28 = load %struct.port*, %struct.port** %2, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  br label %109

30:                                               ; preds = %1
  %31 = load %struct.port*, %struct.port** %2, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %30
  %36 = load %struct.port*, %struct.port** %2, align 8
  %37 = getelementptr inbounds %struct.port, %struct.port* %36, i32 0, i32 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %39, i8** %37, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %69, label %41

41:                                               ; preds = %35
  %42 = load %struct.port*, %struct.port** %2, align 8
  %43 = getelementptr inbounds %struct.port, %struct.port* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AD_CHURN_MONITOR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load %struct.port*, %struct.port** %2, align 8
  %49 = getelementptr inbounds %struct.port, %struct.port* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i8*, i8** @AD_NO_CHURN, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.port*, %struct.port** %2, align 8
  %58 = getelementptr inbounds %struct.port, %struct.port* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %68

59:                                               ; preds = %47
  %60 = load %struct.port*, %struct.port** %2, align 8
  %61 = getelementptr inbounds %struct.port, %struct.port* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i8*, i8** @AD_CHURN, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.port*, %struct.port** %2, align 8
  %67 = getelementptr inbounds %struct.port, %struct.port* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %54
  br label %69

69:                                               ; preds = %68, %41, %35, %30
  %70 = load %struct.port*, %struct.port** %2, align 8
  %71 = getelementptr inbounds %struct.port, %struct.port* %70, i32 0, i32 6
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %109

74:                                               ; preds = %69
  %75 = load %struct.port*, %struct.port** %2, align 8
  %76 = getelementptr inbounds %struct.port, %struct.port* %75, i32 0, i32 6
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %78, i8** %76, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %109, label %80

80:                                               ; preds = %74
  %81 = load %struct.port*, %struct.port** %2, align 8
  %82 = getelementptr inbounds %struct.port, %struct.port* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AD_CHURN_MONITOR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %80
  %87 = load %struct.port*, %struct.port** %2, align 8
  %88 = getelementptr inbounds %struct.port, %struct.port* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i8*, i8** @AD_NO_CHURN, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.port*, %struct.port** %2, align 8
  %98 = getelementptr inbounds %struct.port, %struct.port* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %108

99:                                               ; preds = %86
  %100 = load %struct.port*, %struct.port** %2, align 8
  %101 = getelementptr inbounds %struct.port, %struct.port* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i8*, i8** @AD_CHURN, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = load %struct.port*, %struct.port** %2, align 8
  %107 = getelementptr inbounds %struct.port, %struct.port* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %99, %94
  br label %109

109:                                              ; preds = %9, %108, %80, %74, %69
  ret void
}

declare dso_local i8* @__ad_timer_to_ticks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
