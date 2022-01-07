; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_spoofchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_set_vf_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_2__*, %struct.be_vf_cfg* }
%struct.TYPE_2__ = type { i32 }
%struct.be_vf_cfg = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENABLE_MAC_SPOOFCHK = common dso_local global i32 0, align 4
@DISABLE_MAC_SPOOFCHK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Spoofchk change on VF %d failed: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @be_set_vf_spoofchk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_vf_spoofchk(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca %struct.be_vf_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.be_adapter* %13, %struct.be_adapter** %8, align 8
  %14 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 2
  %16 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %16, i64 %18
  store %struct.be_vf_cfg* %19, %struct.be_vf_cfg** %9, align 8
  %20 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %21 = call i32 @sriov_enabled(%struct.be_adapter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %82

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %29 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %82

35:                                               ; preds = %26
  %36 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %37 = call i64 @BEx_chip(%struct.be_adapter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %82

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %45 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %82

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @ENABLE_MAC_SPOOFCHK, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @DISABLE_MAC_SPOOFCHK, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %10, align 4
  %58 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %62 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @be_cmd_set_hsw_config(%struct.be_adapter* %58, i32 0, i32 %60, i32 %63, i32 0, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %56
  %69 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %70 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @be_cmd_status(i32 %76)
  store i32 %77, i32* %4, align 4
  br label %82

78:                                               ; preds = %56
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %81 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %68, %48, %39, %32, %23
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sriov_enabled(%struct.be_adapter*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_set_hsw_config(%struct.be_adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @be_cmd_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
