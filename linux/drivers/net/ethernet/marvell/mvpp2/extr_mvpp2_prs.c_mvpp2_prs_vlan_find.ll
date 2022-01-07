; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vlan_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vlan_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VLAN = common dso_local global i64 0, align 8
@MVPP2_PRS_RI_VLAN_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_DBL_VLAN_AI_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_SINGLE = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_TRIPLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i16, i32)* @mvpp2_prs_vlan_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_vlan_find(%struct.mvpp2* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvpp2_prs_entry, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %74, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %77

18:                                               ; preds = %14
  %19 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %20 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %30 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MVPP2_PRS_LU_VLAN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28, %18
  br label %74

40:                                               ; preds = %28
  %41 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %41, %struct.mvpp2_prs_entry* %8, i32 %42)
  %44 = load i16, i16* %6, align 2
  %45 = call i32 @mvpp2_prs_tcam_data_cmp(%struct.mvpp2_prs_entry* %8, i32 0, i16 zeroext %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %74

49:                                               ; preds = %40
  %50 = call i32 @mvpp2_prs_sram_ri_get(%struct.mvpp2_prs_entry* %8)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = call i32 @mvpp2_prs_tcam_ai_get(%struct.mvpp2_prs_entry* %8)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* @MVPP2_PRS_DBL_VLAN_AI_BIT, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %74

63:                                               ; preds = %49
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @MVPP2_PRS_RI_VLAN_SINGLE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @MVPP2_PRS_RI_VLAN_TRIPLE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %80

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %62, %48, %39
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %14

77:                                               ; preds = %14
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_cmp(%struct.mvpp2_prs_entry*, i32, i16 zeroext) #1

declare dso_local i32 @mvpp2_prs_sram_ri_get(%struct.mvpp2_prs_entry*) #1

declare dso_local i32 @mvpp2_prs_tcam_ai_get(%struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
