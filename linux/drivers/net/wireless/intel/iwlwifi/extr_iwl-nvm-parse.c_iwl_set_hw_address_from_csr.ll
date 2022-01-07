; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_set_hw_address_from_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_set_hw_address_from_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.iwl_nvm_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_nvm_data*)* @iwl_set_hw_address_from_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_set_hw_address_from_csr(%struct.iwl_trans* %0, %struct.iwl_nvm_data* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_nvm_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_nvm_data* %1, %struct.iwl_nvm_data** %4, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @iwl_read32(%struct.iwl_trans* %7, i32 %14)
  %16 = call i32 @cpu_to_le32(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iwl_read32(%struct.iwl_trans* %17, i32 %24)
  %26 = call i32 @cpu_to_le32(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iwl_flip_hw_address(i32 %27, i32 %28, i32 %31)
  %33 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @is_valid_ether_addr(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %66

39:                                               ; preds = %2
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %42 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iwl_read32(%struct.iwl_trans* %40, i32 %47)
  %49 = call i32 @cpu_to_le32(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @iwl_read32(%struct.iwl_trans* %50, i32 %57)
  %59 = call i32 @cpu_to_le32(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @iwl_flip_hw_address(i32 %60, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_flip_hw_address(i32, i32, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
