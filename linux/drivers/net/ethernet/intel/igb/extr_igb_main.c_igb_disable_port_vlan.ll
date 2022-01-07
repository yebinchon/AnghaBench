; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_disable_port_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_disable_port_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32)* @igb_disable_port_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_disable_port_vlan(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @igb_set_vf_vlan(%struct.igb_adapter* %5, i64 0, i32 1, i32 %6)
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @igb_set_vmvir(%struct.igb_adapter* %8, i32 0, i32 %9)
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @igb_set_vmolr(%struct.igb_adapter* %11, i32 %12, i32 1)
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @igb_set_vf_vlan(%struct.igb_adapter* %24, i64 %32, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %23, %2
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @igb_set_vf_vlan_strip(%struct.igb_adapter* %50, i32 %51, i32 0)
  ret i32 0
}

declare dso_local i32 @igb_set_vf_vlan(%struct.igb_adapter*, i64, i32, i32) #1

declare dso_local i32 @igb_set_vmvir(%struct.igb_adapter*, i32, i32) #1

declare dso_local i32 @igb_set_vmolr(%struct.igb_adapter*, i32, i32) #1

declare dso_local i32 @igb_set_vf_vlan_strip(%struct.igb_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
