; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_setup_pf_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_setup_pf_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ice_vsi = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*)* @ice_setup_pf_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_setup_pf_sw(%struct.ice_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %7 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ice_is_reset_in_progress(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %16 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %17 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ice_vsi* @ice_pf_vsi_setup(%struct.ice_pf* %15, i32 %19)
  store %struct.ice_vsi* %20, %struct.ice_vsi** %4, align 8
  %21 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %22 = icmp ne %struct.ice_vsi* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %76

26:                                               ; preds = %14
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %28 = call i32 @ice_cfg_netdev(%struct.ice_vsi* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %76

34:                                               ; preds = %26
  %35 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %36 = call i32 @ice_napi_add(%struct.ice_vsi* %35)
  %37 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %38 = call i32 @ice_init_mac_fltr(%struct.ice_pf* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %90

44:                                               ; preds = %41
  %45 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %46 = icmp ne %struct.ice_vsi* %45, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %44
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %49 = call i32 @ice_napi_del(%struct.ice_vsi* %48)
  %50 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %51 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %47
  %55 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %56 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NETREG_REGISTERED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %64 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @unregister_netdev(%struct.TYPE_5__* %65)
  br label %67

67:                                               ; preds = %62, %54
  %68 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %69 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = call i32 @free_netdev(%struct.TYPE_5__* %70)
  %72 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %73 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %72, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %73, align 8
  br label %74

74:                                               ; preds = %67, %47
  br label %75

75:                                               ; preds = %74, %44
  br label %76

76:                                               ; preds = %75, %31, %23
  %77 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %78 = icmp ne %struct.ice_vsi* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %81 = call i32 @ice_vsi_free_q_vectors(%struct.ice_vsi* %80)
  %82 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %83 = call i32 @ice_vsi_delete(%struct.ice_vsi* %82)
  %84 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %85 = call i32 @ice_vsi_put_qs(%struct.ice_vsi* %84)
  %86 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %87 = call i32 @ice_vsi_clear(%struct.ice_vsi* %86)
  br label %88

88:                                               ; preds = %79, %76
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %42, %11
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @ice_is_reset_in_progress(i32) #1

declare dso_local %struct.ice_vsi* @ice_pf_vsi_setup(%struct.ice_pf*, i32) #1

declare dso_local i32 @ice_cfg_netdev(%struct.ice_vsi*) #1

declare dso_local i32 @ice_napi_add(%struct.ice_vsi*) #1

declare dso_local i32 @ice_init_mac_fltr(%struct.ice_pf*) #1

declare dso_local i32 @ice_napi_del(%struct.ice_vsi*) #1

declare dso_local i32 @unregister_netdev(%struct.TYPE_5__*) #1

declare dso_local i32 @free_netdev(%struct.TYPE_5__*) #1

declare dso_local i32 @ice_vsi_free_q_vectors(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_delete(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_put_qs(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_clear(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
