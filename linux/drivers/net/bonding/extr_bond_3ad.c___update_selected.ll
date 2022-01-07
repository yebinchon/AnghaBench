; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___update_selected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___update_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacpdu = type { i32, i32, i32, i32, i32, i32 }
%struct.port = type { i32, %struct.port_params }
%struct.port_params = type { i64, i64, i64, i64, i32, i32 }

@AD_STATE_AGGREGATION = common dso_local global i32 0, align 4
@AD_PORT_SELECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacpdu*, %struct.port*)* @__update_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_selected(%struct.lacpdu* %0, %struct.port* %1) #0 {
  %3 = alloca %struct.lacpdu*, align 8
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.port_params*, align 8
  store %struct.lacpdu* %0, %struct.lacpdu** %3, align 8
  store %struct.port* %1, %struct.port** %4, align 8
  %6 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %7 = icmp ne %struct.lacpdu* %6, null
  br i1 %7, label %8, label %76

8:                                                ; preds = %2
  %9 = load %struct.port*, %struct.port** %4, align 8
  %10 = icmp ne %struct.port* %9, null
  br i1 %10, label %11, label %76

11:                                               ; preds = %8
  %12 = load %struct.port*, %struct.port** %4, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 1
  store %struct.port_params* %13, %struct.port_params** %5, align 8
  %14 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %15 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ntohs(i32 %16)
  %18 = load %struct.port_params*, %struct.port_params** %5, align 8
  %19 = getelementptr inbounds %struct.port_params, %struct.port_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %68, label %22

22:                                               ; preds = %11
  %23 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %24 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ntohs(i32 %25)
  %27 = load %struct.port_params*, %struct.port_params** %5, align 8
  %28 = getelementptr inbounds %struct.port_params, %struct.port_params* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %68, label %31

31:                                               ; preds = %22
  %32 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %33 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %32, i32 0, i32 3
  %34 = load %struct.port_params*, %struct.port_params** %5, align 8
  %35 = getelementptr inbounds %struct.port_params, %struct.port_params* %34, i32 0, i32 5
  %36 = call i32 @MAC_ADDRESS_EQUAL(i32* %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %31
  %39 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %40 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ntohs(i32 %41)
  %43 = load %struct.port_params*, %struct.port_params** %5, align 8
  %44 = getelementptr inbounds %struct.port_params, %struct.port_params* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %38
  %48 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %49 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ntohs(i32 %50)
  %52 = load %struct.port_params*, %struct.port_params** %5, align 8
  %53 = getelementptr inbounds %struct.port_params, %struct.port_params* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %47
  %57 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %58 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AD_STATE_AGGREGATION, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.port_params*, %struct.port_params** %5, align 8
  %63 = getelementptr inbounds %struct.port_params, %struct.port_params* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @AD_STATE_AGGREGATION, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %61, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %56, %47, %38, %31, %22, %11
  %69 = load i32, i32* @AD_PORT_SELECTED, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.port*, %struct.port** %4, align 8
  %72 = getelementptr inbounds %struct.port, %struct.port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %68, %56
  br label %76

76:                                               ; preds = %75, %8, %2
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
