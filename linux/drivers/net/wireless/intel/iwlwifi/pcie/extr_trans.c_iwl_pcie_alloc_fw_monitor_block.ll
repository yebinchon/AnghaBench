; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_alloc_fw_monitor_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_alloc_fw_monitor_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Allocated 0x%08x bytes for firmware monitor.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Sorry - debug buffer is only %luK while you requested %luK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i64, i64)* @iwl_pcie_alloc_fw_monitor_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_alloc_fw_monitor_block(%struct.iwl_trans* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %10, align 8
  br label %12

12:                                               ; preds = %34, %3
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i64, i64* %10, align 8
  %18 = call i64 @BIT(i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @__GFP_NOWARN, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @dma_alloc_coherent(i32 %21, i64 %22, i32* %8, i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %34

30:                                               ; preds = %16
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @IWL_INFO(%struct.iwl_trans* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %37

34:                                               ; preds = %29
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %10, align 8
  br label %12

37:                                               ; preds = %30, %12
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %97

45:                                               ; preds = %37
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub nsw i64 %51, 10
  %53 = call i64 @BIT(i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = sub nsw i64 %54, 10
  %56 = call i64 @BIT(i64 %55)
  %57 = call i32 @IWL_ERR(%struct.iwl_trans* %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %56)
  br label %58

58:                                               ; preds = %49, %45
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %65 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i8* %59, i8** %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %72 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 %70, i32* %80, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %83 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %87 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i64 %81, i64* %91, align 8
  %92 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %93 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %58, %44
  ret void
}

declare dso_local i64 @BIT(i64) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_trans*, i8*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
