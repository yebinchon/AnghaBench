; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_double_vlan_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_double_vlan_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VLAN = common dso_local global i64 0, align 8
@MVPP2_PRS_RI_VLAN_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_DOUBLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i16, i16)* @mvpp2_prs_double_vlan_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_double_vlan_find(%struct.mvpp2* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.mvpp2_prs_entry, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %12 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %66, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %13
  %18 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %19 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %29 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MVPP2_PRS_LU_VLAN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27, %17
  br label %66

39:                                               ; preds = %27
  %40 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %40, %struct.mvpp2_prs_entry* %8, i32 %41)
  %43 = load i16, i16* %6, align 2
  %44 = call i64 @mvpp2_prs_tcam_data_cmp(%struct.mvpp2_prs_entry* %8, i32 0, i16 zeroext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i16, i16* %7, align 2
  %48 = call i64 @mvpp2_prs_tcam_data_cmp(%struct.mvpp2_prs_entry* %8, i32 4, i16 zeroext %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi i1 [ false, %39 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %66

56:                                               ; preds = %50
  %57 = call i32 @mvpp2_prs_sram_ri_get(%struct.mvpp2_prs_entry* %8)
  %58 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @MVPP2_PRS_RI_VLAN_DOUBLE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %72

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %55, %38
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %13

69:                                               ; preds = %13
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i64 @mvpp2_prs_tcam_data_cmp(%struct.mvpp2_prs_entry*, i32, i16 zeroext) #1

declare dso_local i32 @mvpp2_prs_sram_ri_get(%struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
