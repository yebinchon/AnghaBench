; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_config_asq_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_config_asq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@I40E_PF_ATQLEN_ATQENABLE_MASK = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*)* @i40e_config_asq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_config_asq_regs(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %6 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @wr32(%struct.i40e_hw* %5, i32 %10, i32 0)
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wr32(%struct.i40e_hw* %12, i32 %17, i32 0)
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I40E_PF_ATQLEN_ATQENABLE_MASK, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @wr32(%struct.i40e_hw* %19, i32 %24, i32 %30)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %39 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lower_32_bits(i32 %43)
  %45 = call i32 @wr32(%struct.i40e_hw* %32, i32 %37, i32 %44)
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %47 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %48 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %53 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @upper_32_bits(i32 %57)
  %59 = call i32 @wr32(%struct.i40e_hw* %46, i32 %51, i32 %58)
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %62 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rd32(%struct.i40e_hw* %60, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @lower_32_bits(i32 %73)
  %75 = icmp ne i32 %67, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %1
  %77 = load i32, i32* @I40E_ERR_ADMIN_QUEUE_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %1
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
