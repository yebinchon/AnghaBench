; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_is_vlan_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_is_vlan_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sja1105_vlan_lookup_entry* }
%struct.sja1105_vlan_lookup_entry = type { i64 }

@BLK_IDX_VLAN_LOOKUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i64)* @sja1105_is_vlan_configured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_is_vlan_configured(%struct.sja1105_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sja1105_vlan_lookup_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %10 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i64, i64* @BLK_IDX_VLAN_LOOKUP, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.sja1105_vlan_lookup_entry*, %struct.sja1105_vlan_lookup_entry** %15, align 8
  store %struct.sja1105_vlan_lookup_entry* %16, %struct.sja1105_vlan_lookup_entry** %6, align 8
  %17 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %18 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i64, i64* @BLK_IDX_VLAN_LOOKUP, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %41, %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.sja1105_vlan_lookup_entry*, %struct.sja1105_vlan_lookup_entry** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, %struct.sja1105_vlan_lookup_entry* %30, i64 %32
  %34 = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, %struct.sja1105_vlan_lookup_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %25

44:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
