; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, %struct.TYPE_5__*, i32, %struct.ice_pf* }
%struct.TYPE_5__ = type { i8* }
%struct.ice_pf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ICE_INT_NAME_STR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_vsi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_open(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ice_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %9 = load i32, i32* @ICE_INT_NAME_STR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 3
  %15 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  store %struct.ice_pf* %15, %struct.ice_pf** %6, align 8
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %17 = call i32 @ice_vsi_setup_tx_rings(%struct.ice_vsi* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %23 = call i32 @ice_vsi_setup_rx_rings(%struct.ice_vsi* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %87

27:                                               ; preds = %21
  %28 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %29 = call i32 @ice_vsi_cfg(%struct.ice_vsi* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %87

33:                                               ; preds = %27
  %34 = sub i64 %10, 1
  %35 = trunc i64 %34 to i32
  %36 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i8* @dev_driver_string(i32* %39)
  %41 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %42 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @snprintf(i8* %12, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %45)
  %47 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %48 = call i32 @ice_vsi_req_irq_msix(%struct.ice_vsi* %47, i8* %12)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  br label %87

52:                                               ; preds = %33
  %53 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %54 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %57 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_set_real_num_tx_queues(%struct.TYPE_5__* %55, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %84

63:                                               ; preds = %52
  %64 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %65 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %68 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @netif_set_real_num_rx_queues(%struct.TYPE_5__* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %84

74:                                               ; preds = %63
  %75 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %76 = call i32 @ice_up_complete(%struct.ice_vsi* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %81

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %94

81:                                               ; preds = %79
  %82 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %83 = call i32 @ice_down(%struct.ice_vsi* %82)
  br label %84

84:                                               ; preds = %81, %73, %62
  %85 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %86 = call i32 @ice_vsi_free_irq(%struct.ice_vsi* %85)
  br label %87

87:                                               ; preds = %84, %51, %32, %26
  %88 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %89 = call i32 @ice_vsi_free_rx_rings(%struct.ice_vsi* %88)
  br label %90

90:                                               ; preds = %87, %20
  %91 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %92 = call i32 @ice_vsi_free_tx_rings(%struct.ice_vsi* %91)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %90, %80
  %95 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ice_vsi_setup_tx_rings(%struct.ice_vsi*) #2

declare dso_local i32 @ice_vsi_setup_rx_rings(%struct.ice_vsi*) #2

declare dso_local i32 @ice_vsi_cfg(%struct.ice_vsi*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @dev_driver_string(i32*) #2

declare dso_local i32 @ice_vsi_req_irq_msix(%struct.ice_vsi*, i8*) #2

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @ice_up_complete(%struct.ice_vsi*) #2

declare dso_local i32 @ice_down(%struct.ice_vsi*) #2

declare dso_local i32 @ice_vsi_free_irq(%struct.ice_vsi*) #2

declare dso_local i32 @ice_vsi_free_rx_rings(%struct.ice_vsi*) #2

declare dso_local i32 @ice_vsi_free_tx_rings(%struct.ice_vsi*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
