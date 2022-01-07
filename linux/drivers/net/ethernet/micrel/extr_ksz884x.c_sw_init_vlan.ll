; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_init_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_init_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.ksz_switch* }
%struct.ksz_switch = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@VLAN_TABLE_ENTRIES = common dso_local global i32 0, align 4
@TOTAL_PORT_NUM = common dso_local global i32 0, align 4
@PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @sw_init_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_init_vlan(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_switch*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %6, i32 0, i32 0
  %8 = load %struct.ksz_switch*, %struct.ksz_switch** %7, align 8
  store %struct.ksz_switch* %8, %struct.ksz_switch** %5, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @VLAN_TABLE_ENTRIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %17 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %24 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %31 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @sw_r_vlan_table(%struct.ksz_hw* %14, i32 %15, i32* %22, i32* %29, i32* %36)
  br label %38

38:                                               ; preds = %13
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %9

41:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @TOTAL_PORT_NUM, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %50 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @port_get_def_vid(%struct.ksz_hw* %47, i32 %48, i32* %55)
  %57 = load i32, i32* @PORT_MASK, align 4
  %58 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %59 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 4
  br label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %42

68:                                               ; preds = %42
  ret void
}

declare dso_local i32 @sw_r_vlan_table(%struct.ksz_hw*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @port_get_def_vid(%struct.ksz_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
