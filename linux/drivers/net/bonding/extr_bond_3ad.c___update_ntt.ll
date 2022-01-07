; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___update_ntt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___update_ntt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacpdu = type { i32, i32, i32, i32, i32, i32 }
%struct.port = type { i64, i64, i64, i64, i32, i32, i32 }

@AD_STATE_LACP_ACTIVITY = common dso_local global i32 0, align 4
@AD_STATE_LACP_TIMEOUT = common dso_local global i32 0, align 4
@AD_STATE_SYNCHRONIZATION = common dso_local global i32 0, align 4
@AD_STATE_AGGREGATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacpdu*, %struct.port*)* @__update_ntt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_ntt(%struct.lacpdu* %0, %struct.port* %1) #0 {
  %3 = alloca %struct.lacpdu*, align 8
  %4 = alloca %struct.port*, align 8
  store %struct.lacpdu* %0, %struct.lacpdu** %3, align 8
  store %struct.port* %1, %struct.port** %4, align 8
  %5 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %6 = icmp ne %struct.lacpdu* %5, null
  br i1 %6, label %7, label %105

7:                                                ; preds = %2
  %8 = load %struct.port*, %struct.port** %4, align 8
  %9 = icmp ne %struct.port* %8, null
  br i1 %9, label %10, label %105

10:                                               ; preds = %7
  %11 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %12 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ntohs(i32 %13)
  %15 = load %struct.port*, %struct.port** %4, align 8
  %16 = getelementptr inbounds %struct.port, %struct.port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %101, label %19

19:                                               ; preds = %10
  %20 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %21 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ntohs(i32 %22)
  %24 = load %struct.port*, %struct.port** %4, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %101, label %28

28:                                               ; preds = %19
  %29 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %30 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %29, i32 0, i32 3
  %31 = load %struct.port*, %struct.port** %4, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 6
  %33 = call i32 @MAC_ADDRESS_EQUAL(i32* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %101

35:                                               ; preds = %28
  %36 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %37 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  %40 = load %struct.port*, %struct.port** %4, align 8
  %41 = getelementptr inbounds %struct.port, %struct.port* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %101, label %44

44:                                               ; preds = %35
  %45 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %46 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ntohs(i32 %47)
  %49 = load %struct.port*, %struct.port** %4, align 8
  %50 = getelementptr inbounds %struct.port, %struct.port* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %101, label %53

53:                                               ; preds = %44
  %54 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %55 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AD_STATE_LACP_ACTIVITY, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.port*, %struct.port** %4, align 8
  %60 = getelementptr inbounds %struct.port, %struct.port* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @AD_STATE_LACP_ACTIVITY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %58, %63
  br i1 %64, label %101, label %65

65:                                               ; preds = %53
  %66 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %67 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AD_STATE_LACP_TIMEOUT, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.port*, %struct.port** %4, align 8
  %72 = getelementptr inbounds %struct.port, %struct.port* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AD_STATE_LACP_TIMEOUT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %70, %75
  br i1 %76, label %101, label %77

77:                                               ; preds = %65
  %78 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %79 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %82 = and i32 %80, %81
  %83 = load %struct.port*, %struct.port** %4, align 8
  %84 = getelementptr inbounds %struct.port, %struct.port* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %82, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %77
  %90 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %91 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @AD_STATE_AGGREGATION, align 4
  %94 = and i32 %92, %93
  %95 = load %struct.port*, %struct.port** %4, align 8
  %96 = getelementptr inbounds %struct.port, %struct.port* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AD_STATE_AGGREGATION, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %94, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %89, %77, %65, %53, %44, %35, %28, %19, %10
  %102 = load %struct.port*, %struct.port** %4, align 8
  %103 = getelementptr inbounds %struct.port, %struct.port* %102, i32 0, i32 5
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %89
  br label %105

105:                                              ; preds = %104, %7, %2
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @MAC_ADDRESS_EQUAL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
