; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_probe_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_probe_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32, i32*, i32*, i32, %struct.ef4_nic* }
%struct.ef4_nic = type { i32, i32 }

@EF4_MIN_DMAQ_SIZE = common dso_local global i32 0, align 4
@EF4_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"creating TX queue %d size %#x mask %#x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_probe_tx_queue(%struct.ef4_tx_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_tx_queue*, align 8
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %3, align 8
  %7 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %7, i32 0, i32 4
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %8, align 8
  store %struct.ef4_nic* %9, %struct.ef4_nic** %4, align 8
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @roundup_pow_of_two(i32 %12)
  %14 = load i32, i32* @EF4_MIN_DMAQ_SIZE, align 4
  %15 = call i32 @max(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EF4_MAX_DMAQ_SIZE, align 4
  %18 = icmp ugt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @EF4_BUG_ON_PARANOID(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %21, 1
  %23 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %24 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %26 = load i32, i32* @probe, align 4
  %27 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %28 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %31 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %34 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %37 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netif_dbg(%struct.ef4_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kcalloc(i32 %40, i32 4, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %45 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %47 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %1
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %90

53:                                               ; preds = %1
  %54 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %55 = call i32 @ef4_tx_cb_page_count(%struct.ef4_tx_queue* %54)
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kcalloc(i32 %55, i32 4, i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %60 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %62 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %82

68:                                               ; preds = %53
  %69 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %70 = call i32 @ef4_nic_probe_tx(%struct.ef4_tx_queue* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %75

74:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %90

75:                                               ; preds = %73
  %76 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %77 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @kfree(i32* %78)
  %80 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %81 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %75, %65
  %83 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %84 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %3, align 8
  %88 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %82, %74, %50
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @EF4_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ef4_tx_cb_page_count(%struct.ef4_tx_queue*) #1

declare dso_local i32 @ef4_nic_probe_tx(%struct.ef4_tx_queue*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
