; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___update_default_selected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___update_default_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.port_params, %struct.port_params }
%struct.port_params = type { i64, i64, i64, i64, i32, i32 }

@AD_STATE_AGGREGATION = common dso_local global i32 0, align 4
@AD_PORT_SELECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @__update_default_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_default_selected(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.port_params*, align 8
  %4 = alloca %struct.port_params*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %5 = load %struct.port*, %struct.port** %2, align 8
  %6 = icmp ne %struct.port* %5, null
  br i1 %6, label %7, label %70

7:                                                ; preds = %1
  %8 = load %struct.port*, %struct.port** %2, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 2
  store %struct.port_params* %9, %struct.port_params** %3, align 8
  %10 = load %struct.port*, %struct.port** %2, align 8
  %11 = getelementptr inbounds %struct.port, %struct.port* %10, i32 0, i32 1
  store %struct.port_params* %11, %struct.port_params** %4, align 8
  %12 = load %struct.port_params*, %struct.port_params** %3, align 8
  %13 = getelementptr inbounds %struct.port_params, %struct.port_params* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.port_params*, %struct.port_params** %4, align 8
  %16 = getelementptr inbounds %struct.port_params, %struct.port_params* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %62, label %19

19:                                               ; preds = %7
  %20 = load %struct.port_params*, %struct.port_params** %3, align 8
  %21 = getelementptr inbounds %struct.port_params, %struct.port_params* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.port_params*, %struct.port_params** %4, align 8
  %24 = getelementptr inbounds %struct.port_params, %struct.port_params* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %62, label %27

27:                                               ; preds = %19
  %28 = load %struct.port_params*, %struct.port_params** %3, align 8
  %29 = getelementptr inbounds %struct.port_params, %struct.port_params* %28, i32 0, i32 5
  %30 = load %struct.port_params*, %struct.port_params** %4, align 8
  %31 = getelementptr inbounds %struct.port_params, %struct.port_params* %30, i32 0, i32 5
  %32 = call i32 @MAC_ADDRESS_EQUAL(i32* %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %27
  %35 = load %struct.port_params*, %struct.port_params** %3, align 8
  %36 = getelementptr inbounds %struct.port_params, %struct.port_params* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.port_params*, %struct.port_params** %4, align 8
  %39 = getelementptr inbounds %struct.port_params, %struct.port_params* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %62, label %42

42:                                               ; preds = %34
  %43 = load %struct.port_params*, %struct.port_params** %3, align 8
  %44 = getelementptr inbounds %struct.port_params, %struct.port_params* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.port_params*, %struct.port_params** %4, align 8
  %47 = getelementptr inbounds %struct.port_params, %struct.port_params* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %42
  %51 = load %struct.port_params*, %struct.port_params** %3, align 8
  %52 = getelementptr inbounds %struct.port_params, %struct.port_params* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AD_STATE_AGGREGATION, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.port_params*, %struct.port_params** %4, align 8
  %57 = getelementptr inbounds %struct.port_params, %struct.port_params* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @AD_STATE_AGGREGATION, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %55, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %50, %42, %34, %27, %19, %7
  %63 = load i32, i32* @AD_PORT_SELECTED, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.port*, %struct.port** %2, align 8
  %66 = getelementptr inbounds %struct.port, %struct.port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %50
  br label %70

70:                                               ; preds = %69, %1
  ret void
}

declare dso_local i32 @MAC_ADDRESS_EQUAL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
