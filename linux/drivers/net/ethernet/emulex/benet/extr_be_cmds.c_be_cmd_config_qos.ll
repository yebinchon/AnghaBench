; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_config_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_config_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_nic_res_desc = type { i32, %struct.TYPE_2__, i8*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NIC_RESOURCE_DESC_TYPE_V0 = common dso_local global i32 0, align 4
@RESOURCE_DESC_SIZE_V0 = common dso_local global i32 0, align 4
@QUN_SHIFT = common dso_local global i32 0, align 4
@IMM_SHIFT = common dso_local global i32 0, align 4
@NOSV_SHIFT = common dso_local global i32 0, align 4
@NIC_RESOURCE_DESC_TYPE_V1 = common dso_local global i32 0, align 4
@RESOURCE_DESC_SIZE_V1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_config_qos(%struct.be_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_nic_res_desc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %14 = call i64 @BE3_chip(%struct.be_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 10
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @be_cmd_set_qos(%struct.be_adapter* %17, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %88

22:                                               ; preds = %4
  %23 = call i32 @be_reset_nic_desc(%struct.be_nic_res_desc* %10)
  %24 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %32 = call i64 @lancer_chip(%struct.be_adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %22
  %35 = load i32, i32* @NIC_RESOURCE_DESC_TYPE_V0, align 4
  %36 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @RESOURCE_DESC_SIZE_V0, align 4
  %39 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @QUN_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @IMM_SHIFT, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = load i32, i32* @NOSV_SHIFT, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sdiv i32 %50, 10
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  br label %80

54:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  %55 = load i32, i32* @NIC_RESOURCE_DESC_TYPE_V1, align 4
  %56 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @RESOURCE_DESC_SIZE_V1, align 4
  %59 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @IMM_SHIFT, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* @NOSV_SHIFT, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  %66 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %54
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %70, 100
  %72 = load i32, i32* %8, align 4
  %73 = sdiv i32 %71, %72
  br label %75

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %69
  %76 = phi i32 [ %73, %69 ], [ 100, %74 ]
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 2
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %75, %34
  %81 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %82 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %10, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @be_cmd_set_profile_config(%struct.be_adapter* %81, %struct.be_nic_res_desc* %10, i32 %84, i32 1, i32 %85, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %80, %16
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_set_qos(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @be_reset_nic_desc(%struct.be_nic_res_desc*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_cmd_set_profile_config(%struct.be_adapter*, %struct.be_nic_res_desc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
