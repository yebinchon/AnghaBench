; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_fdir_sb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_fdir_sb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__**, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_vsi = type { i32 }

@i40e_fdir_sb_setup.hkey = internal constant [13 x i32] [i32 -431959233, i32 -838952789, i32 1945792865, i32 226131254, i32 -355762847, i32 -1437661770, i32 -1671656979, i32 -62759461, i32 -1536866254, i32 -59481644, i32 -1887275495, i32 -171557855, i32 -1783388307], align 16
@I40E_GLQF_HKEY_MAX_INDEX = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_ENABLED = common dso_local global i32 0, align 4
@I40E_VSI_FDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Couldn't create FDir VSI\0A\00", align 1
@I40E_FLAG_FD_SB_INACTIVE = common dso_local global i32 0, align 4
@i40e_fdir_clean_ring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_fdir_sb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_fdir_sb_setup(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %5 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %5, i32 0, i32 4
  %7 = call i32 @I40E_GLQF_HKEY(i32 0)
  %8 = call i32 @rd32(i32* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @I40E_GLQF_HKEY_MAX_INDEX, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @I40E_GLQF_HKEY(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [13 x i32], [13 x i32]* @i40e_fdir_sb_setup.hkey, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wr32(i32* %17, i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %11

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %81

37:                                               ; preds = %29
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %39 = load i32, i32* @I40E_VSI_FDIR, align 4
  %40 = call %struct.i40e_vsi* @i40e_find_vsi_by_type(%struct.i40e_pf* %38, i32 %39)
  store %struct.i40e_vsi* %40, %struct.i40e_vsi** %3, align 8
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %42 = icmp ne %struct.i40e_vsi* %41, null
  br i1 %42, label %77, label %43

43:                                               ; preds = %37
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %45 = load i32, i32* @I40E_VSI_FDIR, align 4
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %47 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %47, align 8
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %48, i64 %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.i40e_vsi* @i40e_vsi_setup(%struct.i40e_pf* %44, i32 %45, i32 %55, i32 0)
  store %struct.i40e_vsi* %56, %struct.i40e_vsi** %3, align 8
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %58 = icmp ne %struct.i40e_vsi* %57, null
  br i1 %58, label %76, label %59

59:                                               ; preds = %43
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @dev_info(i32* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @I40E_FLAG_FD_SB_INACTIVE, align 4
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %81

76:                                               ; preds = %43
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %79 = load i32, i32* @i40e_fdir_clean_ring, align 4
  %80 = call i32 @i40e_vsi_setup_irqhandler(%struct.i40e_vsi* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %59, %36
  ret void
}

declare dso_local i32 @rd32(i32*, i32) #1

declare dso_local i32 @I40E_GLQF_HKEY(i32) #1

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local %struct.i40e_vsi* @i40e_find_vsi_by_type(%struct.i40e_pf*, i32) #1

declare dso_local %struct.i40e_vsi* @i40e_vsi_setup(%struct.i40e_pf*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @i40e_vsi_setup_irqhandler(%struct.i40e_vsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
