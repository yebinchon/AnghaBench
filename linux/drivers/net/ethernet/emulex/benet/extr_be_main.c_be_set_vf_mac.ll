; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_2__*, %struct.be_vf_cfg* }
%struct.TYPE_2__ = type { i32 }
%struct.be_vf_cfg = type { i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"MAC %pM set on VF %d Failed: %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @be_set_vf_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_vf_mac(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca %struct.be_vf_cfg*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.be_adapter* %12, %struct.be_adapter** %8, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 2
  %15 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %15, i64 %17
  store %struct.be_vf_cfg* %18, %struct.be_vf_cfg** %9, align 8
  %19 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %20 = call i32 @sriov_enabled(%struct.be_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %100

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @is_valid_ether_addr(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %100

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %41 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ether_addr_equal(i32* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %100

46:                                               ; preds = %38
  %47 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %48 = call i64 @BEx_chip(%struct.be_adapter* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %52 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %53 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %56 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @be_cmd_pmac_del(%struct.be_adapter* %51, i32 %54, i32 %57, i32 %59)
  %61 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %64 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %67 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %66, i32 0, i32 2
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @be_cmd_pmac_add(%struct.be_adapter* %61, i32* %62, i32 %65, i32* %67, i32 %69)
  store i32 %70, i32* %10, align 4
  br label %80

71:                                               ; preds = %46
  %72 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %75 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @be_cmd_set_mac(%struct.be_adapter* %72, i32* %73, i32 %76, i32 %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %71, %50
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %85 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @be_cmd_status(i32 %92)
  store i32 %93, i32* %4, align 4
  br label %100

94:                                               ; preds = %80
  %95 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %96 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @ether_addr_copy(i32 %97, i32* %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %94, %83, %45, %35, %22
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sriov_enabled(%struct.be_adapter*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_pmac_del(%struct.be_adapter*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_pmac_add(%struct.be_adapter*, i32*, i32, i32*, i32) #1

declare dso_local i32 @be_cmd_set_mac(%struct.be_adapter*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32*, i32, i32) #1

declare dso_local i32 @be_cmd_status(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
