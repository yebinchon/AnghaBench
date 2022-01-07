; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_cls_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_cls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.mvpp2 = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"classifier\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"c2\00", align 1
@MVPP22_CLS_C2_N_ENTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"flow_table\00", align 1
@MVPP2_CLS_FLOWS_TBL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.mvpp2*)* @mvpp2_dbgfs_cls_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_cls_init(%struct.dentry* %0, %struct.mvpp2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %19)
  store %struct.dentry* %20, %struct.dentry** %7, align 8
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = icmp ne %struct.dentry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %71

26:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MVPP22_CLS_C2_N_ENTRIES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @mvpp2_dbgfs_c2_entry_init(%struct.dentry* %32, %struct.mvpp2* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %45)
  store %struct.dentry* %46, %struct.dentry** %8, align 8
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = icmp ne %struct.dentry* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %71

52:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @MVPP2_CLS_FLOWS_TBL_SIZE, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.dentry*, %struct.dentry** %8, align 8
  %59 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @mvpp2_dbgfs_flow_tbl_entry_init(%struct.dentry* %58, %struct.mvpp2* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %71

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %53

70:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %64, %49, %38, %23, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @mvpp2_dbgfs_c2_entry_init(%struct.dentry*, %struct.mvpp2*, i32) #1

declare dso_local i32 @mvpp2_dbgfs_flow_tbl_entry_init(%struct.dentry*, %struct.mvpp2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
