; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_vlan_vid_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_vlan_vid_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ocelot_port = type { i64, i64, i32, %struct.ocelot* }
%struct.ocelot = type { i32, i32* }

@PGID_CPU = common dso_local global i32 0, align 4
@ENTRYTYPE_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Port already has a native VLAN: %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i32, i32)* @ocelot_vlan_vid_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_vlan_vid_add(%struct.net_device* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocelot_port*, align 8
  %11 = alloca %struct.ocelot*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %13)
  store %struct.ocelot_port* %14, %struct.ocelot_port** %10, align 8
  %15 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %16 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %15, i32 0, i32 3
  %17 = load %struct.ocelot*, %struct.ocelot** %16, align 8
  store %struct.ocelot* %17, %struct.ocelot** %11, align 8
  %18 = load %struct.ocelot*, %struct.ocelot** %11, align 8
  %19 = load i32, i32* @PGID_CPU, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @ENTRYTYPE_LOCKED, align 4
  %25 = call i32 @ocelot_mact_learn(%struct.ocelot* %18, i32 %19, i32 %22, i64 %23, i32 %24)
  %26 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %27 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BIT(i32 %28)
  %30 = load %struct.ocelot*, %struct.ocelot** %11, align 8
  %31 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %29
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ocelot*, %struct.ocelot** %11, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.ocelot*, %struct.ocelot** %11, align 8
  %40 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ocelot_vlant_set_mask(%struct.ocelot* %37, i64 %38, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %89

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %56 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %57
  %61 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %62 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %68 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.ocelot*, %struct.ocelot** %11, align 8
  %73 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %76 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %89

81:                                               ; preds = %66
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %84 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %60, %57
  %86 = load %struct.ocelot*, %struct.ocelot** %11, align 8
  %87 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %88 = call i32 @ocelot_vlan_port_apply(%struct.ocelot* %86, %struct.ocelot_port* %87)
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %71, %48
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ocelot_mact_learn(%struct.ocelot*, i32, i32, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ocelot_vlant_set_mask(%struct.ocelot*, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @ocelot_vlan_port_apply(%struct.ocelot*, %struct.ocelot_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
