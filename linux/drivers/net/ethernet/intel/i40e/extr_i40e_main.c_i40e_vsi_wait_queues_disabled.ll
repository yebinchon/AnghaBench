; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_wait_queues_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_wait_queues_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"VSI seid %d Tx ring %d disable timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"VSI seid %d XDP Tx ring %d disable timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"VSI seid %d Rx ring %d disable timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_vsi_wait_queues_disabled(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %8, i32 0, i32 4
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  store %struct.i40e_pf* %10, %struct.i40e_pf** %4, align 8
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %82, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %14
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @i40e_pf_txq_wait(%struct.i40e_pf* %21, i32 %22, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %32 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %88

37:                                               ; preds = %20
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %39 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %64

42:                                               ; preds = %37
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %46 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  %49 = call i32 @i40e_pf_txq_wait(%struct.i40e_pf* %43, i32 %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %58 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %88

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %41
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @i40e_pf_rxq_wait(%struct.i40e_pf* %65, i32 %66, i32 0)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %88

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %14

87:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %70, %52, %26
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @i40e_pf_txq_wait(%struct.i40e_pf*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_pf_rxq_wait(%struct.i40e_pf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
