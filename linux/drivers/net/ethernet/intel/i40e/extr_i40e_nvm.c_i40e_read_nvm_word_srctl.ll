; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_read_nvm_word_srctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_read_nvm_word_srctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@I40E_ERR_TIMEOUT = common dso_local global i64 0, align 8
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"NVM read error: offset %d beyond Shadow RAM limit %d\0A\00", align 1
@I40E_ERR_PARAM = common dso_local global i64 0, align 8
@I40E_GLNVM_SRCTL_ADDR_SHIFT = common dso_local global i32 0, align 4
@I40E_GLNVM_SRCTL_START_SHIFT = common dso_local global i32 0, align 4
@I40E_GLNVM_SRCTL = common dso_local global i32 0, align 4
@I40E_GLNVM_SRDATA = common dso_local global i32 0, align 4
@I40E_GLNVM_SRDATA_RDDATA_MASK = common dso_local global i32 0, align 4
@I40E_GLNVM_SRDATA_RDDATA_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"NVM read error: Couldn't access Shadow RAM address: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*, i64, i64*)* @i40e_read_nvm_word_srctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_read_nvm_word_srctl(%struct.i40e_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* @I40E_ERR_TIMEOUT, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %10, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %18 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (%struct.i40e_hw*, i32, i8*, i64, ...) @i40e_debug(%struct.i40e_hw* %17, i32 %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %23)
  %25 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %25, i64* %7, align 8
  br label %68

26:                                               ; preds = %3
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %28 = call i64 @i40e_poll_sr_srctl_done_bit(%struct.i40e_hw* %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @I40E_GLNVM_SRCTL_ADDR_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @I40E_GLNVM_SRCTL_START_SHIFT, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = or i32 %35, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %40 = load i32, i32* @I40E_GLNVM_SRCTL, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @wr32(%struct.i40e_hw* %39, i32 %40, i32 %41)
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %44 = call i64 @i40e_poll_sr_srctl_done_bit(%struct.i40e_hw* %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %31
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %49 = load i32, i32* @I40E_GLNVM_SRDATA, align 4
  %50 = call i32 @rd32(%struct.i40e_hw* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @I40E_GLNVM_SRDATA_RDDATA_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @I40E_GLNVM_SRDATA_RDDATA_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %47, %31
  br label %59

59:                                               ; preds = %58, %26
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %64 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %65 = load i64, i64* %5, align 8
  %66 = call i32 (%struct.i40e_hw*, i32, i8*, i64, ...) @i40e_debug(%struct.i40e_hw* %63, i32 %64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %16
  %69 = load i64, i64* %7, align 8
  ret i64 %69
}

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64, ...) #1

declare dso_local i64 @i40e_poll_sr_srctl_done_bit(%struct.i40e_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
