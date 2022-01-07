; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_toggle_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_toggle_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"VSI seid %d Tx ring %d %sable timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"VSI seid %d Rx ring %d %sable timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"VSI seid %d XDP Tx ring %d %sable timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i32, i32)* @i40e_queue_pair_toggle_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_queue_pair_toggle_rings(%struct.i40e_vsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 3
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %15 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @i40e_control_wait_tx_q(i32 %21, %struct.i40e_pf* %22, i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %3
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i8* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %110

43:                                               ; preds = %3
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @i40e_control_rx_q(%struct.i40e_pf* %44, i32 %45, i32 %46)
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @i40e_pf_rxq_wait(%struct.i40e_pf* %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %43
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %60 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %67 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62, i8* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %110

69:                                               ; preds = %43
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i32 @mdelay(i32 50)
  br label %74

74:                                               ; preds = %72, %69
  %75 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %76 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %110

80:                                               ; preds = %74
  %81 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %82 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %87 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @i40e_control_wait_tx_q(i32 %83, %struct.i40e_pf* %84, i32 %89, i32 1, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %80
  %95 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %96 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %100 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %107 = call i32 @dev_info(i32* %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %102, i8* %106)
  br label %108

108:                                              ; preds = %94, %80
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %78, %54, %28
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @i40e_control_wait_tx_q(i32, %struct.i40e_pf*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i8*) #1

declare dso_local i32 @i40e_control_rx_q(%struct.i40e_pf*, i32, i32) #1

declare dso_local i32 @i40e_pf_rxq_wait(%struct.i40e_pf*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
