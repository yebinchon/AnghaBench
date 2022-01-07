; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-debugfs.c_xgbe_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-debugfs.c_xgbe_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"amd-xgbe-%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"xgmac_register\00", align 1
@xgmac_reg_addr_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"xgmac_register_value\00", align 1
@xgmac_reg_value_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"xpcs_mmd\00", align 1
@xpcs_mmd_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"xpcs_register\00", align 1
@xpcs_reg_addr_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"xpcs_register_value\00", align 1
@xpcs_reg_value_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"xprop_register\00", align 1
@xprop_reg_addr_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"xprop_register_value\00", align 1
@xprop_reg_value_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"xi2c_register\00", align 1
@xi2c_reg_addr_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"xi2c_register_value\00", align 1
@xi2c_reg_value_fops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"an_cdr_workaround\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"an_cdr_track_early\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_debugfs_init(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i8*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 9
  store i64 0, i64* %5, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @kasprintf(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %104

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @debugfs_create_dir(i8* %21, i32* null)
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %26 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 384, i32 %27, %struct.xgbe_prv_data* %28, i32* @xgmac_reg_addr_fops)
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %31 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 384, i32 %32, %struct.xgbe_prv_data* %33, i32* @xgmac_reg_value_fops)
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %36 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 384, i32 %37, %struct.xgbe_prv_data* %38, i32* @xpcs_mmd_fops)
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %44 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 384, i32 %42, %struct.xgbe_prv_data* %43, i32* @xpcs_reg_addr_fops)
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %49 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 384, i32 %47, %struct.xgbe_prv_data* %48, i32* @xpcs_reg_value_fops)
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %20
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %56 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %59 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 384, i32 %57, %struct.xgbe_prv_data* %58, i32* @xprop_reg_addr_fops)
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %64 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 384, i32 %62, %struct.xgbe_prv_data* %63, i32* @xprop_reg_value_fops)
  br label %65

65:                                               ; preds = %54, %20
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %67 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %72 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %75 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 384, i32 %73, %struct.xgbe_prv_data* %74, i32* @xi2c_reg_addr_fops)
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %77 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %80 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 384, i32 %78, %struct.xgbe_prv_data* %79, i32* @xi2c_reg_value_fops)
  br label %81

81:                                               ; preds = %70, %65
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %83 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %93 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %92, i32 0, i32 3
  %94 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 384, i32 %91, i32* %93)
  %95 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %96 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %99 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %98, i32 0, i32 1
  %100 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 384, i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %88, %81
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 @kfree(i8* %102)
  br label %104

104:                                              ; preds = %101, %19
  ret void
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.xgbe_prv_data*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
