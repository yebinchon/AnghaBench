; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_ethtool_tcam_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_ethtool_tcam_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.niu_parent* }
%struct.niu_parent = type { %struct.niu_tcam_entry* }
%struct.niu_tcam_entry = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.ethtool_rxnfc*, i32*)* @niu_get_ethtool_tcam_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_get_ethtool_tcam_all(%struct.niu* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.niu_parent*, align 8
  %8 = alloca %struct.niu_tcam_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.niu*, %struct.niu** %4, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 0
  %16 = load %struct.niu_parent*, %struct.niu_parent** %15, align 8
  store %struct.niu_parent* %16, %struct.niu_parent** %7, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.niu*, %struct.niu** %4, align 8
  %18 = call i32 @tcam_get_size(%struct.niu* %17)
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.niu*, %struct.niu** %4, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @niu_lock_parent(%struct.niu* %21, i64 %22)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %62, %3
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load %struct.niu*, %struct.niu** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @tcam_get_index(%struct.niu* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.niu_parent*, %struct.niu_parent** %7, align 8
  %35 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %34, i32 0, i32 0
  %36 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %36, i64 %38
  store %struct.niu_tcam_entry* %39, %struct.niu_tcam_entry** %8, align 8
  %40 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %8, align 8
  %41 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  br label %62

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EMSGSIZE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %65

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %54, %44
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %24

65:                                               ; preds = %51, %24
  %66 = load %struct.niu*, %struct.niu** %4, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @niu_unlock_parent(%struct.niu* %66, i64 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

declare dso_local i32 @tcam_get_size(%struct.niu*) #1

declare dso_local i32 @niu_lock_parent(%struct.niu*, i64) #1

declare dso_local i32 @tcam_get_index(%struct.niu*, i32) #1

declare dso_local i32 @niu_unlock_parent(%struct.niu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
