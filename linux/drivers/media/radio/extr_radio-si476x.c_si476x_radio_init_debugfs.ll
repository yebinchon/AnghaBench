; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_radio = type { %struct.dentry*, %struct.TYPE_2__ }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"acf\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@radio_acf_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"rds_blckcnt\00", align 1
@radio_rds_blckcnt_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"agc\00", align 1
@radio_agc_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"rsq\00", align 1
@radio_rsq_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"rsq_primary\00", align 1
@radio_rsq_primary_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_radio*)* @si476x_radio_init_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_init_debugfs(%struct.si476x_radio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si476x_radio*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.si476x_radio* %0, %struct.si476x_radio** %3, align 8
  %6 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %7 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_name(i32 %9)
  %11 = call %struct.dentry* @debugfs_create_dir(i32 %10, i32* null)
  store %struct.dentry* %11, %struct.dentry** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call i64 @IS_ERR(%struct.dentry* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.dentry* %16)
  store i32 %17, i32* %5, align 4
  br label %92

18:                                               ; preds = %1
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %21 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %20, i32 0, i32 0
  store %struct.dentry* %19, %struct.dentry** %21, align 8
  %22 = load i32, i32* @S_IRUGO, align 4
  %23 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %24 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %23, i32 0, i32 0
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  %26 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %27 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.dentry* %25, %struct.si476x_radio* %26, i32* @radio_acf_fops)
  store %struct.dentry* %27, %struct.dentry** %4, align 8
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = call i64 @IS_ERR(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = call i32 @PTR_ERR(%struct.dentry* %32)
  store i32 %33, i32* %5, align 4
  br label %87

34:                                               ; preds = %18
  %35 = load i32, i32* @S_IRUGO, align 4
  %36 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %37 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %36, i32 0, i32 0
  %38 = load %struct.dentry*, %struct.dentry** %37, align 8
  %39 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %40 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %35, %struct.dentry* %38, %struct.si476x_radio* %39, i32* @radio_rds_blckcnt_fops)
  store %struct.dentry* %40, %struct.dentry** %4, align 8
  %41 = load %struct.dentry*, %struct.dentry** %4, align 8
  %42 = call i64 @IS_ERR(%struct.dentry* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = call i32 @PTR_ERR(%struct.dentry* %45)
  store i32 %46, i32* %5, align 4
  br label %87

47:                                               ; preds = %34
  %48 = load i32, i32* @S_IRUGO, align 4
  %49 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %50 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %49, i32 0, i32 0
  %51 = load %struct.dentry*, %struct.dentry** %50, align 8
  %52 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %53 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48, %struct.dentry* %51, %struct.si476x_radio* %52, i32* @radio_agc_fops)
  store %struct.dentry* %53, %struct.dentry** %4, align 8
  %54 = load %struct.dentry*, %struct.dentry** %4, align 8
  %55 = call i64 @IS_ERR(%struct.dentry* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.dentry*, %struct.dentry** %4, align 8
  %59 = call i32 @PTR_ERR(%struct.dentry* %58)
  store i32 %59, i32* %5, align 4
  br label %87

60:                                               ; preds = %47
  %61 = load i32, i32* @S_IRUGO, align 4
  %62 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %63 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %62, i32 0, i32 0
  %64 = load %struct.dentry*, %struct.dentry** %63, align 8
  %65 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %66 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %61, %struct.dentry* %64, %struct.si476x_radio* %65, i32* @radio_rsq_fops)
  store %struct.dentry* %66, %struct.dentry** %4, align 8
  %67 = load %struct.dentry*, %struct.dentry** %4, align 8
  %68 = call i64 @IS_ERR(%struct.dentry* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load %struct.dentry*, %struct.dentry** %4, align 8
  %72 = call i32 @PTR_ERR(%struct.dentry* %71)
  store i32 %72, i32* %5, align 4
  br label %87

73:                                               ; preds = %60
  %74 = load i32, i32* @S_IRUGO, align 4
  %75 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %76 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %75, i32 0, i32 0
  %77 = load %struct.dentry*, %struct.dentry** %76, align 8
  %78 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %79 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %74, %struct.dentry* %77, %struct.si476x_radio* %78, i32* @radio_rsq_primary_fops)
  store %struct.dentry* %79, %struct.dentry** %4, align 8
  %80 = load %struct.dentry*, %struct.dentry** %4, align 8
  %81 = call i64 @IS_ERR(%struct.dentry* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.dentry*, %struct.dentry** %4, align 8
  %85 = call i32 @PTR_ERR(%struct.dentry* %84)
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %94

87:                                               ; preds = %83, %70, %57, %44, %31
  %88 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %89 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %88, i32 0, i32 0
  %90 = load %struct.dentry*, %struct.dentry** %89, align 8
  %91 = call i32 @debugfs_remove_recursive(%struct.dentry* %90)
  br label %92

92:                                               ; preds = %87, %15
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %86
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.si476x_radio*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
