; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_ntuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_ntuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_INACTIVE = common dso_local global i32 0, align 4
@__I40E_FD_SB_AUTO_DISABLED = common dso_local global i32 0, align 4
@__I40E_FD_ATR_AUTO_DISABLED = common dso_local global i32 0, align 4
@I40E_FLAG_FD_ATR_ENABLED = common dso_local global i32 0, align 4
@I40E_DEBUG_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ATR re-enabled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_set_ntuple(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %10
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @I40E_FLAG_FD_SB_INACTIVE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %28, %23, %18
  br label %101

41:                                               ; preds = %2
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %50 = call i32 @i40e_fdir_filter_exit(%struct.i40e_pf* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %55 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @__I40E_FD_SB_AUTO_DISABLED, align 4
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clear_bit(i32 %58, i32 %61)
  %63 = load i32, i32* @I40E_FLAG_FD_SB_INACTIVE, align 4
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %65 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 6
  store i64 0, i64* %69, align 8
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @__I40E_FD_ATR_AUTO_DISABLED, align 4
  %73 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %74 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @test_and_clear_bit(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %51
  %79 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %80 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I40E_FLAG_FD_ATR_ENABLED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load i32, i32* @I40E_DEBUG_FD, align 4
  %87 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %86, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %95 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @dev_info(i32* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %93, %85, %78
  br label %100

100:                                              ; preds = %99, %51
  br label %101

101:                                              ; preds = %100, %40
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @i40e_fdir_filter_exit(%struct.i40e_pf*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
