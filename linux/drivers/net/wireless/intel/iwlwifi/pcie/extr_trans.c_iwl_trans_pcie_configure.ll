; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, i32 }
%struct.iwl_trans_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_trans_pcie = type { i64, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@MAX_NO_RECLAIM_CMDS = common dso_local global i64 0, align 8
@NETREG_DUMMY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_trans_config*)* @iwl_trans_pcie_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_pcie_configure(%struct.iwl_trans* %0, %struct.iwl_trans_config* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_config*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_trans_config* %1, %struct.iwl_trans_config** %4, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %5, align 8
  %8 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %11, i32 0, i32 12
  store i32 %10, i32* %12, align 8
  %13 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAX_NO_RECLAIM_CMDS, align 8
  %27 = icmp sgt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %40

34:                                               ; preds = %2
  %35 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %31
  %41 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %42 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %47 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(i32 %48, i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %45, %40
  %59 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %60 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %63 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %65 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @iwl_trans_get_rb_size_order(i32 %66)
  %68 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %69 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %71 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %74 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %79 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %81 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %84 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %86 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %89 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %91 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %97 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %99 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %102 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %4, align 8
  %104 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %107 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %109 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NETREG_DUMMY, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %58
  %115 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %116 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %115, i32 0, i32 3
  %117 = call i32 @init_dummy_netdev(%struct.TYPE_2__* %116)
  br label %118

118:                                              ; preds = %114, %58
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @iwl_trans_get_rb_size_order(i32) #1

declare dso_local i32 @init_dummy_netdev(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
