; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_finish_auto_neg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_finish_auto_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32, i32, i32 }

@QL_PHY_GIO_SEM_MASK = common dso_local global i32 0, align 4
@QL_RESOURCE_BITS_BASE_CODE = common dso_local global i32 0, align 4
@QL_LINK_MASTER = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Configuring link\0A\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Enabling mac\0A\00", align 1
@LS_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Link is up at %d Mbps, %s duplex\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Remote error detected. Calling ql_port_start()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_finish_auto_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_finish_auto_neg(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %5 = load i32, i32* @QL_PHY_GIO_SEM_MASK, align 4
  %6 = load i32, i32* @QL_RESOURCE_BITS_BASE_CODE, align 4
  %7 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 2
  %11 = or i32 %6, %10
  %12 = shl i32 %11, 7
  %13 = call i64 @ql_sem_spinlock(%struct.ql3_adapter* %4, i32 %5, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %114

16:                                               ; preds = %1
  %17 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %18 = call i32 @ql_auto_neg_error(%struct.ql3_adapter* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %87, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @QL_LINK_MASTER, align 4
  %22 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %22, i32 0, i32 2
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %20
  %27 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %28 = load i32, i32* @link, align 4
  %29 = load i32, i32* @KERN_DEBUG, align 4
  %30 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netif_printk(%struct.ql3_adapter* %27, i32 %28, i32 %29, i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %35 = call i32 @ql_mac_cfg_soft_reset(%struct.ql3_adapter* %34, i32 1)
  %36 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %37 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %38 = call i64 @ql_get_link_speed(%struct.ql3_adapter* %37)
  %39 = load i64, i64* @SPEED_1000, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ql_mac_cfg_gig(%struct.ql3_adapter* %36, i32 %41)
  %43 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %44 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %45 = call i64 @ql_is_link_full_dup(%struct.ql3_adapter* %44)
  %46 = call i32 @ql_mac_cfg_full_dup(%struct.ql3_adapter* %43, i64 %45)
  %47 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %48 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %49 = call i32 @ql_is_neg_pause(%struct.ql3_adapter* %48)
  %50 = call i32 @ql_mac_cfg_pause(%struct.ql3_adapter* %47, i32 %49)
  %51 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %52 = call i32 @ql_mac_cfg_soft_reset(%struct.ql3_adapter* %51, i32 0)
  %53 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %54 = load i32, i32* @link, align 4
  %55 = load i32, i32* @KERN_DEBUG, align 4
  %56 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netif_printk(%struct.ql3_adapter* %53, i32 %54, i32 %55, i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %61 = call i32 @ql_mac_enable(%struct.ql3_adapter* %60, i32 1)
  br label %62

62:                                               ; preds = %26, %20
  %63 = load i32, i32* @LS_UP, align 4
  %64 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netif_start_queue(i32 %68)
  %70 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @netif_carrier_on(i32 %72)
  %74 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %75 = load i32, i32* @link, align 4
  %76 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %80 = call i64 @ql_get_link_speed(%struct.ql3_adapter* %79)
  %81 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %82 = call i64 @ql_is_link_full_dup(%struct.ql3_adapter* %81)
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %86 = call i32 @netif_info(%struct.ql3_adapter* %74, i32 %75, i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %80, i8* %85)
  br label %110

87:                                               ; preds = %16
  %88 = load i32, i32* @QL_LINK_MASTER, align 4
  %89 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %89, i32 0, i32 2
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %95 = load i32, i32* @link, align 4
  %96 = load i32, i32* @KERN_DEBUG, align 4
  %97 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @netif_printk(%struct.ql3_adapter* %94, i32 %95, i32 %96, i32 %99, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %101 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %102 = load i32, i32* @QL_PHY_GIO_SEM_MASK, align 4
  %103 = call i32 @ql_sem_unlock(%struct.ql3_adapter* %101, i32 %102)
  %104 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %105 = call i64 @ql_port_start(%struct.ql3_adapter* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  store i32 -1, i32* %2, align 4
  br label %114

108:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %114

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %109, %62
  %111 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %112 = load i32, i32* @QL_PHY_GIO_SEM_MASK, align 4
  %113 = call i32 @ql_sem_unlock(%struct.ql3_adapter* %111, i32 %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %108, %107, %15
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @ql_sem_spinlock(%struct.ql3_adapter*, i32, i32) #1

declare dso_local i32 @ql_auto_neg_error(%struct.ql3_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_printk(%struct.ql3_adapter*, i32, i32, i32, i8*) #1

declare dso_local i32 @ql_mac_cfg_soft_reset(%struct.ql3_adapter*, i32) #1

declare dso_local i32 @ql_mac_cfg_gig(%struct.ql3_adapter*, i32) #1

declare dso_local i64 @ql_get_link_speed(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_mac_cfg_full_dup(%struct.ql3_adapter*, i64) #1

declare dso_local i64 @ql_is_link_full_dup(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_mac_cfg_pause(%struct.ql3_adapter*, i32) #1

declare dso_local i32 @ql_is_neg_pause(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_mac_enable(%struct.ql3_adapter*, i32) #1

declare dso_local i32 @netif_start_queue(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_info(%struct.ql3_adapter*, i32, i32, i8*, i64, i8*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql3_adapter*, i32) #1

declare dso_local i64 @ql_port_start(%struct.ql3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
