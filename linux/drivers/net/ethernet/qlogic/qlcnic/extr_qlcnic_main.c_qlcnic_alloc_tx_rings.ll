; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_alloc_tx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_alloc_tx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.TYPE_2__*, %struct.qlcnic_host_tx_ring*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_host_tx_ring = type { i32, %struct.qlcnic_adapter*, i32, %struct.qlcnic_cmd_buffer*, i32, i32 }
%struct.qlcnic_cmd_buffer = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_alloc_tx_rings(%struct.qlcnic_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %10 = alloca %struct.qlcnic_cmd_buffer*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.qlcnic_host_tx_ring* @kcalloc(i32 %13, i32 40, i32 %14)
  store %struct.qlcnic_host_tx_ring* %15, %struct.qlcnic_host_tx_ring** %9, align 8
  %16 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %17 = icmp eq %struct.qlcnic_host_tx_ring* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %126

21:                                               ; preds = %2
  %22 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 4
  store %struct.qlcnic_host_tx_ring* %22, %struct.qlcnic_host_tx_ring** %24, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %65, %21
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %25
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 4
  %34 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %34, i64 %36
  store %struct.qlcnic_host_tx_ring* %37, %struct.qlcnic_host_tx_ring** %9, align 8
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %42 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @netdev_get_tx_queue(%struct.net_device* %43, i32 %44)
  %46 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %47 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %49 = call i32 @TX_BUFF_RINGSIZE(%struct.qlcnic_host_tx_ring* %48)
  %50 = call %struct.qlcnic_cmd_buffer* @vzalloc(i32 %49)
  store %struct.qlcnic_cmd_buffer* %50, %struct.qlcnic_cmd_buffer** %10, align 8
  %51 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %10, align 8
  %52 = icmp eq %struct.qlcnic_cmd_buffer* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %31
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %55 = call i32 @qlcnic_free_tx_rings(%struct.qlcnic_adapter* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %126

58:                                               ; preds = %31
  %59 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %10, align 8
  %60 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %61 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %60, i32 0, i32 3
  store %struct.qlcnic_cmd_buffer* %59, %struct.qlcnic_cmd_buffer** %61, align 8
  %62 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %63 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %62, i32 0, i32 2
  %64 = call i32 @spin_lock_init(i32* %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %25

68:                                               ; preds = %25
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %70 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %74 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %125

76:                                               ; preds = %72
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %78 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %76, %68
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %121, %80
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %124

87:                                               ; preds = %81
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %89 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %88, i32 0, i32 4
  %90 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %90, i64 %92
  store %struct.qlcnic_host_tx_ring* %93, %struct.qlcnic_host_tx_ring** %9, align 8
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %95 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %96 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %95, i32 0, i32 1
  store %struct.qlcnic_adapter* %94, %struct.qlcnic_adapter** %96, align 8
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %87
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %8, align 4
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %110 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %119 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %103, %87
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %81

124:                                              ; preds = %81
  br label %125

125:                                              ; preds = %124, %76, %72
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %53, %18
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.qlcnic_host_tx_ring* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.qlcnic_cmd_buffer* @vzalloc(i32) #1

declare dso_local i32 @TX_BUFF_RINGSIZE(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @qlcnic_free_tx_rings(%struct.qlcnic_adapter*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
