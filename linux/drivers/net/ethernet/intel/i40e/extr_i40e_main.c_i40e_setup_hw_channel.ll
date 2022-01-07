; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_hw_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_hw_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_vsi = type { i64 }
%struct.i40e_channel = type { i32, i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"failed to add_channel using uplink_seid %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to configure TX rings for channel %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"Added channel: vsi_seid %u, vsi_number %u, stat_counter_idx %u, num_queue_pairs %u, pf->next_base_queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, %struct.i40e_vsi*, %struct.i40e_channel*, i32, i32)* @i40e_setup_hw_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_setup_hw_channel(%struct.i40e_pf* %0, %struct.i40e_vsi* %1, %struct.i40e_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca %struct.i40e_vsi*, align 8
  %9 = alloca %struct.i40e_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %7, align 8
  store %struct.i40e_vsi* %1, %struct.i40e_vsi** %8, align 8
  store %struct.i40e_channel* %2, %struct.i40e_channel** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %14 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %19 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %18, i32 0, i32 6
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %22 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %26 = call i32 @i40e_add_channel(%struct.i40e_pf* %23, i32 %24, %struct.i40e_channel* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %5
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %87

37:                                               ; preds = %5
  %38 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %39 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %42 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %43 = call i32 @i40e_channel_config_tx_ring(%struct.i40e_pf* %40, %struct.i40e_vsi* %41, %struct.i40e_channel* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %52 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_info(i32* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %87

56:                                               ; preds = %37
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %58 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %61 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %65 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %67 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %71 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %74 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %77 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.i40e_channel*, %struct.i40e_channel** %9, align 8
  %80 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %83 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @dev_dbg(i32* %69, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %75, i32 %78, i64 %81, i64 %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %56, %46, %29
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @i40e_add_channel(%struct.i40e_pf*, i32, %struct.i40e_channel*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @i40e_channel_config_tx_ring(%struct.i40e_pf*, %struct.i40e_vsi*, %struct.i40e_channel*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
