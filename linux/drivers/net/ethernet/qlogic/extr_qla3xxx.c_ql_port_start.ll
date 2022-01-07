; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32 }

@QL_PHY_GIO_SEM_MASK = common dso_local global i32 0, align 4
@QL_RESOURCE_BITS_BASE_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not get hw lock for GIO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_port_start(%struct.ql3_adapter* %0) #0 {
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
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netdev_err(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %22 = call i64 @ql_is_fiber(%struct.ql3_adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %26 = call i32 @ql_petbi_init(%struct.ql3_adapter* %25)
  br label %30

27:                                               ; preds = %20
  %28 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %29 = call i32 @ql_phy_init_ex(%struct.ql3_adapter* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %32 = load i32, i32* @QL_PHY_GIO_SEM_MASK, align 4
  %33 = call i32 @ql_sem_unlock(%struct.ql3_adapter* %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @ql_sem_spinlock(%struct.ql3_adapter*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i64 @ql_is_fiber(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_petbi_init(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_phy_init_ex(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql3_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
