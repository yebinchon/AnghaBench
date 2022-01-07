; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_spoofchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.TYPE_4__, i32, %struct.ice_pf* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ice_pf = type { i32, %struct.TYPE_6__*, i32, %struct.ice_vf* }
%struct.TYPE_6__ = type { i32 }
%struct.ice_vf = type { i32, i32 }
%struct.ice_vsi_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid VF id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICE_VF_STATE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"VF %d in reset. Try again.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"VF spoofchk already %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_SECURITY_VALID = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SW_FLAG_RX_PRUNE_EN_M = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Error %d, failed to update VSI* parameters\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_set_vf_spoofchk(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_netdev_priv*, align 8
  %9 = alloca %struct.ice_vsi*, align 8
  %10 = alloca %struct.ice_pf*, align 8
  %11 = alloca %struct.ice_vsi_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ice_vf*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.ice_netdev_priv* %16, %struct.ice_netdev_priv** %8, align 8
  %17 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %8, align 8
  %18 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %17, i32 0, i32 0
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %18, align 8
  store %struct.ice_vsi* %19, %struct.ice_vsi** %9, align 8
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 2
  %22 = load %struct.ice_pf*, %struct.ice_pf** %21, align 8
  store %struct.ice_pf* %22, %struct.ice_pf** %10, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %25 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @netdev_err(%struct.net_device* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %147

34:                                               ; preds = %3
  %35 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %36 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %35, i32 0, i32 3
  %37 = load %struct.ice_vf*, %struct.ice_vf** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %37, i64 %39
  store %struct.ice_vf* %40, %struct.ice_vf** %13, align 8
  %41 = load i32, i32* @ICE_VF_STATE_INIT, align 4
  %42 = load %struct.ice_vf*, %struct.ice_vf** %13, align 8
  %43 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @test_bit(i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %34
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %147

53:                                               ; preds = %34
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.ice_vf*, %struct.ice_vf** %13, align 8
  %56 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %61 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %68 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  store i32 0, i32* %4, align 4
  br label %147

69:                                               ; preds = %53
  %70 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %71 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.ice_vsi_ctx* @devm_kzalloc(i32* %73, i32 12, i32 %74)
  store %struct.ice_vsi_ctx* %75, %struct.ice_vsi_ctx** %11, align 8
  %76 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %11, align 8
  %77 = icmp ne %struct.ice_vsi_ctx* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %147

81:                                               ; preds = %69
  %82 = load i32, i32* @ICE_AQ_VSI_PROP_SECURITY_VALID, align 4
  %83 = call i32 @cpu_to_le16(i32 %82)
  %84 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %11, align 8
  %85 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %81
  %90 = load i32, i32* @ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF, align 4
  %91 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %11, align 8
  %92 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_RX_PRUNE_EN_M, align 4
  %97 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %11, align 8
  %98 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %89, %81
  %103 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %104 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %103, i32 0, i32 2
  %105 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %106 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %11, align 8
  %109 = call i32 @ice_update_vsi(i32* %104, i32 %107, %struct.ice_vsi_ctx* %108, i32* null)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %114 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %12, align 4
  %118 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %116, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %14, align 4
  br label %139

121:                                              ; preds = %102
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.ice_vf*, %struct.ice_vf** %13, align 8
  %124 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %11, align 8
  %126 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %130 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %11, align 8
  %133 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %137 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  br label %139

139:                                              ; preds = %121, %112
  %140 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %141 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %11, align 8
  %145 = call i32 @devm_kfree(i32* %143, %struct.ice_vsi_ctx* %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %139, %78, %59, %47, %28
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.ice_vsi_ctx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_update_vsi(i32*, i32, %struct.ice_vsi_ctx*, i32*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_vsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
