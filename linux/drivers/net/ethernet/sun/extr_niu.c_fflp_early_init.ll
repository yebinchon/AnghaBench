; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_fflp_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_fflp_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_parent* }
%struct.niu_parent = type { i32, i64 }

@PARENT_FLGS_CLS_HWINIT = common dso_local global i32 0, align 4
@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@probe = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"fflp_disable_all_partitions failed, err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"tcam_early_init failed, err=%d\0A\00", align 1
@H1POLY = common dso_local global i32 0, align 4
@H2POLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"tcam_flush_all failed, err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"fflp_hash_clear failed, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @fflp_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fflp_early_init(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_parent*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %6 = load %struct.niu*, %struct.niu** %2, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @niu_lock_parent(%struct.niu* %6, i64 %7)
  %9 = load %struct.niu*, %struct.niu** %2, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 1
  %11 = load %struct.niu_parent*, %struct.niu_parent** %10, align 8
  store %struct.niu_parent* %11, %struct.niu_parent** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.niu_parent*, %struct.niu_parent** %3, align 8
  %13 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PARENT_FLGS_CLS_HWINIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %112, label %18

18:                                               ; preds = %1
  %19 = load %struct.niu*, %struct.niu** %2, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 1
  %21 = load %struct.niu_parent*, %struct.niu_parent** %20, align 8
  %22 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  %27 = load %struct.niu*, %struct.niu** %2, align 8
  %28 = call i32 @fflp_reset(%struct.niu* %27)
  %29 = load %struct.niu*, %struct.niu** %2, align 8
  %30 = call i32 @fflp_set_timings(%struct.niu* %29)
  %31 = load %struct.niu*, %struct.niu** %2, align 8
  %32 = call i32 @fflp_disable_all_partitions(%struct.niu* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.niu*, %struct.niu** %2, align 8
  %37 = load i32, i32* @probe, align 4
  %38 = load i32, i32* @KERN_DEBUG, align 4
  %39 = load %struct.niu*, %struct.niu** %2, align 8
  %40 = getelementptr inbounds %struct.niu, %struct.niu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @netif_printk(%struct.niu* %36, i32 %37, i32 %38, i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %113

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.niu*, %struct.niu** %2, align 8
  %47 = call i32 @tcam_early_init(%struct.niu* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.niu*, %struct.niu** %2, align 8
  %52 = load i32, i32* @probe, align 4
  %53 = load i32, i32* @KERN_DEBUG, align 4
  %54 = load %struct.niu*, %struct.niu** %2, align 8
  %55 = getelementptr inbounds %struct.niu, %struct.niu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @netif_printk(%struct.niu* %51, i32 %52, i32 %53, i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %113

59:                                               ; preds = %45
  %60 = load %struct.niu*, %struct.niu** %2, align 8
  %61 = call i32 @fflp_llcsnap_enable(%struct.niu* %60, i32 1)
  %62 = load %struct.niu*, %struct.niu** %2, align 8
  %63 = call i32 @fflp_errors_enable(%struct.niu* %62, i32 0)
  %64 = load i32, i32* @H1POLY, align 4
  %65 = call i32 @nw64(i32 %64, i32 0)
  %66 = load i32, i32* @H2POLY, align 4
  %67 = call i32 @nw64(i32 %66, i32 0)
  %68 = load %struct.niu*, %struct.niu** %2, align 8
  %69 = call i32 @tcam_flush_all(%struct.niu* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %59
  %73 = load %struct.niu*, %struct.niu** %2, align 8
  %74 = load i32, i32* @probe, align 4
  %75 = load i32, i32* @KERN_DEBUG, align 4
  %76 = load %struct.niu*, %struct.niu** %2, align 8
  %77 = getelementptr inbounds %struct.niu, %struct.niu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @netif_printk(%struct.niu* %73, i32 %74, i32 %75, i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %113

81:                                               ; preds = %59
  %82 = load %struct.niu*, %struct.niu** %2, align 8
  %83 = getelementptr inbounds %struct.niu, %struct.niu* %82, i32 0, i32 1
  %84 = load %struct.niu_parent*, %struct.niu_parent** %83, align 8
  %85 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %81
  %90 = load %struct.niu*, %struct.niu** %2, align 8
  %91 = call i32 @fflp_hash_clear(%struct.niu* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.niu*, %struct.niu** %2, align 8
  %96 = load i32, i32* @probe, align 4
  %97 = load i32, i32* @KERN_DEBUG, align 4
  %98 = load %struct.niu*, %struct.niu** %2, align 8
  %99 = getelementptr inbounds %struct.niu, %struct.niu* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @netif_printk(%struct.niu* %95, i32 %96, i32 %97, i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %113

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %81
  %105 = load %struct.niu*, %struct.niu** %2, align 8
  %106 = call i32 @vlan_tbl_clear(%struct.niu* %105)
  %107 = load i32, i32* @PARENT_FLGS_CLS_HWINIT, align 4
  %108 = load %struct.niu_parent*, %struct.niu_parent** %3, align 8
  %109 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %104, %1
  br label %113

113:                                              ; preds = %112, %94, %72, %50, %35
  %114 = load %struct.niu*, %struct.niu** %2, align 8
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @niu_unlock_parent(%struct.niu* %114, i64 %115)
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @niu_lock_parent(%struct.niu*, i64) #1

declare dso_local i32 @fflp_reset(%struct.niu*) #1

declare dso_local i32 @fflp_set_timings(%struct.niu*) #1

declare dso_local i32 @fflp_disable_all_partitions(%struct.niu*) #1

declare dso_local i32 @netif_printk(%struct.niu*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @tcam_early_init(%struct.niu*) #1

declare dso_local i32 @fflp_llcsnap_enable(%struct.niu*, i32) #1

declare dso_local i32 @fflp_errors_enable(%struct.niu*, i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @tcam_flush_all(%struct.niu*) #1

declare dso_local i32 @fflp_hash_clear(%struct.niu*) #1

declare dso_local i32 @vlan_tbl_clear(%struct.niu*) #1

declare dso_local i32 @niu_unlock_parent(%struct.niu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
