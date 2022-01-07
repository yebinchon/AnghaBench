; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_debugfs.c_bnad_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_debugfs.c_bnad_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad_debugfs_entry = type { i32, i32, i32 }
%struct.bnad = type { i32, i32*, i8*, i32 }

@bna_debugfs_root = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"bna\00", align 1
@bna_debugfs_port_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"debugfs root dir creation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pci_dev:%s\00", align 1
@bnad_debugfs_files = common dso_local global %struct.bnad_debugfs_entry* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"create %s entry failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_debugfs_init(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca %struct.bnad_debugfs_entry*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %6 = load i32*, i32** @bna_debugfs_root, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** @bna_debugfs_root, align 8
  %11 = call i32 @atomic_set(i32* @bna_debugfs_port_count, i32 0)
  %12 = load i32*, i32** @bna_debugfs_root, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load %struct.bnad*, %struct.bnad** %2, align 8
  %16 = getelementptr inbounds %struct.bnad, %struct.bnad* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @netdev_warn(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %99

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %22 = load %struct.bnad*, %struct.bnad** %2, align 8
  %23 = getelementptr inbounds %struct.bnad, %struct.bnad* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @pci_name(i32 %24)
  %26 = call i32 @snprintf(i8* %21, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load %struct.bnad*, %struct.bnad** %2, align 8
  %28 = getelementptr inbounds %struct.bnad, %struct.bnad* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %99, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %33 = load i32*, i32** @bna_debugfs_root, align 8
  %34 = call i8* @debugfs_create_dir(i8* %32, i32* %33)
  %35 = load %struct.bnad*, %struct.bnad** %2, align 8
  %36 = getelementptr inbounds %struct.bnad, %struct.bnad* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.bnad*, %struct.bnad** %2, align 8
  %38 = getelementptr inbounds %struct.bnad, %struct.bnad* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %31
  %42 = load %struct.bnad*, %struct.bnad** %2, align 8
  %43 = getelementptr inbounds %struct.bnad, %struct.bnad* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @netdev_warn(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %99

46:                                               ; preds = %31
  %47 = call i32 @atomic_inc(i32* @bna_debugfs_port_count)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %95, %46
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** @bnad_debugfs_files, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.bnad_debugfs_entry* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %48
  %54 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** @bnad_debugfs_files, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %54, i64 %56
  store %struct.bnad_debugfs_entry* %57, %struct.bnad_debugfs_entry** %3, align 8
  %58 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** %3, align 8
  %59 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** %3, align 8
  %62 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bnad*, %struct.bnad** %2, align 8
  %65 = getelementptr inbounds %struct.bnad, %struct.bnad* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.bnad*, %struct.bnad** %2, align 8
  %68 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** %3, align 8
  %69 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @debugfs_create_file(i32 %60, i32 %63, i8* %66, %struct.bnad* %67, i32 %70)
  %72 = load %struct.bnad*, %struct.bnad** %2, align 8
  %73 = getelementptr inbounds %struct.bnad, %struct.bnad* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.bnad*, %struct.bnad** %2, align 8
  %79 = getelementptr inbounds %struct.bnad, %struct.bnad* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %53
  %87 = load %struct.bnad*, %struct.bnad** %2, align 8
  %88 = getelementptr inbounds %struct.bnad, %struct.bnad* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** %3, align 8
  %91 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @netdev_warn(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %99

94:                                               ; preds = %53
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %48

98:                                               ; preds = %48
  br label %99

99:                                               ; preds = %14, %41, %86, %98, %20
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bnad_debugfs_entry*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i8*, %struct.bnad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
