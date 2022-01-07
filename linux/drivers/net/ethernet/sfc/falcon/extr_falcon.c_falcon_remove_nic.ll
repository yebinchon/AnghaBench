; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_remove_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_remove_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.falcon_nic_data*, i32 }
%struct.falcon_nic_data = type { i32* }
%struct.falcon_board = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ef4_nic*)* }

@RESET_TYPE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @falcon_remove_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_remove_nic(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca %struct.falcon_board*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %6 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %5, i32 0, i32 0
  %7 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  store %struct.falcon_nic_data* %7, %struct.falcon_nic_data** %3, align 8
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %9 = call %struct.falcon_board* @falcon_board(%struct.ef4_nic* %8)
  store %struct.falcon_board* %9, %struct.falcon_board** %4, align 8
  %10 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %11 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %13, align 8
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %16 = call i32 %14(%struct.ef4_nic* %15)
  %17 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %18 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %17, i32 0, i32 0
  %19 = call i32 @i2c_del_adapter(i32* %18)
  %20 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %21 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %20, i32 0, i32 0
  %22 = call i32 @memset(i32* %21, i32 0, i32 4)
  %23 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %25 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %24, i32 0, i32 1
  %26 = call i32 @ef4_nic_free_buffer(%struct.ef4_nic* %23, i32* %25)
  %27 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %28 = load i32, i32* @RESET_TYPE_ALL, align 4
  %29 = call i32 @__falcon_reset_hw(%struct.ef4_nic* %27, i32 %28)
  %30 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %31 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %36 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @pci_dev_put(i32* %37)
  %39 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %40 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %1
  %42 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %43 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %42, i32 0, i32 0
  %44 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %43, align 8
  %45 = call i32 @kfree(%struct.falcon_nic_data* %44)
  %46 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %47 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %46, i32 0, i32 0
  store %struct.falcon_nic_data* null, %struct.falcon_nic_data** %47, align 8
  ret void
}

declare dso_local %struct.falcon_board* @falcon_board(%struct.ef4_nic*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ef4_nic_free_buffer(%struct.ef4_nic*, i32*) #1

declare dso_local i32 @__falcon_reset_hw(%struct.ef4_nic*, i32) #1

declare dso_local i32 @pci_dev_put(i32*) #1

declare dso_local i32 @kfree(%struct.falcon_nic_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
