; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_nvm_version = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"%x.%x.%x\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0x%08x, %d.%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_set_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_set_fw_version(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_nvm_version, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 1
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = call i32 @ixgbe_get_oem_prod_version(%struct.ixgbe_hw* %7, %struct.ixgbe_nvm_version* %4)
  %9 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %15, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i32 %21)
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = call i32 @ixgbe_get_etk_id(%struct.ixgbe_hw* %24, %struct.ixgbe_nvm_version* %4)
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = call i32 @ixgbe_get_orom_version(%struct.ixgbe_hw* %26, %struct.ixgbe_nvm_version* %4)
  %28 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38, i32 %40, i32 %42)
  br label %51

44:                                               ; preds = %23
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %4, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %44, %31, %12
  ret void
}

declare dso_local i32 @ixgbe_get_oem_prod_version(%struct.ixgbe_hw*, %struct.ixgbe_nvm_version*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ixgbe_get_etk_id(%struct.ixgbe_hw*, %struct.ixgbe_nvm_version*) #1

declare dso_local i32 @ixgbe_get_orom_version(%struct.ixgbe_hw*, %struct.ixgbe_nvm_version*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
